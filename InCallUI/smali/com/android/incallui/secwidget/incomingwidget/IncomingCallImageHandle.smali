.class public Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;
.super Landroid/widget/FrameLayout;
.source "IncomingCallImageHandle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle$7;,
        Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle$HandleState;
    }
.end annotation


# instance fields
.field private final AIRMOTION_SCALE_SIZE_SWEEP1:F

.field private final AIRMOTION_SCALE_SIZE_SWEEP2:F

.field private final AIR_MOTION_SWING_DURATION:I

.field private final AIR_MOTION_SWING_REPEATCOUNT:I

.field private final ARROW_COUNT:I

.field private final CHANGE_ARROW_DELAY:I

.field private final CHANGE_ARROW_MSG:I

.field private final CHANGE_ARROW_RESET_DELAY:I

.field private final LOG_TAG:Ljava/lang/String;

.field private final REMOVE_AIRMOTION_SWEEP:I

.field private final REPEAT_ARROW_ANIMATION:I

.field private final REPEAT_ARROW_ANIMATION_DELAY:I

.field private final REPEAT_ARROW_ANIMATION_RESET_DELAY:I

.field private mActivePointerId:I

.field private mAddExtraTouchArea:Z

.field private mArrow:Landroid/widget/ImageView;

.field private mArrowAnimationIndex:I

.field private mArrowAnimatorSet:Landroid/animation/AnimatorSet;

.field private mArrowContainer:Landroid/view/View;

.field private mArrowLeftAnimation:[I

.field private mArrowList:[Landroid/widget/ImageView;

.field private mArrowRightAnimation:[I

.field private mContext:Landroid/content/Context;

.field private mCoverMode:Z

.field private mCurrentPointerId:I

.field private mDuringSwingAnimation:Z

.field private mEasyTouchModeEnabled:Z

.field private mEnableArrowAnimation:Z

.field private mHandleImageView:Landroid/widget/ImageView;

.field private mHandleState:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle$HandleState;

.field private mHandleType:I

.field private mHandler:Landroid/os/Handler;

.field private mIsAnswerAnimating:Z

.field private mIsEasyModeOn:Z

.field private mLeftArrowRes:I

.field private mLeftHandleImageRes:I

.field private mLeftTabNormalRes:I

.field private mLeftTabPressRes:I

.field private mLeftTargetNormalRes:I

.field private mMovingCircle:Landroid/widget/ImageView;

.field private mParent:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;

.field private mPreviousHandleState:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle$HandleState;

.field mReachedRatio:D

.field mReachedRatioForArrow:D

.field private mRedialArrowAnimatorSet:Landroid/animation/AnimatorSet;

.field private mRedialArrowContainer:Landroid/view/View;

.field private mRedialArrowList:[Landroid/widget/ImageView;

.field private mRedialArrowRes:I

.field private mRightArrowRes:I

.field private mRightHandleImageRes:I

.field private mRightTabNormalRes:I

.field private mRightTabPressRes:I

.field private mRightTargetNormalRes:I

.field private mSwingAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field private mTabCircle:Landroid/widget/ImageView;

.field private mTabCircleForAnim:Landroid/widget/ImageView;

.field private mTag:Ljava/lang/String;

.field private mTargetCircle:Landroid/widget/ImageView;

.field private mTouchAreaBottomExtra:I

.field private mTouchAreaLeftExtra:I

.field private mTouchAreaRightExtra:I

.field private mTouchAreaTopExtra:I

.field private mUseExternalArrowImage:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, -0x1

    const/16 v3, 0x12c

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const-string v0, "IncomingCallImageHandle"

    iput-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->LOG_TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mTag:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mIsAnswerAnimating:Z

    iput-boolean v2, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mUseExternalArrowImage:Z

    iput-boolean v5, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mEnableArrowAnimation:Z

    iput v2, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mHandleType:I

    const/16 v0, 0x64

    iput v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->CHANGE_ARROW_MSG:I

    iput v3, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->CHANGE_ARROW_DELAY:I

    const/16 v0, 0x384

    iput v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->CHANGE_ARROW_RESET_DELAY:I

    iput v1, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->ARROW_COUNT:I

    const/16 v0, 0x65

    iput v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->REPEAT_ARROW_ANIMATION:I

    const/16 v0, 0x514

    iput v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->REPEAT_ARROW_ANIMATION_DELAY:I

    const/16 v0, 0x1f4

    iput v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->REPEAT_ARROW_ANIMATION_RESET_DELAY:I

    iput-boolean v2, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mCoverMode:Z

    iput-boolean v2, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mIsEasyModeOn:Z

    const v0, 0x7f020121

    iput v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mLeftTabNormalRes:I

    const v0, 0x7f020122

    iput v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mLeftTabPressRes:I

    const v0, 0x7f020120

    iput v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mLeftTargetNormalRes:I

    const v0, 0x7f0202ee

    iput v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mLeftHandleImageRes:I

    const v0, 0x7f02025a

    iput v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mRightTabNormalRes:I

    const v0, 0x7f02025b

    iput v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mRightTabPressRes:I

    const v0, 0x7f020259

    iput v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mRightTargetNormalRes:I

    const v0, 0x7f0202ef

    iput v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mRightHandleImageRes:I

    const v0, 0x7f0202f4

    iput v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mLeftArrowRes:I

    const v0, 0x7f0202f0

    iput v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mRightArrowRes:I

    const v0, 0x7f020339

    iput v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mRedialArrowRes:I

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mArrowLeftAnimation:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mArrowRightAnimation:[I

    iput v2, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mArrowAnimationIndex:I

    iput v3, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->AIR_MOTION_SWING_DURATION:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->AIR_MOTION_SWING_REPEATCOUNT:I

    const v0, 0x3f266666    # 0.65f

    iput v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->AIRMOTION_SCALE_SIZE_SWEEP1:F

    const v0, 0x3f4f5c29    # 0.81f

    iput v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->AIRMOTION_SCALE_SIZE_SWEEP2:F

    iput v3, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->REMOVE_AIRMOTION_SWEEP:I

    iput-boolean v2, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mDuringSwingAnimation:Z

    iput-boolean v5, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mEasyTouchModeEnabled:Z

    iput v4, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mActivePointerId:I

    iput v4, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mCurrentPointerId:I

    new-instance v0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle$1;-><init>(Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;)V

    iput-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mHandler:Landroid/os/Handler;

    sget-object v0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle$HandleState;->IDLE:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle$HandleState;

    iput-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mPreviousHandleState:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle$HandleState;

    sget-object v0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle$HandleState;->IDLE:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle$HandleState;

    iput-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mHandleState:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle$HandleState;

    const-wide v0, 0x3fc999999999999aL    # 0.2

    iput-wide v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mReachedRatioForArrow:D

    iput v2, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mTouchAreaLeftExtra:I

    iput v2, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mTouchAreaTopExtra:I

    iput v2, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mTouchAreaRightExtra:I

    iput v2, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mTouchAreaBottomExtra:I

    iput-boolean v2, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mAddExtraTouchArea:Z

    const-wide v0, 0x3feff7ced916872bL    # 0.999

    iput-wide v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mReachedRatio:D

    iput-object p1, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mContext:Landroid/content/Context;

    iput p2, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mHandleType:I

    invoke-direct {p0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->init()V

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0202f5
        0x7f0202f6
        0x7f0202f7
    .end array-data

    :array_1
    .array-data 4
        0x7f0202f1
        0x7f0202f2
        0x7f0202f3
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, -0x1

    const/16 v3, 0x12c

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const-string v0, "IncomingCallImageHandle"

    iput-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->LOG_TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mTag:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mIsAnswerAnimating:Z

    iput-boolean v2, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mUseExternalArrowImage:Z

    iput-boolean v5, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mEnableArrowAnimation:Z

    iput v2, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mHandleType:I

    const/16 v0, 0x64

    iput v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->CHANGE_ARROW_MSG:I

    iput v3, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->CHANGE_ARROW_DELAY:I

    const/16 v0, 0x384

    iput v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->CHANGE_ARROW_RESET_DELAY:I

    iput v1, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->ARROW_COUNT:I

    const/16 v0, 0x65

    iput v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->REPEAT_ARROW_ANIMATION:I

    const/16 v0, 0x514

    iput v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->REPEAT_ARROW_ANIMATION_DELAY:I

    const/16 v0, 0x1f4

    iput v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->REPEAT_ARROW_ANIMATION_RESET_DELAY:I

    iput-boolean v2, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mCoverMode:Z

    iput-boolean v2, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mIsEasyModeOn:Z

    const v0, 0x7f020121

    iput v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mLeftTabNormalRes:I

    const v0, 0x7f020122

    iput v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mLeftTabPressRes:I

    const v0, 0x7f020120

    iput v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mLeftTargetNormalRes:I

    const v0, 0x7f0202ee

    iput v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mLeftHandleImageRes:I

    const v0, 0x7f02025a

    iput v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mRightTabNormalRes:I

    const v0, 0x7f02025b

    iput v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mRightTabPressRes:I

    const v0, 0x7f020259

    iput v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mRightTargetNormalRes:I

    const v0, 0x7f0202ef

    iput v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mRightHandleImageRes:I

    const v0, 0x7f0202f4

    iput v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mLeftArrowRes:I

    const v0, 0x7f0202f0

    iput v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mRightArrowRes:I

    const v0, 0x7f020339

    iput v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mRedialArrowRes:I

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mArrowLeftAnimation:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mArrowRightAnimation:[I

    iput v2, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mArrowAnimationIndex:I

    iput v3, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->AIR_MOTION_SWING_DURATION:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->AIR_MOTION_SWING_REPEATCOUNT:I

    const v0, 0x3f266666    # 0.65f

    iput v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->AIRMOTION_SCALE_SIZE_SWEEP1:F

    const v0, 0x3f4f5c29    # 0.81f

    iput v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->AIRMOTION_SCALE_SIZE_SWEEP2:F

    iput v3, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->REMOVE_AIRMOTION_SWEEP:I

    iput-boolean v2, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mDuringSwingAnimation:Z

    iput-boolean v5, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mEasyTouchModeEnabled:Z

    iput v4, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mActivePointerId:I

    iput v4, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mCurrentPointerId:I

    new-instance v0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle$1;

    invoke-direct {v0, p0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle$1;-><init>(Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;)V

    iput-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mHandler:Landroid/os/Handler;

    sget-object v0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle$HandleState;->IDLE:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle$HandleState;

    iput-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mPreviousHandleState:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle$HandleState;

    sget-object v0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle$HandleState;->IDLE:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle$HandleState;

    iput-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mHandleState:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle$HandleState;

    const-wide v0, 0x3fc999999999999aL    # 0.2

    iput-wide v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mReachedRatioForArrow:D

    iput v2, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mTouchAreaLeftExtra:I

    iput v2, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mTouchAreaTopExtra:I

    iput v2, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mTouchAreaRightExtra:I

    iput v2, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mTouchAreaBottomExtra:I

    iput-boolean v2, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mAddExtraTouchArea:Z

    const-wide v0, 0x3feff7ced916872bL    # 0.999

    iput-wide v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mReachedRatio:D

    iput-object p1, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mContext:Landroid/content/Context;

    iput p2, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mHandleType:I

    iput-boolean p3, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mCoverMode:Z

    invoke-direct {p0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->init()V

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0202f5
        0x7f0202f6
        0x7f0202f7
    .end array-data

    :array_1
    .array-data 4
        0x7f0202f1
        0x7f0202f2
        0x7f0202f3
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;)Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mParent:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mEnableArrowAnimation:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;)[I
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mArrowRightAnimation:[I

    return-object v0
.end method

.method static synthetic access$1102(Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mDuringSwingAnimation:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mArrowContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;)[Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mArrowList:[Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mRedialArrowContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;)[Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mRedialArrowList:[Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mIsAnswerAnimating:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mTargetCircle:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mMovingCircle:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mTabCircle:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->animateForArrowContainer()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;Landroid/view/View;IF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->assignAlphaAnimation(Landroid/view/View;IF)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mHandleImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;Landroid/view/View;F)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->setViewStatePostAnimation(Landroid/view/View;F)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mTabCircleForAnim:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->animateForRedialArrowContainer()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mArrow:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;)I
    .locals 1

    iget v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mHandleType:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;)I
    .locals 1

    iget v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mArrowAnimationIndex:I

    return v0
.end method

.method static synthetic access$802(Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;I)I
    .locals 0

    iput p1, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mArrowAnimationIndex:I

    return p1
.end method

.method static synthetic access$808(Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;)I
    .locals 2

    iget v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mArrowAnimationIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mArrowAnimationIndex:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;)[I
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mArrowLeftAnimation:[I

    return-object v0
.end method

.method private declared-synchronized animateForArrowContainer()V
    .locals 13

    const/4 v12, 0x3

    monitor-enter p0

    :try_start_0
    iget-object v7, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mArrowContainer:Landroid/view/View;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v7, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "animateForArrowContainer..."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mHandleType:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->log(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mArrowAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mArrowAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v7}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mArrowAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v7}, Landroid/animation/AnimatorSet;->end()V

    :cond_1
    iget-object v7, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mArrowContainer:Landroid/view/View;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v7, v8}, Landroid/view/View;->setAlpha(F)V

    iget-object v7, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mArrowContainer:Landroid/view/View;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v7, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mArrowAnimatorSet:Landroid/animation/AnimatorSet;

    if-nez v7, :cond_3

    new-instance v7, Landroid/animation/AnimatorSet;

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v7, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mArrowAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v7, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c0021

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iget-object v7, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c0020

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iget-object v7, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mArrowContainer:Landroid/view/View;

    sget-object v8, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v9, 0x1

    new-array v9, v9, [F

    const/4 v10, 0x0

    const/4 v11, 0x0

    aput v11, v9, v10

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    int-to-long v8, v5

    invoke-virtual {v3, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v7

    int-to-long v8, v4

    invoke-virtual {v7, v8, v9}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    iget-object v7, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mArrowAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v7, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    const/4 v7, 0x3

    new-array v0, v7, [Landroid/animation/ObjectAnimator;

    iget-object v7, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c0023

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iget-object v7, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c0022

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v12, :cond_2

    iget-object v7, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mArrowList:[Landroid/widget/ImageView;

    aget-object v7, v7, v6

    sget-object v8, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v9, 0x1

    new-array v9, v9, [F

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    aput v11, v9, v10

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    aput-object v7, v0, v6

    aget-object v7, v0, v6

    int-to-long v8, v2

    invoke-virtual {v7, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v7

    mul-int v8, v1, v6

    int-to-long v8, v8

    invoke-virtual {v7, v8, v9}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    iget-object v7, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mArrowAnimatorSet:Landroid/animation/AnimatorSet;

    aget-object v8, v0, v6

    invoke-virtual {v7, v8}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    iget-object v7, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mArrowAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v8, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle$4;

    invoke-direct {v8, p0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle$4;-><init>(Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;)V

    invoke-virtual {v7, v8}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_3
    iget-object v7, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mArrowAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v7}, Landroid/animation/AnimatorSet;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7
.end method

.method private animateForRedialArrowContainer()V
    .locals 15

    const/4 v14, 0x3

    const/4 v13, 0x1

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    invoke-direct {p0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->initRedialArrow()V

    iget-object v7, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mRedialArrowContainer:Landroid/view/View;

    if-nez v7, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "animateForRedialArrowContainer..."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mHandleType:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->log(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mRedialArrowAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mRedialArrowAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v7}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mRedialArrowAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v7}, Landroid/animation/AnimatorSet;->end()V

    :cond_1
    iget-object v7, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mRedialArrowContainer:Landroid/view/View;

    invoke-virtual {v7, v11}, Landroid/view/View;->setVisibility(I)V

    iget-object v7, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mRedialArrowContainer:Landroid/view/View;

    invoke-virtual {v7, v12}, Landroid/view/View;->setAlpha(F)V

    iget-object v7, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mRedialArrowAnimatorSet:Landroid/animation/AnimatorSet;

    if-nez v7, :cond_3

    new-instance v7, Landroid/animation/AnimatorSet;

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v7, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mRedialArrowAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v7, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c0021

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    iget-object v7, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c0020

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    iget-object v7, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mRedialArrowContainer:Landroid/view/View;

    sget-object v8, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v9, v13, [F

    const/4 v10, 0x0

    aput v10, v9, v11

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    int-to-long v8, v5

    invoke-virtual {v3, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v7

    int-to-long v8, v4

    invoke-virtual {v7, v8, v9}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    iget-object v7, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mRedialArrowAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v7, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    new-array v0, v14, [Landroid/animation/ObjectAnimator;

    iget-object v7, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c0023

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iget-object v7, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0c0022

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v14, :cond_2

    iget-object v7, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mRedialArrowList:[Landroid/widget/ImageView;

    aget-object v7, v7, v6

    sget-object v8, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v9, v13, [F

    aput v12, v9, v11

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    aput-object v7, v0, v6

    aget-object v7, v0, v6

    int-to-long v8, v2

    invoke-virtual {v7, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v7

    mul-int v8, v1, v6

    int-to-long v8, v8

    invoke-virtual {v7, v8, v9}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    iget-object v7, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mRedialArrowAnimatorSet:Landroid/animation/AnimatorSet;

    aget-object v8, v0, v6

    invoke-virtual {v7, v8}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    iget-object v7, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mRedialArrowAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v8, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle$5;

    invoke-direct {v8, p0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle$5;-><init>(Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;)V

    invoke-virtual {v7, v8}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_3
    iget-object v7, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mRedialArrowAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v7}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0
.end method

.method private animateForTargetCircle(Z)Z
    .locals 14

    const/4 v10, 0x0

    const/4 v12, 0x1

    const v4, 0x3e4ccccd    # 0.2f

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPreviousHandleState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mPreviousHandleState:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle$HandleState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mHandleState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mHandleState:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle$HandleState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->log(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mTargetCircle:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mIsAnswerAnimating:Z

    if-eqz v1, :cond_1

    :cond_0
    move v1, v11

    :goto_0
    return v1

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mPreviousHandleState:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle$HandleState;

    sget-object v2, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle$HandleState;->IDLE:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle$HandleState;

    if-ne v1, v2, :cond_2

    move v1, v11

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mPreviousHandleState:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle$HandleState;

    sget-object v2, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle$HandleState;->DEACTIVE:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle$HandleState;

    if-ne v1, v2, :cond_3

    move v1, v11

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mPreviousHandleState:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle$HandleState;

    sget-object v2, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle$HandleState;->TRIGGERED:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle$HandleState;

    if-ne v1, v2, :cond_4

    move v1, v11

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mHandleState:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle$HandleState;

    sget-object v2, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle$HandleState;->DEACTIVE:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle$HandleState;

    if-ne v1, v2, :cond_5

    move v1, v11

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mPreviousHandleState:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle$HandleState;

    iget-object v2, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mHandleState:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle$HandleState;

    if-ne v1, v2, :cond_6

    move v1, v11

    goto :goto_0

    :cond_6
    new-instance v8, Landroid/view/animation/AnimationSet;

    invoke-direct {v8, v12}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    if-eqz p1, :cond_8

    move v1, v4

    :goto_1
    if-eqz p1, :cond_9

    move v2, v9

    :goto_2
    if-eqz p1, :cond_a

    move v3, v4

    :goto_3
    if-eqz p1, :cond_7

    move v4, v9

    :cond_7
    iget-object v5, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mTargetCircle:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    iget-object v6, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mTargetCircle:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getWidth()I

    move-result v6

    int-to-float v6, v6

    const/high16 v13, 0x40000000    # 2.0f

    div-float/2addr v6, v13

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    invoke-virtual {v8, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v7, Landroid/view/animation/AlphaAnimation;

    if-eqz p1, :cond_b

    move v1, v10

    :goto_4
    if-eqz p1, :cond_c

    :goto_5
    invoke-direct {v7, v1, v9}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v8, v7}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v8, v2, v3}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    iget-object v1, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mContext:Landroid/content/Context;

    const v2, 0x10a0006

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v8, v12}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    iget-object v1, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mTargetCircle:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->clearAnimation()V

    iget-object v1, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mTargetCircle:Landroid/widget/ImageView;

    invoke-virtual {v1, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mTargetCircle:Landroid/widget/ImageView;

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    move v1, v12

    goto/16 :goto_0

    :cond_8
    move v1, v9

    goto :goto_1

    :cond_9
    move v2, v4

    goto :goto_2

    :cond_a
    move v3, v9

    goto :goto_3

    :cond_b
    move v1, v9

    goto :goto_4

    :cond_c
    move v9, v10

    goto :goto_5
.end method

.method private assignAlphaAnimation(Landroid/view/View;IF)V
    .locals 4

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Landroid/animation/Animator;

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput p3, v2, v3

    invoke-static {p1, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0
.end method

.method private clearRedialDrawable()V
    .locals 3

    iget-object v1, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mRedialArrowList:[Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mRedialArrowList:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mRedialArrowList:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private handleEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v4, 0x0

    const/4 v2, -0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return v1

    :pswitch_1
    const-string v2, "flash_notification"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_1
    :pswitch_2
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iput v2, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mActivePointerId:I

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isEasyInteraction()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mEasyTouchModeEnabled:Z

    if-eqz v2, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->isInTabCircle(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mParent:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;

    iget v3, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mHandleType:I

    invoke-virtual {v2, v3}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->dispatchTriggerEvent(I)V

    goto :goto_0

    :cond_2
    :pswitch_3
    iget-object v2, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mHandleState:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle$HandleState;

    sget-object v3, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle$HandleState;->NORMAL:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle$HandleState;

    if-ne v2, v3, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->isInTabCircle(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle$HandleState;->ACTIVE:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle$HandleState;

    invoke-virtual {p0, v2}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->setHandleState(Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle$HandleState;)V

    iget-object v2, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mParent:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;

    iget-object v3, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mParent:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v4, 0x1e

    invoke-virtual {v2, v4, v5}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->vibrate(J)V

    iget-object v2, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mParent:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;

    iget v3, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mHandleType:I

    invoke-virtual {v2, v3}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->setGrabbedState(I)V

    const/4 v1, 0x1

    goto :goto_0

    :pswitch_4
    iget v2, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mActivePointerId:I

    iput v2, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mCurrentPointerId:I

    iget-object v2, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mHandleState:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle$HandleState;

    sget-object v3, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle$HandleState;->ACTIVE:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle$HandleState;

    if-ne v2, v3, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->processMoveEvent(Landroid/view/MotionEvent;)V

    const/4 v1, 0x1

    goto :goto_0

    :pswitch_5
    iput v2, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mActivePointerId:I

    iput v2, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mCurrentPointerId:I

    iget-object v2, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mHandleState:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle$HandleState;

    sget-object v3, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle$HandleState;->ACTIVE:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle$HandleState;

    if-ne v2, v3, :cond_0

    sget-object v2, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle$HandleState;->NORMAL:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle$HandleState;

    invoke-virtual {p0, v2}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->setHandleState(Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle$HandleState;)V

    iget-object v2, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mParent:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v2, v4}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->setGrabbedState(I)V

    const/4 v1, 0x1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_2
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_5
    .end packed-switch
.end method

.method private init()V
    .locals 10

    const v9, 0x7f020063

    const/4 v8, 0x4

    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x3

    iget-object v4, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isEasyModeOn()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mIsEasyModeOn:Z

    const-string v4, "not_support_easy_incoming_widget"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mIsEasyModeOn:Z

    :cond_0
    iget-boolean v4, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mIsEasyModeOn:Z

    if-eqz v4, :cond_3

    iget-boolean v4, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mCoverMode:Z

    if-nez v4, :cond_3

    const v4, 0x7f0400ab

    invoke-virtual {v2, v4, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    :goto_0
    const v4, 0x7f1001f0

    invoke-virtual {p0, v4}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mTabCircle:Landroid/widget/ImageView;

    const v4, 0x7f1001ee

    invoke-virtual {p0, v4}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mTargetCircle:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mTargetCircle:Landroid/widget/ImageView;

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    const v4, 0x7f1001f1

    invoke-virtual {p0, v4}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mHandleImageView:Landroid/widget/ImageView;

    const v4, 0x7f1001ef

    invoke-virtual {p0, v4}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mMovingCircle:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mMovingCircle:Landroid/widget/ImageView;

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-boolean v4, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mCoverMode:Z

    if-eqz v4, :cond_5

    invoke-static {}, Lcom/android/incallui/AccessoryEventHandler;->getInstance()Lcom/android/incallui/AccessoryEventHandler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/AccessoryEventHandler;->getCoverType()I

    move-result v0

    const/16 v4, 0x8

    if-ne v0, v4, :cond_4

    const v4, 0x7f02005d

    iput v4, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mLeftTabNormalRes:I

    const v4, 0x7f02005e

    iput v4, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mLeftTabPressRes:I

    const v4, 0x7f020061

    iput v4, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mLeftTargetNormalRes:I

    const v4, 0x7f02006c

    iput v4, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mLeftHandleImageRes:I

    const v4, 0x7f02005f

    iput v4, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mRightTabNormalRes:I

    const v4, 0x7f020060

    iput v4, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mRightTabPressRes:I

    const v4, 0x7f020062

    iput v4, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mRightTargetNormalRes:I

    const v4, 0x7f02006e

    iput v4, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mRightHandleImageRes:I

    const v4, 0x7f020067

    iput v4, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mLeftArrowRes:I

    iput v9, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mRightArrowRes:I

    iput v9, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mRedialArrowRes:I

    :cond_1
    :goto_1
    iget v4, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mHandleType:I

    if-ne v4, v5, :cond_6

    iget-object v4, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mTabCircle:Landroid/widget/ImageView;

    iget v5, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mLeftTabNormalRes:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v4, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mTargetCircle:Landroid/widget/ImageView;

    iget v5, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mLeftTargetNormalRes:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v4, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mMovingCircle:Landroid/widget/ImageView;

    iget v5, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mLeftTargetNormalRes:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v4, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mHandleImageView:Landroid/widget/ImageView;

    iget v5, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mLeftHandleImageRes:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    const v4, 0x7f1001f9

    invoke-virtual {p0, v4}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mArrowContainer:Landroid/view/View;

    new-array v4, v6, [Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mArrowList:[Landroid/widget/ImageView;

    new-array v3, v6, [I

    fill-array-data v3, :array_0

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v6, :cond_a

    iget-object v5, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mArrowList:[Landroid/widget/ImageView;

    aget v4, v3, v1

    invoke-virtual {p0, v4}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    aput-object v4, v5, v1

    iget-object v4, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mArrowList:[Landroid/widget/ImageView;

    aget-object v4, v4, v1

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mArrowList:[Landroid/widget/ImageView;

    aget-object v4, v4, v1

    iget v5, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mLeftArrowRes:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v4, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mArrowList:[Landroid/widget/ImageView;

    aget-object v4, v4, v1

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setAlpha(F)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    const v4, 0x7f0400ac

    invoke-virtual {v2, v4, p0, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto/16 :goto_0

    :cond_4
    const v4, 0x7f020295

    iput v4, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mLeftTabNormalRes:I

    const v4, 0x7f020296

    iput v4, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mLeftTabPressRes:I

    const v4, 0x7f020299

    iput v4, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mLeftTargetNormalRes:I

    const v4, 0x7f020335

    iput v4, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mLeftHandleImageRes:I

    const v4, 0x7f020297

    iput v4, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mRightTabNormalRes:I

    const v4, 0x7f020298

    iput v4, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mRightTabPressRes:I

    const v4, 0x7f02029a

    iput v4, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mRightTargetNormalRes:I

    const v4, 0x7f020336

    iput v4, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mRightHandleImageRes:I

    const v4, 0x7f020338

    iput v4, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mLeftArrowRes:I

    const v4, 0x7f020337

    iput v4, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mRightArrowRes:I

    goto/16 :goto_1

    :cond_5
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v4

    if-eqz v4, :cond_1

    const v4, 0x7f02013e

    iput v4, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mLeftTabNormalRes:I

    const v4, 0x7f02013f

    iput v4, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mLeftTabPressRes:I

    const v4, 0x7f020142

    iput v4, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mLeftTargetNormalRes:I

    const v4, 0x7f020140

    iput v4, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mRightTabNormalRes:I

    const v4, 0x7f020141

    iput v4, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mRightTabPressRes:I

    const v4, 0x7f020143

    iput v4, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mRightTargetNormalRes:I

    goto/16 :goto_1

    :cond_6
    iget v4, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mHandleType:I

    if-ne v4, v6, :cond_8

    iget-object v4, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mTabCircle:Landroid/widget/ImageView;

    iget v5, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mLeftTabNormalRes:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v4, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mTargetCircle:Landroid/widget/ImageView;

    iget v5, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mLeftTargetNormalRes:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v4, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mMovingCircle:Landroid/widget/ImageView;

    iget v5, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mLeftTargetNormalRes:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v4, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mHandleImageView:Landroid/widget/ImageView;

    const v5, 0x7f02027f

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    const v4, 0x7f1001f9

    invoke-virtual {p0, v4}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mArrowContainer:Landroid/view/View;

    new-array v4, v6, [Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mArrowList:[Landroid/widget/ImageView;

    new-array v3, v6, [I

    fill-array-data v3, :array_1

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v6, :cond_a

    iget-object v5, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mArrowList:[Landroid/widget/ImageView;

    aget v4, v3, v1

    invoke-virtual {p0, v4}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    aput-object v4, v5, v1

    iget-object v4, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mArrowList:[Landroid/widget/ImageView;

    aget-object v4, v4, v1

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mArrowList:[Landroid/widget/ImageView;

    aget-object v4, v4, v1

    iget v5, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mLeftArrowRes:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v4, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mArrowList:[Landroid/widget/ImageView;

    aget-object v4, v4, v1

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setAlpha(F)V

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_8
    iget-object v4, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mTabCircle:Landroid/widget/ImageView;

    iget v5, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mRightTabNormalRes:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v4, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mTargetCircle:Landroid/widget/ImageView;

    iget v5, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mRightTargetNormalRes:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v4, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mMovingCircle:Landroid/widget/ImageView;

    iget v5, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mRightTargetNormalRes:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v4, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mHandleImageView:Landroid/widget/ImageView;

    iget v5, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mRightHandleImageRes:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    const v4, 0x7f1001f5

    invoke-virtual {p0, v4}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mArrowContainer:Landroid/view/View;

    new-array v4, v6, [Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mArrowList:[Landroid/widget/ImageView;

    new-array v3, v6, [I

    fill-array-data v3, :array_2

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v6, :cond_a

    iget-object v5, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mArrowList:[Landroid/widget/ImageView;

    aget v4, v3, v1

    invoke-virtual {p0, v4}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    aput-object v4, v5, v1

    iget-object v4, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mArrowList:[Landroid/widget/ImageView;

    aget-object v4, v4, v1

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mArrowList:[Landroid/widget/ImageView;

    aget-object v4, v4, v1

    iget v5, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mRightArrowRes:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v4, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mArrowList:[Landroid/widget/ImageView;

    aget-object v4, v4, v1

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setAlpha(F)V

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_a
    new-instance v4, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle$2;

    invoke-direct {v4, p0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle$2;-><init>(Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;)V

    iput-object v4, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mSwingAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {p0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->updateHandle()V

    return-void

    nop

    :array_0
    .array-data 4
        0x7f1001fa
        0x7f1001fb
        0x7f1001fc
    .end array-data

    :array_1
    .array-data 4
        0x7f1001fa
        0x7f1001fb
        0x7f1001fc
    .end array-data

    :array_2
    .array-data 4
        0x7f1001f8
        0x7f1001f7
        0x7f1001f6
    .end array-data
.end method

.method private initRedialArrow()V
    .locals 5

    const/4 v4, 0x3

    iget-object v2, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mRedialArrowContainer:Landroid/view/View;

    if-nez v2, :cond_1

    const v2, 0x7f1001fd

    invoke-virtual {p0, v2}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mRedialArrowContainer:Landroid/view/View;

    new-array v2, v4, [Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mRedialArrowList:[Landroid/widget/ImageView;

    new-array v1, v4, [I

    fill-array-data v1, :array_0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_1

    iget-object v3, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mRedialArrowList:[Landroid/widget/ImageView;

    aget v2, v1, v0

    invoke-virtual {p0, v2}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    aput-object v2, v3, v0

    iget-object v2, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mRedialArrowList:[Landroid/widget/ImageView;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mRedialArrowList:[Landroid/widget/ImageView;

    aget-object v2, v2, v0

    iget v3, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mRedialArrowRes:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v2, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mRedialArrowList:[Landroid/widget/ImageView;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void

    nop

    :array_0
    .array-data 4
        0x7f100200
        0x7f1001ff
        0x7f1001fe
    .end array-data
.end method

.method private notifyTargetProximityRatio(FF)V
    .locals 4

    iget-object v1, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mHandleState:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle$HandleState;

    sget-object v2, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle$HandleState;->ACTIVE:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle$HandleState;

    if-ne v1, v2, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->getTargetProximityRatio(FF)D

    move-result-wide v2

    double-to-float v0, v2

    iget-object v1, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mParent:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v1, v0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->notifyTargetProximityRatio(F)V

    :cond_0
    return-void
.end method

.method private setViewStatePostAnimation(Landroid/view/View;F)V
    .locals 2

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Landroid/animation/Animator;

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_2
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0
.end method

.method private showDefaultArrowHandleInternal()V
    .locals 10

    const-wide/16 v8, 0x1f4

    const/16 v7, 0x65

    const/4 v6, 0x3

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const-string v2, "display_default_arrow_for_cover"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mCoverMode:Z

    if-eqz v2, :cond_5

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v4}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    if-eq v2, v6, :cond_2

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_2

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v2

    const/16 v3, 0xb

    if-ne v2, v3, :cond_5

    :cond_2
    iget-object v2, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mArrowContainer:Landroid/view/View;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mArrowList:[Landroid/widget/ImageView;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mArrowList:[Landroid/widget/ImageView;

    aget-object v2, v2, v4

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setAlpha(F)V

    const/4 v1, 0x1

    :goto_1
    if-ge v1, v6, :cond_3

    iget-object v2, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mArrowList:[Landroid/widget/ImageView;

    aget-object v2, v2, v1

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mArrowContainer:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setAlpha(F)V

    iget-object v2, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mArrowContainer:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    const-string v2, "automatic_answering_machine"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/incallui/operator/dcm/AnswerMemoUtils;->isAutoAnswered()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v7, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v7, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private showTarget(F)V
    .locals 10

    const/4 v9, 0x1

    const v1, 0x3e99999a    # 0.3f

    iget-boolean v2, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mIsAnswerAnimating:Z

    if-eqz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v8, Landroid/view/animation/AnimationSet;

    invoke-direct {v8, v9}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    iget-object v2, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mTargetCircle:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v5, v2

    iget-object v2, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mTargetCircle:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v6, v2

    move v2, p1

    move v3, v1

    move v4, p1

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    invoke-virtual {v8, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    new-instance v7, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v7, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v8, v7}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v8, v2, v3}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    iget-object v1, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mContext:Landroid/content/Context;

    const v2, 0x10a0006

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v8, v9}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    iget-object v1, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mTargetCircle:Landroid/widget/ImageView;

    invoke-virtual {v1, v8}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v1, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mTargetCircle:Landroid/widget/ImageView;

    const/16 v2, 0x61

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAlpha(I)V

    iget-object v1, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mTargetCircle:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateMovingCircle(FF)V
    .locals 4

    iget-boolean v2, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mIsAnswerAnimating:Z

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateMovingCircle : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mHandleState:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle$HandleState;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->log(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mHandleState:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle$HandleState;

    sget-object v3, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle$HandleState;->ACTIVE:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle$HandleState;

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mMovingCircle:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mMovingCircle:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->getTargetProximityRatio(FF)D

    move-result-wide v0

    iget-object v2, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mMovingCircle:Landroid/widget/ImageView;

    double-to-float v3, v0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleX(F)V

    iget-object v2, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mMovingCircle:Landroid/widget/ImageView;

    double-to-float v3, v0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleY(F)V

    goto :goto_0
.end method


# virtual methods
.method public addExtraTouchArea()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mAddExtraTouchArea:Z

    const-wide v0, 0x3fd3333333333333L    # 0.3

    iput-wide v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mReachedRatioForArrow:D

    return-void
.end method

.method public clearDrawable()V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mTabCircle:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mTabCircle:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mTabCircle:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object v1, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mTargetCircle:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mTargetCircle:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mHandleImageView:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mHandleImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mHandleImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    iget-object v1, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mArrow:Landroid/widget/ImageView;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mArrow:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    iget-object v1, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mMovingCircle:Landroid/widget/ImageView;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mMovingCircle:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    iget-object v1, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mArrowList:[Landroid/widget/ImageView;

    if-eqz v1, :cond_6

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_6

    iget-object v1, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mArrowList:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mArrowList:[Landroid/widget/ImageView;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_6
    invoke-direct {p0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->clearRedialDrawable()V

    return-void
.end method

.method public enableArrowAnimation(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableArrowAnimation: enable = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->log(Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mEnableArrowAnimation:Z

    return-void
.end method

.method public getConversionAnimator()Landroid/animation/Animator;
    .locals 8

    const/4 v7, 0x0

    const v3, 0x7f1001f4

    invoke-virtual {p0, v3}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mTabCircleForAnim:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mTabCircleForAnim:Landroid/widget/ImageView;

    if-nez v3, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v3, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mTabCircleForAnim:Landroid/widget/ImageView;

    const v4, 0x7f02016e

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v3, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mTabCircleForAnim:Landroid/widget/ImageView;

    const v4, 0x7f0202ab

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v3, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mTabCircleForAnim:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v3, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mTabCircleForAnim:Landroid/widget/ImageView;

    invoke-virtual {v3, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a007f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v2, v3

    iget-object v3, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mTabCircleForAnim:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iput v2, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v3, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mTabCircleForAnim:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iput v2, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v3, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mTabCircleForAnim:Landroid/widget/ImageView;

    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v3, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mTabCircleForAnim:Landroid/widget/ImageView;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v5, 0x1

    new-array v5, v5, [F

    const/high16 v6, 0x3f800000    # 1.0f

    aput v6, v5, v7

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c000f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v4, v1

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v3, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle$6;

    invoke-direct {v3, p0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle$6;-><init>(Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;)V

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0
.end method

.method public getTabCircle()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mTabCircle:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getTabCircleView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mTabCircle:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getTargetProximityRatio(FF)D
    .locals 14

    iget-object v9, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mTargetCircle:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v9

    div-int/lit8 v4, v9, 0x2

    iget-object v9, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mTargetCircle:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v9

    div-int/lit8 v5, v9, 0x2

    iget-object v9, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mTargetCircle:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v9

    div-int/lit8 v8, v9, 0x2

    int-to-float v9, v4

    sub-float v9, p1, v9

    float-to-double v10, v9

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    int-to-float v9, v5

    sub-float v9, p2, v9

    float-to-double v10, v9

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    mul-double v10, v0, v0

    mul-double v12, v2, v2

    add-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    int-to-double v10, v8

    div-double v10, v6, v10

    return-wide v10
.end method

.method public hideArrowHandleInternal()V
    .locals 2

    const/4 v1, 0x4

    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mArrow:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mArrow:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mArrowContainer:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mArrowContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mRedialArrowContainer:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mRedialArrowContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->removeArrowMsg()V

    return-void
.end method

.method public isInTabCircle(Landroid/view/MotionEvent;)Z
    .locals 24

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v17

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v18

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->getContext()Landroid/content/Context;

    move-result-object v19

    const-string v20, "accessibility"

    invoke-virtual/range {v19 .. v20}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v19

    if-eqz v19, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mHandleImageView:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v19

    div-int/lit8 v5, v19, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mHandleImageView:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v19

    div-int/lit8 v4, v19, 0x2

    invoke-static {}, Lcom/android/incallui/secui/SecUiAdapter;->getInstance()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v19

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v20

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v21

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    invoke-virtual/range {v19 .. v21}, Lcom/android/incallui/secui/SecUiAdapter;->isInExceptionArea(II)Z

    move-result v11

    :cond_0
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mAddExtraTouchArea:Z

    move/from16 v19, v0

    if-eqz v19, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mHandleImageView:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v19

    mul-int/lit8 v19, v19, 0x2

    div-int/lit8 v8, v19, 0x5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mHandleImageView:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v19

    mul-int/lit8 v19, v19, 0x2

    div-int/lit8 v9, v19, 0x5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mHandleImageView:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v19

    mul-int/lit8 v19, v19, 0x2

    div-int/lit8 v10, v19, 0x5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mHandleImageView:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v19

    mul-int/lit8 v19, v19, 0x2

    div-int/lit8 v7, v19, 0x5

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mTargetCircle:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v19

    div-int/lit8 v16, v19, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mTargetCircle:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v19

    div-int/lit8 v15, v19, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mHandleImageView:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v19

    div-int/lit8 v13, v19, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mHandleImageView:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v19

    div-int/lit8 v12, v19, 0x2

    new-instance v14, Landroid/graphics/Rect;

    sub-int v19, v16, v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mTouchAreaLeftExtra:I

    move/from16 v20, v0

    sub-int v19, v19, v20

    sub-int v19, v19, v8

    sub-int v19, v19, v5

    sub-int v20, v15, v12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mTouchAreaTopExtra:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    sub-int v20, v20, v10

    sub-int v20, v20, v4

    add-int v21, v16, v13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mTouchAreaRightExtra:I

    move/from16 v22, v0

    add-int v21, v21, v22

    add-int v21, v21, v9

    add-int v21, v21, v5

    add-int v22, v15, v12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mTouchAreaBottomExtra:I

    move/from16 v23, v0

    add-int v22, v22, v23

    add-int v22, v22, v7

    add-int v22, v22, v4

    move/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-direct {v14, v0, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v14, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v19

    if-eqz v19, :cond_2

    if-nez v11, :cond_2

    const/16 v19, 0x1

    :goto_0
    return v19

    :cond_2
    const/16 v19, 0x0

    goto :goto_0
.end method

.method public isThresholdReached(FF)Z
    .locals 4

    invoke-virtual {p0, p1, p2}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->getTargetProximityRatio(FF)D

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mReachedRatio:D

    cmpl-double v2, v0, v2

    if-ltz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "IncomingCallImageHandle"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public needToHideArrow(FF)Z
    .locals 4

    invoke-virtual {p0, p1, p2}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->getTargetProximityRatio(FF)D

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mReachedRatioForArrow:D

    cmpl-double v2, v0, v2

    if-ltz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const-string v0, "onFinishInflate"

    invoke-virtual {p0, v0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->log(Ljava/lang/String;)V

    return-void
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    const/4 v4, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onHoverEvent : event : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "accessibility"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :goto_0
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    :cond_0
    iget-object v2, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mParent:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;

    iget-boolean v2, v2, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->mUseHoverToAction:Z

    if-ne v2, v4, :cond_1

    invoke-direct {p0, p1}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->handleEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    :goto_1
    return v2

    :pswitch_1
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    :pswitch_2
    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->setAction(I)V

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public onInterceptHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "accessibility"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/16 v2, 0x9

    if-ne v1, v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    return v2
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    const-string v1, " on intercept touch "

    invoke-virtual {p0, v1}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "accessibility"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isEasyInteraction()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mEasyTouchModeEnabled:Z

    if-eqz v1, :cond_0

    const-string v1, " tts n easy mode is on "

    invoke-virtual {p0, v1}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->log(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTouchEvent : event : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->log(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->handleEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public processMoveEvent(Landroid/view/MotionEvent;)V
    .locals 6

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->isThresholdReached(FF)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mActivePointerId:I

    iget v3, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mCurrentPointerId:I

    if-eq v2, v3, :cond_0

    const-string v2, "mCurrentPointerId different from mActivePointerId ==> return"

    invoke-virtual {p0, v2}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->log(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mMovingCircle:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setScaleX(F)V

    iget-object v2, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mMovingCircle:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setScaleY(F)V

    iget-object v2, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mParent:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;

    iget v3, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mHandleType:I

    invoke-virtual {v2, v3}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->dispatchTriggerEvent(I)V

    sget-object v2, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle$HandleState;->TRIGGERED:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle$HandleState;

    invoke-virtual {p0, v2}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->setHandleState(Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle$HandleState;)V

    iget-object v2, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle$3;

    invoke-direct {v3, p0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle$3;-><init>(Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0, v1}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->notifyTargetProximityRatio(FF)V

    invoke-virtual {p0, v0, v1}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->needToHideArrow(FF)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->hideArrowHandleInternal()V

    :cond_2
    invoke-direct {p0, v0, v1}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->updateMovingCircle(FF)V

    goto :goto_0
.end method

.method public removeArrowMsg()V
    .locals 3

    const/16 v2, 0x65

    const/16 v1, 0x64

    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mArrowAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mArrowAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mArrowAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mRedialArrowAnimatorSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mRedialArrowAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mRedialArrowAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    :cond_3
    return-void
.end method

.method public resetConversionAnimator()V
    .locals 4

    const/4 v3, 0x4

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mIsAnswerAnimating:Z

    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mArrow:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mTargetCircle:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mTargetCircle:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mMovingCircle:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mMovingCircle:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mTabCircle:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mTabCircle:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mTabCircle:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mHandleImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mHandleImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mHandleImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_4
    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mTabCircleForAnim:Landroid/widget/ImageView;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mTabCircleForAnim:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_5
    return-void
.end method

.method public setAlphaForDeactive(F)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mIsEasyModeOn:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mHandleState:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle$HandleState;

    sget-object v1, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle$HandleState;->DEACTIVE:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle$HandleState;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mTabCircle:Landroid/widget/ImageView;

    invoke-direct {p0, v0, p1}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->setViewStatePostAnimation(Landroid/view/View;F)V

    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mHandleImageView:Landroid/widget/ImageView;

    invoke-direct {p0, v0, p1}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->setViewStatePostAnimation(Landroid/view/View;F)V

    goto :goto_0
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mHandleImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mHandleImageView:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    return-void
.end method

.method public setEasyTouchModeEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mEasyTouchModeEnabled:Z

    return-void
.end method

.method public setHandleImageResource(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mHandleImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public setHandleState(Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle$HandleState;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mHandleState:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle$HandleState;

    invoke-virtual {p0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->updateHandle()V

    return-void
.end method

.method public setLeftTabImageResource(II)V
    .locals 0

    iput p1, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mLeftTabNormalRes:I

    iput p2, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mLeftTabPressRes:I

    return-void
.end method

.method public setParent(Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mParent:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;

    return-void
.end method

.method public setRightTabImageResource(II)V
    .locals 0

    iput p1, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mRightTabNormalRes:I

    iput p2, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mRightTabPressRes:I

    return-void
.end method

.method public setTabImageResource(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mTabCircle:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public setTargetImageResource(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mTargetCircle:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mMovingCircle:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public setUseExternalArrowImage(Z)V
    .locals 2

    const/4 v1, 0x4

    iput-boolean p1, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mUseExternalArrowImage:Z

    iget-boolean v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mUseExternalArrowImage:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mArrow:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mArrowContainer:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mArrowContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mRedialArrowContainer:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mRedialArrowContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public setWidgetTypeTag(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mTag:Ljava/lang/String;

    return-void
.end method

.method public updateArrowHandle()V
    .locals 7

    const/16 v6, 0x65

    const/16 v5, 0x64

    const/4 v4, 0x4

    iget-boolean v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mIsAnswerAnimating:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mArrow:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mArrowContainer:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mArrowContainer:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mRedialArrowContainer:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mRedialArrowContainer:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->removeArrowMsg()V

    :cond_3
    :goto_0
    return-void

    :cond_4
    sget-object v0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle$7;->$SwitchMap$com$android$incallui$secwidget$incomingwidget$IncomingCallImageHandle$HandleState:[I

    iget-object v1, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mHandleState:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle$HandleState;

    invoke-virtual {v1}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle$HandleState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mArrow:Landroid/widget/ImageView;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mArrow:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mEnableArrowAnimation:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_5
    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mArrowContainer:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mArrowContainer:Landroid/view/View;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mArrowContainer:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mRedialArrowContainer:Landroid/view/View;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mRedialArrowContainer:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    invoke-virtual {p0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->removeArrowMsg()V

    iget-boolean v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mEnableArrowAnimation:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->showDefaultArrowHandleInternal()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v6, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mArrow:Landroid/widget/ImageView;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mArrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_8
    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mArrowContainer:Landroid/view/View;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mArrowContainer:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_9
    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mRedialArrowContainer:Landroid/view/View;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mRedialArrowContainer:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_a
    invoke-virtual {p0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->removeArrowMsg()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public updateHandle()V
    .locals 7

    const/4 v6, 0x3

    const/16 v5, 0x12c

    const/4 v4, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateHandle: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mHandleState:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle$HandleState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->log(Ljava/lang/String;)V

    sget-object v0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle$7;->$SwitchMap$com$android$incallui$secwidget$incomingwidget$IncomingCallImageHandle$HandleState:[I

    iget-object v1, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mHandleState:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle$HandleState;

    invoke-virtual {v1}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle$HandleState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mUseExternalArrowImage:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->updateArrowHandle()V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mHandleState:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle$HandleState;

    iput-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mPreviousHandleState:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle$HandleState;

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mPreviousHandleState:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle$HandleState;

    sget-object v1, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle$HandleState;->TRIGGERED:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle$HandleState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mTargetCircle:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mTargetCircle:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mMovingCircle:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mParent:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;

    invoke-virtual {v0, v3}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->notifyTargetProximityRatio(F)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mPreviousHandleState:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle$HandleState;

    sget-object v1, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle$HandleState;->NORMAL:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle$HandleState;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->animateForTargetCircle(Z)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mTargetCircle:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mTargetCircle:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mMovingCircle:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-boolean v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mIsAnswerAnimating:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mTabCircle:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v3}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->setViewStatePostAnimation(Landroid/view/View;F)V

    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mHandleImageView:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v3}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->setViewStatePostAnimation(Landroid/view/View;F)V

    :cond_3
    iget v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mHandleType:I

    if-ne v0, v4, :cond_4

    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mTabCircle:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mTabCircle:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mLeftTabNormalRes:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mHandleType:I

    if-ne v0, v6, :cond_5

    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mTabCircle:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mTabCircle:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mLeftTabNormalRes:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mTabCircle:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mTabCircle:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mRightTabNormalRes:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mPreviousHandleState:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle$HandleState;

    sget-object v1, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle$HandleState;->ACTIVE:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle$HandleState;

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mHandleType:I

    if-ne v0, v4, :cond_7

    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mTabCircle:Landroid/widget/ImageView;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mTabCircle:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mLeftTabPressRes:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_6
    :goto_1
    iget-boolean v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mIsAnswerAnimating:Z

    if-nez v0, :cond_0

    invoke-direct {p0, v4}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->animateForTargetCircle(Z)Z

    goto/16 :goto_0

    :cond_7
    iget v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mHandleType:I

    if-ne v0, v6, :cond_8

    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mTabCircle:Landroid/widget/ImageView;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mTabCircle:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mLeftTabPressRes:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_8
    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mTabCircle:Landroid/widget/ImageView;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mTabCircle:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mRightTabPressRes:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :pswitch_3
    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mPreviousHandleState:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle$HandleState;

    sget-object v1, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle$HandleState;->DEACTIVE:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle$HandleState;

    if-eq v0, v1, :cond_0

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {p0, v0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->setAlphaForDeactive(F)V

    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mTargetCircle:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mMovingCircle:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mPreviousHandleState:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle$HandleState;

    sget-object v1, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle$HandleState;->AIRMOTION_SWEEP1:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle$HandleState;

    if-eq v0, v1, :cond_0

    const v0, 0x3f266666    # 0.65f

    invoke-direct {p0, v0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->showTarget(F)V

    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x4b0

    invoke-virtual {v0, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mPreviousHandleState:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle$HandleState;

    sget-object v1, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle$HandleState;->AIRMOTION_SWEEP2:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle$HandleState;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    const v0, 0x3f4f5c29    # 0.81f

    invoke-direct {p0, v0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->showTarget(F)V

    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x4b0

    invoke-virtual {v0, v5, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

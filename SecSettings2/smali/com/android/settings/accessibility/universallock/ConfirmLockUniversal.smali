.class public Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;
.super Landroid/app/Activity;
.source "ConfirmLockUniversal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$10;,
        Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$Stage;
    }
.end annotation


# instance fields
.field private ANIMATION_DURATION:I

.field private ARROW_STEPCIRCLE_THRESHOLD:I

.field private STEP_CIRCLE_LEFT_MARGIN:I

.field private STEP_CIRCLE_RIGHT_MARGIN:I

.field private STEP_CIRCLE_SIZE:I

.field _listener:Lcom/android/internal/widget/DirectionLockTouchListener;

.field private mClearPatternRunnable:Ljava/lang/Runnable;

.field private mCountdownTimer:Landroid/os/CountDownTimer;

.field private mDirectionImageView:Landroid/widget/ImageView;

.field private mDirectionView:Lcom/android/internal/widget/DirectionLockView;

.field private mFlagForEnabled:Z

.field private mGreenCircleDrawable:Landroid/graphics/drawable/Drawable;

.field private mGreyCircleDrawable:Landroid/graphics/drawable/Drawable;

.field private mGreyListAnimator:Landroid/animation/ValueAnimator;

.field private mGreyStepCircleList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mHeaderTextView:Landroid/widget/TextView;

.field private mIncomingArrowAnimator:Landroid/view/animation/AlphaAnimation;

.field private mLeftButton:Landroid/widget/Button;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mNewStepCircle:Landroid/widget/ImageView;

.field private mNewStepCircleScaleAnimator:Landroid/animation/ValueAnimator;

.field private mNumWrongConfirmAttempts:I

.field private mOldStepCircle:Landroid/widget/ImageView;

.field private mOutgoingArrowAnimator:Landroid/view/animation/AlphaAnimation;

.field private mRightButton:Landroid/widget/Button;

.field private mStepCircleDown:Landroid/graphics/Bitmap;

.field private mStepCircleLayout:Landroid/widget/LinearLayout;

.field private mStepCircleLeft:Landroid/graphics/Bitmap;

.field private mStepCircleRight:Landroid/graphics/Bitmap;

.field private mStepCircleUp:Landroid/graphics/Bitmap;

.field private mUniversalLockSettingsHelper:Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;

.field private playBeep:Z

.field private playVibration:Z

.field private playVoice:Z

.field private showArrow:Z

.field private stepCircleLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

.field private topLayout:Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/16 v0, 0x50

    iput v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->ARROW_STEPCIRCLE_THRESHOLD:I

    const/16 v0, 0xc8

    iput v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->ANIMATION_DURATION:I

    new-instance v0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$1;

    invoke-direct {v0, p0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$1;-><init>(Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->_listener:Lcom/android/internal/widget/DirectionLockTouchListener;

    new-instance v0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$8;

    invoke-direct {v0, p0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$8;-><init>(Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mClearPatternRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;)Lcom/android/internal/widget/DirectionLockView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mHeaderTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mGreyStepCircleList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mGreyCircleDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mOldStepCircle:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->clearStepCircles()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->checkForCorrectPassword()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1502(Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;I)I
    .locals 0

    iput p1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mNumWrongConfirmAttempts:I

    return p1
.end method

.method static synthetic access$1600(Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$Stage;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->updateStage(Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$Stage;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;)Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mUniversalLockSettingsHelper:Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mLeftButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mRightButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mDirectionImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;)Landroid/view/animation/AlphaAnimation;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mOutgoingArrowAnimator:Landroid/view/animation/AlphaAnimation;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->handleStepCircle(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mNewStepCircle:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mStepCircleLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private attachListeners()V
    .locals 2

    const-string v0, "ConfirmLockUniversal"

    const-string v1, "attachListeners"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mLeftButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$6;

    invoke-direct {v1, p0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$6;-><init>(Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mRightButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$7;

    invoke-direct {v1, p0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$7;-><init>(Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->topLayout:Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;

    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;->setDefaultTouchRecepient(Landroid/view/View;)V

    return-void
.end method

.method private checkForCorrectPassword()Z
    .locals 5

    const-string v3, "ConfirmLockUniversal"

    const-string v4, "checkForCorrectPassword"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v4, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v4}, Lcom/android/internal/widget/DirectionLockView;->getCurrentPasswordNumbers()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->checkPattern(Ljava/util/List;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string v3, "password"

    iget-object v4, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v4}, Lcom/android/internal/widget/DirectionLockView;->getCurrentPasswordNumbers()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v3, -0x1

    invoke-virtual {p0, v3, v2}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->finish()V

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    iget v3, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mNumWrongConfirmAttempts:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mNumWrongConfirmAttempts:I

    const/4 v4, 0x5

    if-lt v3, v4, :cond_1

    iget-object v3, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadline()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->handleAttemptLockout(J)V

    :goto_1
    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    sget-object v3, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$Stage;->NeedToUnlockWrong:Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$Stage;

    invoke-direct {p0, v3}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->updateStage(Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$Stage;)V

    invoke-direct {p0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->postClearPatternRunnable()V

    goto :goto_1
.end method

.method private clearStepCircles()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "ConfirmLockUniversal"

    const-string v1, "clearStepCircles"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mGreyListAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mGreyListAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mGreyListAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mNewStepCircleScaleAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mNewStepCircleScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mNewStepCircleScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mStepCircleLayout:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mStepCircleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    :cond_2
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mGreyStepCircleList:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mGreyStepCircleList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mGreyStepCircleList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_3
    iput-object v2, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mNewStepCircle:Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mOldStepCircle:Landroid/widget/ImageView;

    return-void
.end method

.method private endOngoingAnimations()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mGreyListAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mGreyListAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mGreyListAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mNewStepCircleScaleAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mNewStepCircleScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mNewStepCircleScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    return-void
.end method

.method private freeUpMemory()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "ConfirmLockUniversal"

    const-string v1, "freeUpMemory"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mStepCircleDown:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mStepCircleDown:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v2, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mStepCircleDown:Landroid/graphics/Bitmap;

    :cond_0
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mStepCircleUp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mStepCircleUp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v2, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mStepCircleUp:Landroid/graphics/Bitmap;

    :cond_1
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mStepCircleLeft:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mStepCircleLeft:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v2, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mStepCircleLeft:Landroid/graphics/Bitmap;

    :cond_2
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mStepCircleRight:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mStepCircleRight:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v2, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mStepCircleRight:Landroid/graphics/Bitmap;

    :cond_3
    return-void
.end method

.method private handleAttemptLockout(J)V
    .locals 9

    const-string v0, "ConfirmLockUniversal"

    const-string v1, "handleAttemptLockout"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$Stage;->LockedOut:Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$Stage;

    invoke-direct {p0, v0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->updateStage(Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$Stage;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    new-instance v0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$9;

    sub-long v2, p1, v6

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$9;-><init>(Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;JJ)V

    invoke-virtual {v0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$9;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mCountdownTimer:Landroid/os/CountDownTimer;

    return-void
.end method

.method private handleStepCircle(Ljava/lang/String;Z)V
    .locals 5

    const/4 v4, -0x2

    const/4 v2, 0x0

    const-string v1, "ConfirmLockUniversal"

    const-string v3, "handleStepCircle"

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mNewStepCircle:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mGreyListAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mGreyListAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mGreyListAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mNewStepCircle:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mOldStepCircle:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mGreyStepCircleList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mOldStepCircle:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mNewStepCircleScaleAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mNewStepCircleScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mNewStepCircleScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mNewStepCircle:Landroid/widget/ImageView;

    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_2
    :goto_0
    packed-switch v1, :pswitch_data_0

    :goto_1
    return-void

    :sswitch_0
    const-string v3, "UP"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v1, v2

    goto :goto_0

    :sswitch_1
    const-string v3, "LEFT"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string v3, "RIGHT"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v1, 0x2

    goto :goto_0

    :sswitch_3
    const-string v3, "DOWN"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v1, 0x3

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mStepCircleUp:Landroid/graphics/Bitmap;

    :goto_2
    if-eqz p2, :cond_3

    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mOldStepCircle:Landroid/widget/ImageView;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mOldStepCircle:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mGreyCircleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mNewStepCircle:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mGreenCircleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mNewStepCircle:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mNewStepCircle:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iput-object v1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->stepCircleLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->stepCircleLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    if-nez v1, :cond_4

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->stepCircleLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    :cond_4
    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->stepCircleLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    iget v3, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->STEP_CIRCLE_LEFT_MARGIN:I

    iget v4, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->STEP_CIRCLE_RIGHT_MARGIN:I

    invoke-virtual {v1, v3, v2, v4, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mNewStepCircle:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->stepCircleLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-nez p2, :cond_5

    invoke-direct {p0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->performAnimations()V

    goto :goto_1

    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mStepCircleLeft:Landroid/graphics/Bitmap;

    goto :goto_2

    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mStepCircleRight:Landroid/graphics/Bitmap;

    goto :goto_2

    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mStepCircleDown:Landroid/graphics/Bitmap;

    goto :goto_2

    :cond_5
    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mStepCircleLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mNewStepCircle:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0xa9b -> :sswitch_0
        0x201ca2 -> :sswitch_3
        0x239807 -> :sswitch_1
        0x4a5c9fc -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private initializeAnimations()V
    .locals 10

    const/4 v9, 0x2

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v2, "ConfirmLockUniversal"

    const-string v3, "initializeAnimations"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v2, v8, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v2, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mOutgoingArrowAnimator:Landroid/view/animation/AlphaAnimation;

    iget-object v2, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mOutgoingArrowAnimator:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v2, v7}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    iget-object v2, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mOutgoingArrowAnimator:Landroid/view/animation/AlphaAnimation;

    iget v3, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->ANIMATION_DURATION:I

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    new-instance v2, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v2, v6, v8}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v2, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mIncomingArrowAnimator:Landroid/view/animation/AlphaAnimation;

    iget-object v2, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mIncomingArrowAnimator:Landroid/view/animation/AlphaAnimation;

    iget v3, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->ANIMATION_DURATION:I

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    iget-object v2, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mIncomingArrowAnimator:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v2, v7}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    new-array v2, v9, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mNewStepCircleScaleAnimator:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mNewStepCircleScaleAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Landroid/view/animation/interpolator/SineInOut80;

    invoke-direct {v3}, Landroid/view/animation/interpolator/SineInOut80;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v2, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mNewStepCircleScaleAnimator:Landroid/animation/ValueAnimator;

    iget v3, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->ANIMATION_DURATION:I

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mNewStepCircleScaleAnimator:Landroid/animation/ValueAnimator;

    iget v3, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->ANIMATION_DURATION:I

    div-int/lit8 v3, v3, 0x64

    iget v4, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->ARROW_STEPCIRCLE_THRESHOLD:I

    mul-int/2addr v3, v4

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-object v2, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mNewStepCircleScaleAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$2;

    invoke-direct {v3, p0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$2;-><init>(Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v2, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mNewStepCircleScaleAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$3;

    invoke-direct {v3, p0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$3;-><init>(Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d030f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0311

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    add-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0312

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    add-float/2addr v2, v3

    const/high16 v3, 0x40800000    # 4.0f

    div-float/2addr v2, v3

    float-to-double v0, v2

    new-array v2, v9, [F

    const/4 v3, 0x0

    double-to-float v4, v0

    aput v4, v2, v3

    aput v6, v2, v7

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mGreyListAnimator:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mGreyListAnimator:Landroid/animation/ValueAnimator;

    iget v3, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->ANIMATION_DURATION:I

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mGreyListAnimator:Landroid/animation/ValueAnimator;

    iget v3, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->ANIMATION_DURATION:I

    div-int/lit8 v3, v3, 0x64

    iget v4, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->ARROW_STEPCIRCLE_THRESHOLD:I

    mul-int/2addr v3, v4

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-object v2, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mGreyListAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$4;

    invoke-direct {v3, p0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$4;-><init>(Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v2, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mGreyListAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$5;

    invoke-direct {v3, p0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$5;-><init>(Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x3e4ccccd    # 0.2f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private initializeDirectionView()V
    .locals 2

    const-string v0, "ConfirmLockUniversal"

    const-string v1, "initializeDirectionView"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->_listener:Lcom/android/internal/widget/DirectionLockTouchListener;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/DirectionLockView;->setOnDirectionLockTouchListener(Lcom/android/internal/widget/DirectionLockTouchListener;)V

    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mUniversalLockSettingsHelper:Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;

    iget v1, v1, Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;->SETTINGS_ARROW_SIZE:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/DirectionLockView;->getDirectionImageView(I)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mDirectionImageView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v0}, Lcom/android/internal/widget/DirectionLockView;->setSettingsMode()V

    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mUniversalLockSettingsHelper:Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v0}, Lcom/android/internal/widget/DirectionLockView;->reloadBitmap()V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    iget-boolean v1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->showArrow:Z

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/DirectionLockView;->setShowArrow(Z)V

    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    iget-boolean v1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->playVoice:Z

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/DirectionLockView;->setPlayVoice(Z)V

    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    iget-boolean v1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->playVibration:Z

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/DirectionLockView;->setPlayVibration(Z)V

    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    iget-boolean v1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->playBeep:Z

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/DirectionLockView;->setPlayBeep(Z)V

    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/DirectionLockView;->setVisibility(I)V

    return-void
.end method

.method private initializing(Landroid/os/Bundle;)V
    .locals 2

    const v1, 0x7f0a0a55

    invoke-virtual {p0, v1}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->initializeIdentifiers()V

    invoke-direct {p0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->loadCustomSettings()V

    invoke-direct {p0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->initializeDirectionView()V

    invoke-direct {p0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->loadStepCircleVariables()V

    invoke-direct {p0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->initializeAnimations()V

    invoke-direct {p0, p1}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->setInitialState(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->attachListeners()V

    return-void
.end method

.method private loadCustomSettings()V
    .locals 5

    const/4 v4, -0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v0, "ConfirmLockUniversal"

    const-string v3, "loadCustomSettings"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mUniversalLockSettingsHelper:Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;->isTouchExplorationEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "universal_lock_voice"

    invoke-static {v0, v3, v1, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->playVoice:Z

    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "universal_lock_beep"

    invoke-static {v0, v3, v2, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_1

    move v1, v2

    :cond_1
    iput-boolean v1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->playBeep:Z

    iput-boolean v2, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->playVibration:Z

    iput-boolean v2, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->showArrow:Z

    return-void

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private loadStepCircleVariables()V
    .locals 6

    const-string v1, "ConfirmLockUniversal"

    const-string v2, "loadStepCircleVariables"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v1, 0x7f1000b3

    invoke-virtual {p0, v1}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mStepCircleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d030f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->STEP_CIRCLE_SIZE:I

    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0311

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->STEP_CIRCLE_LEFT_MARGIN:I

    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0312

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->STEP_CIRCLE_RIGHT_MARGIN:I

    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mUniversalLockSettingsHelper:Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mUniversalLockSettingsHelper:Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020075

    iget v4, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->STEP_CIRCLE_SIZE:I

    iget v5, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->STEP_CIRCLE_SIZE:I

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;->getBitmapFromResource(Landroid/content/res/Resources;III)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mStepCircleDown:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mUniversalLockSettingsHelper:Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020078

    iget v4, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->STEP_CIRCLE_SIZE:I

    iget v5, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->STEP_CIRCLE_SIZE:I

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;->getBitmapFromResource(Landroid/content/res/Resources;III)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mStepCircleUp:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mUniversalLockSettingsHelper:Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020076

    iget v4, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->STEP_CIRCLE_SIZE:I

    iget v5, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->STEP_CIRCLE_SIZE:I

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;->getBitmapFromResource(Landroid/content/res/Resources;III)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mStepCircleLeft:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mUniversalLockSettingsHelper:Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020077

    iget v4, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->STEP_CIRCLE_SIZE:I

    iget v5, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->STEP_CIRCLE_SIZE:I

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;->getBitmapFromResource(Landroid/content/res/Resources;III)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mStepCircleRight:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mUniversalLockSettingsHelper:Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;

    invoke-virtual {v1}, Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;->isAMOLEDSupport()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900e4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mUniversalLockSettingsHelper:Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;

    iget-object v2, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mStepCircleDown:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2, v0}, Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;->changeBitmapColor(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mStepCircleDown:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mUniversalLockSettingsHelper:Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;

    iget-object v2, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mStepCircleUp:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2, v0}, Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;->changeBitmapColor(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mStepCircleUp:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mUniversalLockSettingsHelper:Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;

    iget-object v2, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mStepCircleLeft:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2, v0}, Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;->changeBitmapColor(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mStepCircleLeft:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mUniversalLockSettingsHelper:Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;

    iget-object v2, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mStepCircleRight:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2, v0}, Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;->changeBitmapColor(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mStepCircleRight:Landroid/graphics/Bitmap;

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02005c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mGreyCircleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02005b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mGreenCircleDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method private performAnimations()V
    .locals 2

    const-string v0, "ConfirmLockUniversal"

    const-string v1, "performAnimations"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mDirectionImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mDirectionImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mIncomingArrowAnimator:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mNewStepCircleScaleAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mNewStepCircleScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_1
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mGreyStepCircleList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mGreyListAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_2
    return-void
.end method

.method private postClearPatternRunnable()V
    .locals 2

    const-string v0, "ConfirmLockUniversal"

    const-string v1, "postClearPatternRunnable"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v0}, Lcom/android/internal/widget/DirectionLockView;->clearScreen()V

    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v0}, Lcom/android/internal/widget/DirectionLockView;->resetPassword()V

    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/DirectionLockView;->setEnabled(Z)V

    return-void
.end method

.method private setInitialState(Landroid/os/Bundle;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-string v3, "ConfirmLockUniversal"

    const-string v4, "setInitialState"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$Stage;->NeedToUnlock:Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$Stage;

    invoke-direct {p0, v3}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->updateStage(Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$Stage;)V

    iget-object v3, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v3, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mRightButton:Landroid/widget/Button;

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setEnabled(Z)V

    if-eqz p1, :cond_5

    const-string v3, "num_wrong_attempts"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mNumWrongConfirmAttempts:I

    iget-object v3, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mUniversalLockSettingsHelper:Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;

    const-string v3, "current_generated_password"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x8

    if-lt v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v3, v5}, Lcom/android/internal/widget/DirectionLockView;->setEnabled(Z)V

    iput-boolean v6, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mFlagForEnabled:Z

    :goto_0
    iget-object v3, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mHeaderTextView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mUniversalLockSettingsHelper:Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;

    const-string v4, "header_text_content"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, ""

    iget-object v3, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v3, v2}, Lcom/android/internal/widget/DirectionLockView;->setCurrentPassword(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_1

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :goto_2
    invoke-direct {p0, v0, v6}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->handleStepCircle(Ljava/lang/String;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    iput-boolean v5, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mFlagForEnabled:Z

    goto :goto_0

    :sswitch_0
    const-string v0, "UP"

    goto :goto_2

    :sswitch_1
    const-string v0, "RIGHT"

    goto :goto_2

    :sswitch_2
    const-string v0, "DOWN"

    goto :goto_2

    :sswitch_3
    const-string v0, "LEFT"

    goto :goto_2

    :cond_1
    iget-object v3, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mLeftButton:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mUniversalLockSettingsHelper:Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;

    const-string v4, "left_button_state"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v3, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mRightButton:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mUniversalLockSettingsHelper:Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;

    const-string v4, "right_button_state"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_2
    :goto_3
    iget-object v3, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mUniversalLockSettingsHelper:Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;

    invoke-virtual {v3}, Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;->isTouchExplorationEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-direct {p0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->setTalkbackDimens()V

    :cond_3
    iget-object v3, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mUniversalLockSettingsHelper:Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;

    invoke-virtual {v3}, Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;->isTablet()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {p0, v6}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->setRequestedOrientation(I)V

    :cond_4
    return-void

    :cond_5
    iget-object v3, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->savedPatternExists()Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, -0x1

    invoke-virtual {p0, v3}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->setResult(I)V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->finish()V

    goto :goto_3

    nop

    :sswitch_data_0
    .sparse-switch
        0x44 -> :sswitch_2
        0x4c -> :sswitch_3
        0x52 -> :sswitch_1
        0x55 -> :sswitch_0
    .end sparse-switch
.end method

.method private setTalkbackDimens()V
    .locals 3

    const-string v0, "ConfirmLockUniversal"

    const-string v1, "setTalkbackDimens"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mHeaderTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mUniversalLockSettingsHelper:Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;

    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method

.method private updateStage(Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$Stage;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v0, "ConfirmLockUniversal"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateStage to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->clearStepCircles()V

    sget-object v0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$10;->$SwitchMap$com$android$settings$accessibility$universallock$ConfirmLockUniversal$Stage:[I

    invoke-virtual {p1}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$Stage;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mHeaderTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return-void

    :pswitch_0
    const-string v0, "ConfirmLockUniversal"

    const-string v1, "NeedToUnlock"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mHeaderTextView:Landroid/widget/TextView;

    const v1, 0x7f0a0a41

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mUniversalLockSettingsHelper:Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mHeaderTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a1524

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v0}, Lcom/android/internal/widget/DirectionLockView;->resetPassword()V

    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v0}, Lcom/android/internal/widget/DirectionLockView;->clearScreen()V

    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mRightButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v0, v5}, Lcom/android/internal/widget/DirectionLockView;->setEnabled(Z)V

    goto :goto_0

    :pswitch_1
    const-string v0, "ConfirmLockUniversal"

    const-string v1, "NeedToUnlockWrong"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mHeaderTextView:Landroid/widget/TextView;

    const v1, 0x7f0a0a39

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v0}, Lcom/android/internal/widget/DirectionLockView;->resetPassword()V

    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v0, v5}, Lcom/android/internal/widget/DirectionLockView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mRightButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v0}, Lcom/android/internal/widget/DirectionLockView;->clearScreen()V

    goto/16 :goto_0

    :pswitch_2
    const-string v0, "ConfirmLockUniversal"

    const-string v1, "LockedOut"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v0}, Lcom/android/internal/widget/DirectionLockView;->clearScreen()V

    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v0}, Lcom/android/internal/widget/DirectionLockView;->resetPassword()V

    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v0, v4}, Lcom/android/internal/widget/DirectionLockView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mRightButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method initializeIdentifiers()V
    .locals 4

    const v3, 0x10809a3

    const/4 v2, 0x0

    const-string v0, "ConfirmLockUniversal"

    const-string v1, "initializeIdentifiers"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;

    invoke-direct {v0, p0}, Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mUniversalLockSettingsHelper:Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;

    const v0, 0x7f1000b0

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/DirectionLockView;

    iput-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    const v0, 0x7f1000b5

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mLeftButton:Landroid/widget/Button;

    const v0, 0x7f1000b6

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mRightButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "show_button_background"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mRightButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    :cond_0
    const v0, 0x7f1000a9

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;

    iput-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->topLayout:Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;

    const v0, 0x7f10009e

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mHeaderTextView:Landroid/widget/TextView;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mGreyStepCircleList:Ljava/util/ArrayList;

    iput-boolean v2, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mFlagForEnabled:Z

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "ConfirmLockUniversal"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f04004d

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->setContentView(I)V

    invoke-direct {p0, p1}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->initializing(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    const-string v0, "ConfirmLockUniversal"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->freeUpMemory()V

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 2

    const-string v0, "ConfirmLockUniversal"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mCountdownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 6

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const-string v1, "ConfirmLockUniversal"

    const-string v4, "onResume"

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;->applyLandscapeFullScreen(Landroid/content/Context;Landroid/view/Window;)V

    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mUniversalLockSettingsHelper:Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;->isMobileKeyboardCovered(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "ConfirmLockUniversal"

    const-string v4, "Mobile Keyboard attached, changing the height of DirectionView"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v1}, Lcom/android/internal/widget/DirectionLockView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0d0315

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/DirectionLockView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_2

    invoke-direct {p0, v2, v3}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->handleAttemptLockout(J)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-boolean v1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mFlagForEnabled:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v1}, Lcom/android/internal/widget/DirectionLockView;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mNumWrongConfirmAttempts:I

    sget-object v1, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$Stage;->NeedToUnlock:Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$Stage;

    invoke-direct {p0, v1}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->updateStage(Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal$Stage;)V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "ConfirmLockUniversal"

    const-string v1, "onSaveInstanceState"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->endOngoingAnimations()V

    const-string v0, "num_wrong_attempts"

    iget v1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mNumWrongConfirmAttempts:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mUniversalLockSettingsHelper:Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;

    const-string v0, "current_generated_password"

    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v1}, Lcom/android/internal/widget/DirectionLockView;->getCurrentPassword()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mUniversalLockSettingsHelper:Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;

    const-string v0, "header_text_content"

    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mUniversalLockSettingsHelper:Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;

    const-string v0, "left_button_state"

    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->isEnabled()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mUniversalLockSettingsHelper:Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;

    const-string v0, "right_button_state"

    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ConfirmLockUniversal;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->isEnabled()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

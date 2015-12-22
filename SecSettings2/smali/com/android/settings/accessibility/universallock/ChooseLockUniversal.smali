.class public Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;
.super Landroid/app/Activity;
.source "ChooseLockUniversal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$ScreenStage;
    }
.end annotation


# instance fields
.field private ANIMATION_DURATION:I

.field private ARROW_STEPCIRCLE_THRESHOLD:I

.field private STEP_CIRCLE_LEFT_MARGIN:I

.field private STEP_CIRCLE_RIGHT_MARGIN:I

.field private STEP_CIRCLE_SIZE:I

.field _listener:Lcom/android/internal/widget/DirectionLockTouchListener;

.field private mCurrentScreenStage:Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$ScreenStage;

.field private mDirectionImageView:Landroid/widget/ImageView;

.field private mDirectionView:Lcom/android/internal/widget/DirectionLockView;

.field private mFirstPassword:Ljava/lang/String;

.field private mGreenCircleDrawable:Landroid/graphics/drawable/Drawable;

.field private mGreyCircleDrawable:Landroid/graphics/drawable/Drawable;

.field private mGreyListAnimator:Landroid/animation/ValueAnimator;

.field private mGreyListIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

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

.field private mHelpBitmap:Landroid/graphics/Bitmap;

.field private mHelpBitmapHeight:I

.field private mHelpBitmapWidth:I

.field private mIncomingArrowAnimator:Landroid/view/animation/AlphaAnimation;

.field private mLeftButton:Landroid/widget/Button;

.field private mNewStepCircle:Landroid/widget/ImageView;

.field private mNewStepCircleScaleAnimator:Landroid/animation/ValueAnimator;

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


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/16 v0, 0x50

    iput v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->ARROW_STEPCIRCLE_THRESHOLD:I

    const/16 v0, 0xc8

    iput v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->ANIMATION_DURATION:I

    new-instance v0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$7;

    invoke-direct {v0, p0}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$7;-><init>(Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->_listener:Lcom/android/internal/widget/DirectionLockTouchListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mNewStepCircle:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mNewStepCircle:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mStepCircleLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mHeaderTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;)Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mUniversalLockSettingsHelper:Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->clearStepCircles()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mDirectionImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mHelpBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;)Landroid/view/animation/AlphaAnimation;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mIncomingArrowAnimator:Landroid/view/animation/AlphaAnimation;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->handleConfirmScreen()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->handleStepCircle(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;)Landroid/view/animation/AlphaAnimation;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mOutgoingArrowAnimator:Landroid/view/animation/AlphaAnimation;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mGreyStepCircleList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mGreyCircleDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mOldStepCircle:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mOldStepCircle:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;)Lcom/android/internal/widget/DirectionLockView;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;)Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$ScreenStage;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mCurrentScreenStage:Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$ScreenStage;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$ScreenStage;)Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$ScreenStage;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mCurrentScreenStage:Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$ScreenStage;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mFirstPassword:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mFirstPassword:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mRightButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mLeftButton:Landroid/widget/Button;

    return-object v0
.end method

.method private attachListeners()V
    .locals 2

    const-string v0, "ChooseLockUniversal"

    const-string v1, "attachListeners"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mRightButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$5;

    invoke-direct {v1, p0}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$5;-><init>(Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mLeftButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$6;

    invoke-direct {v1, p0}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$6;-><init>(Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private clearStepCircles()V
    .locals 4

    const/4 v3, 0x0

    const-string v1, "ChooseLockUniversal"

    const-string v2, "clearStepCircles"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mGreyListAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mGreyListAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mGreyListAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mNewStepCircleScaleAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mNewStepCircleScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mNewStepCircleScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mCurrentScreenStage:Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$ScreenStage;

    sget-object v2, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$ScreenStage;->CONFIRM_DIRECTION_SCREEN:Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$ScreenStage;

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mGreyStepCircleList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mGreyListIterator:Ljava/util/Iterator;

    :goto_0
    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mGreyListIterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mGreyListIterator:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mGreyCircleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mStepCircleLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mStepCircleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    :cond_3
    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mGreyStepCircleList:Ljava/util/ArrayList;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mGreyStepCircleList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mGreyStepCircleList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    :cond_4
    iput-object v3, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mNewStepCircle:Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mOldStepCircle:Landroid/widget/ImageView;

    :cond_5
    return-void
.end method

.method private endOngoingAnimations()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mGreyListAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mGreyListAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mGreyListAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mNewStepCircleScaleAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mNewStepCircleScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mNewStepCircleScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    return-void
.end method

.method private freeUpMemory()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "ChooseLockUniversal"

    const-string v1, "freeUpMemory"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mStepCircleDown:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mStepCircleDown:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v2, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mStepCircleDown:Landroid/graphics/Bitmap;

    :cond_0
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mStepCircleUp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mStepCircleUp:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v2, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mStepCircleUp:Landroid/graphics/Bitmap;

    :cond_1
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mStepCircleLeft:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mStepCircleLeft:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v2, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mStepCircleLeft:Landroid/graphics/Bitmap;

    :cond_2
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mStepCircleRight:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mStepCircleRight:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v2, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mStepCircleRight:Landroid/graphics/Bitmap;

    :cond_3
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mHelpBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mHelpBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v2, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mHelpBitmap:Landroid/graphics/Bitmap;

    :cond_4
    return-void
.end method

.method private handleConfirmScreen()Z
    .locals 4

    const-string v0, "ChooseLockUniversal"

    const-string v1, "handle Confirm Screen"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->partialInputCheck()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a0a39

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "ChooseLockUniversal"

    const-string v1, "handle Confirm Screen - return false"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0a0a41

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mUniversalLockSettingsHelper:Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mHeaderTextView:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->getApplicationContext()Landroid/content/Context;

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

    :cond_1
    const-string v0, "ChooseLockUniversal"

    const-string v1, "handle Confirm Screen - return true"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private handleStepCircle(Ljava/lang/String;Z)V
    .locals 6

    const/4 v5, -0x2

    const/4 v2, 0x0

    const-string v1, "ChooseLockUniversal"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleStepCircle with Direction - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-nez p2, :cond_0

    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mCurrentScreenStage:Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$ScreenStage;

    sget-object v3, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$ScreenStage;->ENTER_DIRECTION_SCREEN:Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$ScreenStage;

    if-ne v1, v3, :cond_4

    :cond_0
    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mNewStepCircle:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mGreyListAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mGreyListAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mGreyListAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mNewStepCircle:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mOldStepCircle:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mGreyStepCircleList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mOldStepCircle:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mNewStepCircleScaleAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mNewStepCircleScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mNewStepCircleScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_2
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mNewStepCircle:Landroid/widget/ImageView;

    :goto_0
    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_3
    :goto_1
    packed-switch v1, :pswitch_data_0

    :goto_2
    return-void

    :cond_4
    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mGreyStepCircleList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v3}, Lcom/android/internal/widget/DirectionLockView;->getCurrentPassword()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mNewStepCircle:Landroid/widget/ImageView;

    goto :goto_0

    :sswitch_0
    const-string v3, "UP"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v1, v2

    goto :goto_1

    :sswitch_1
    const-string v3, "LEFT"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_2
    const-string v3, "RIGHT"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v1, 0x2

    goto :goto_1

    :sswitch_3
    const-string v3, "DOWN"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v1, 0x3

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mStepCircleUp:Landroid/graphics/Bitmap;

    :goto_3
    if-eqz p2, :cond_5

    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mOldStepCircle:Landroid/widget/ImageView;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mCurrentScreenStage:Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$ScreenStage;

    sget-object v3, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$ScreenStage;->ENTER_DIRECTION_SCREEN:Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$ScreenStage;

    if-ne v1, v3, :cond_5

    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mOldStepCircle:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mGreyCircleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_5
    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mNewStepCircle:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mGreenCircleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mNewStepCircle:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    if-nez p2, :cond_6

    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mCurrentScreenStage:Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$ScreenStage;

    sget-object v3, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$ScreenStage;->ENTER_DIRECTION_SCREEN:Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$ScreenStage;

    if-ne v1, v3, :cond_8

    :cond_6
    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mNewStepCircle:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iput-object v1, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->stepCircleLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->stepCircleLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    if-nez v1, :cond_7

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v1, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->stepCircleLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    :cond_7
    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->stepCircleLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    iget v3, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->STEP_CIRCLE_LEFT_MARGIN:I

    iget v4, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->STEP_CIRCLE_RIGHT_MARGIN:I

    invoke-virtual {v1, v3, v2, v4, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mNewStepCircle:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->stepCircleLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_8
    if-nez p2, :cond_9

    invoke-direct {p0}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->performAnimations()V

    goto/16 :goto_2

    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mStepCircleLeft:Landroid/graphics/Bitmap;

    goto :goto_3

    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mStepCircleRight:Landroid/graphics/Bitmap;

    goto :goto_3

    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mStepCircleDown:Landroid/graphics/Bitmap;

    goto :goto_3

    :cond_9
    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mStepCircleLayout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mNewStepCircle:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_2

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

    const-string v2, "ChooseLockUniversal"

    const-string v3, "initializeAnimations"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v2, v8, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v2, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mOutgoingArrowAnimator:Landroid/view/animation/AlphaAnimation;

    iget-object v2, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mOutgoingArrowAnimator:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v2, v7}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    iget-object v2, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mOutgoingArrowAnimator:Landroid/view/animation/AlphaAnimation;

    iget v3, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->ANIMATION_DURATION:I

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    new-instance v2, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v2, v6, v8}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v2, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mIncomingArrowAnimator:Landroid/view/animation/AlphaAnimation;

    iget-object v2, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mIncomingArrowAnimator:Landroid/view/animation/AlphaAnimation;

    iget v3, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->ANIMATION_DURATION:I

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    iget-object v2, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mIncomingArrowAnimator:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v2, v7}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    new-array v2, v9, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mNewStepCircleScaleAnimator:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mNewStepCircleScaleAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Landroid/view/animation/interpolator/SineInOut80;

    invoke-direct {v3}, Landroid/view/animation/interpolator/SineInOut80;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v2, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mNewStepCircleScaleAnimator:Landroid/animation/ValueAnimator;

    iget v3, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->ANIMATION_DURATION:I

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mNewStepCircleScaleAnimator:Landroid/animation/ValueAnimator;

    iget v3, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->ANIMATION_DURATION:I

    div-int/lit8 v3, v3, 0x64

    iget v4, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->ARROW_STEPCIRCLE_THRESHOLD:I

    mul-int/2addr v3, v4

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-object v2, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mNewStepCircleScaleAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$1;

    invoke-direct {v3, p0}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$1;-><init>(Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v2, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mNewStepCircleScaleAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$2;

    invoke-direct {v3, p0}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$2;-><init>(Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d030f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0311

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    add-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->getResources()Landroid/content/res/Resources;

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

    iput-object v2, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mGreyListAnimator:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mGreyListAnimator:Landroid/animation/ValueAnimator;

    iget v3, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->ANIMATION_DURATION:I

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mGreyListAnimator:Landroid/animation/ValueAnimator;

    iget v3, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->ANIMATION_DURATION:I

    div-int/lit8 v3, v3, 0x64

    iget v4, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->ARROW_STEPCIRCLE_THRESHOLD:I

    mul-int/2addr v3, v4

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-object v2, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mGreyListAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$3;

    invoke-direct {v3, p0}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$3;-><init>(Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v2, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mGreyListAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$4;

    invoke-direct {v3, p0}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$4;-><init>(Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;)V

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

    const-string v0, "ChooseLockUniversal"

    const-string v1, "initializeDirectionView"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->_listener:Lcom/android/internal/widget/DirectionLockTouchListener;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/DirectionLockView;->setOnDirectionLockTouchListener(Lcom/android/internal/widget/DirectionLockTouchListener;)V

    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mUniversalLockSettingsHelper:Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;

    iget v1, v1, Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;->SETTINGS_ARROW_SIZE:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/DirectionLockView;->getDirectionImageView(I)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mDirectionImageView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v0}, Lcom/android/internal/widget/DirectionLockView;->setSettingsMode()V

    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mUniversalLockSettingsHelper:Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v0}, Lcom/android/internal/widget/DirectionLockView;->reloadBitmap()V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    iget-boolean v1, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->showArrow:Z

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/DirectionLockView;->setShowArrow(Z)V

    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    iget-boolean v1, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->playVoice:Z

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/DirectionLockView;->setPlayVoice(Z)V

    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    iget-boolean v1, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->playVibration:Z

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/DirectionLockView;->setPlayVibration(Z)V

    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    iget-boolean v1, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->playBeep:Z

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/DirectionLockView;->setPlayBeep(Z)V

    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/DirectionLockView;->setVisibility(I)V

    return-void
.end method

.method private initializing(Landroid/os/Bundle;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->freeUpMemory()V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->initializeIdentifiers()V

    invoke-direct {p0}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->loadCustomSettings()V

    invoke-direct {p0}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->initializeDirectionView()V

    invoke-direct {p0}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->loadDimensAndBitmap()V

    invoke-direct {p0}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->initializeAnimations()V

    invoke-direct {p0, p1}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->setInitialState(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->attachListeners()V

    const v0, 0x7f0a0a46

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->setTitle(I)V

    return-void
.end method

.method private loadCustomSettings()V
    .locals 5

    const/4 v4, -0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v0, "ChooseLockUniversal"

    const-string v3, "loadCustomSettings"

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mUniversalLockSettingsHelper:Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;->isTouchExplorationEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->getApplicationContext()Landroid/content/Context;

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
    iput-boolean v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->playVoice:Z

    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "universal_lock_beep"

    invoke-static {v0, v3, v2, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_1

    move v1, v2

    :cond_1
    iput-boolean v1, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->playBeep:Z

    iput-boolean v2, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->playVibration:Z

    iput-boolean v2, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->showArrow:Z

    return-void

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private loadDimensAndBitmap()V
    .locals 6

    const v4, 0x7f0d031e

    const v3, 0x7f0d031c

    const-string v1, "ChooseLockUniversal"

    const-string v2, "loadDimensAndBitmap()"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v1, 0x7f1000b3

    invoke-virtual {p0, v1}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mStepCircleLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d030f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->STEP_CIRCLE_SIZE:I

    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0311

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->STEP_CIRCLE_LEFT_MARGIN:I

    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0312

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->STEP_CIRCLE_RIGHT_MARGIN:I

    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mUniversalLockSettingsHelper:Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;->isMobileKeyboardCovered(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mHelpBitmapWidth:I

    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mHelpBitmapHeight:I

    :goto_0
    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mUniversalLockSettingsHelper:Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mUniversalLockSettingsHelper:Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020074

    iget v4, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mHelpBitmapWidth:I

    iget v5, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mHelpBitmapHeight:I

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;->getBitmapFromResource(Landroid/content/res/Resources;III)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mHelpBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mUniversalLockSettingsHelper:Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020075

    iget v4, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->STEP_CIRCLE_SIZE:I

    iget v5, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->STEP_CIRCLE_SIZE:I

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;->getBitmapFromResource(Landroid/content/res/Resources;III)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mStepCircleDown:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mUniversalLockSettingsHelper:Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020078

    iget v4, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->STEP_CIRCLE_SIZE:I

    iget v5, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->STEP_CIRCLE_SIZE:I

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;->getBitmapFromResource(Landroid/content/res/Resources;III)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mStepCircleUp:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mUniversalLockSettingsHelper:Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020076

    iget v4, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->STEP_CIRCLE_SIZE:I

    iget v5, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->STEP_CIRCLE_SIZE:I

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;->getBitmapFromResource(Landroid/content/res/Resources;III)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mStepCircleLeft:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mUniversalLockSettingsHelper:Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020077

    iget v4, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->STEP_CIRCLE_SIZE:I

    iget v5, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->STEP_CIRCLE_SIZE:I

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;->getBitmapFromResource(Landroid/content/res/Resources;III)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mStepCircleRight:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mUniversalLockSettingsHelper:Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;

    invoke-virtual {v1}, Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;->isAMOLEDSupport()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900e4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mUniversalLockSettingsHelper:Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;

    iget-object v2, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mStepCircleDown:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2, v0}, Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;->changeBitmapColor(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mStepCircleDown:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mUniversalLockSettingsHelper:Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;

    iget-object v2, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mStepCircleUp:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2, v0}, Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;->changeBitmapColor(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mStepCircleUp:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mUniversalLockSettingsHelper:Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;

    iget-object v2, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mStepCircleLeft:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2, v0}, Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;->changeBitmapColor(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mStepCircleLeft:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mUniversalLockSettingsHelper:Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;

    iget-object v2, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mStepCircleRight:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2, v0}, Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;->changeBitmapColor(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mStepCircleRight:Landroid/graphics/Bitmap;

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02005c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mGreyCircleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02005b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mGreenCircleDrawable:Landroid/graphics/drawable/Drawable;

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mHelpBitmapWidth:I

    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mHelpBitmapHeight:I

    goto/16 :goto_0
.end method

.method private partialInputCheck()Z
    .locals 5

    const/4 v4, 0x0

    const-string v2, "ChooseLockUniversal"

    const-string v3, "partialInputCheck"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v2}, Lcom/android/internal/widget/DirectionLockView;->getCurrentPassword()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v3, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mFirstPassword:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-gt v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mFirstPassword:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    if-nez v1, :cond_2

    invoke-direct {p0}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->clearStepCircles()V

    iget-object v2, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v2}, Lcom/android/internal/widget/DirectionLockView;->showErrorImage()V

    iget-object v2, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mDirectionImageView:Landroid/widget/ImageView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mDirectionImageView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mIncomingArrowAnimator:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    iget-object v2, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v2}, Lcom/android/internal/widget/DirectionLockView;->resetPassword()V

    iget-object v2, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mRightButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v3, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mFirstPassword:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v2, v3, :cond_3

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mRightButton:Landroid/widget/Button;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_3
    return v1
.end method

.method private performAnimations()V
    .locals 2

    const-string v0, "ChooseLockUniversal"

    const-string v1, "performAnimations"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mDirectionImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mDirectionImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mIncomingArrowAnimator:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mCurrentScreenStage:Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$ScreenStage;

    sget-object v1, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$ScreenStage;->ENTER_DIRECTION_SCREEN:Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$ScreenStage;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mNewStepCircleScaleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mGreyStepCircleList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mGreyListAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_1
    return-void
.end method

.method private setDefaultInitState()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mRightButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    sget-object v0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$ScreenStage;->ENTER_DIRECTION_SCREEN:Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$ScreenStage;

    iput-object v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mCurrentScreenStage:Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$ScreenStage;

    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mDirectionImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mHelpBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    const-string v0, "ChooseLockUniversal"

    const-string v1, "Setting with help image initially"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mDirectionImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mHelpBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method private setInitialState(Landroid/os/Bundle;)V
    .locals 11

    const v10, 0x7f0d000c

    const v6, 0x7f0a0a47

    const/4 v9, 0x1

    const/4 v8, -0x2

    const/4 v7, 0x0

    const-string v3, "ChooseLockUniversal"

    const-string v4, "setInitialState"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mHeaderTextView:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v3, v4, v7, v5, v7}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    iget-object v3, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mUniversalLockSettingsHelper:Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;

    invoke-virtual {v3}, Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;->isTouchExplorationEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->setTalkbackDimens()V

    iget-object v3, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mHeaderTextView:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0a1521

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mUniversalLockSettingsHelper:Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;

    invoke-virtual {v3}, Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_9

    if-eqz p1, :cond_7

    iget-object v3, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mUniversalLockSettingsHelper:Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;

    const-string v3, "current_generated_password"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x8

    if-lt v3, v4, :cond_1

    iget-object v3, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v3, v7}, Lcom/android/internal/widget/DirectionLockView;->setEnabled(Z)V

    :cond_1
    iget-object v3, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mUniversalLockSettingsHelper:Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;

    const-string v3, "screen_state"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_3

    sget-object v3, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$ScreenStage;->ENTER_DIRECTION_SCREEN:Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$ScreenStage;

    :goto_1
    iput-object v3, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mCurrentScreenStage:Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$ScreenStage;

    iget-object v3, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mHeaderTextView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mUniversalLockSettingsHelper:Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;

    const-string v4, "header_text_content"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, ""

    iget-object v3, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v3, v2}, Lcom/android/internal/widget/DirectionLockView;->setCurrentPassword(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_4

    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :goto_3
    invoke-direct {p0, v0, v9}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->handleStepCircle(Ljava/lang/String;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    iget-object v3, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    sget-object v3, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$ScreenStage;->CONFIRM_DIRECTION_SCREEN:Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$ScreenStage;

    goto :goto_1

    :sswitch_0
    const-string v0, "UP"

    goto :goto_3

    :sswitch_1
    const-string v0, "RIGHT"

    goto :goto_3

    :sswitch_2
    const-string v0, "DOWN"

    goto :goto_3

    :sswitch_3
    const-string v0, "LEFT"

    goto :goto_3

    :cond_4
    iget-object v3, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mLeftButton:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mUniversalLockSettingsHelper:Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;

    const-string v4, "left_button_state"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v3, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mRightButton:Landroid/widget/Button;

    iget-object v4, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mUniversalLockSettingsHelper:Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;

    const-string v4, "right_button_state"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v3, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mCurrentScreenStage:Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$ScreenStage;

    sget-object v4, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$ScreenStage;->CONFIRM_DIRECTION_SCREEN:Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$ScreenStage;

    if-ne v3, v4, :cond_8

    iget-object v3, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mRightButton:Landroid/widget/Button;

    const v4, 0x7f0a0a57

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(I)V

    iget-object v3, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mUniversalLockSettingsHelper:Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;

    const-string v3, "first_entered_password"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mFirstPassword:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mNewStepCircle:Landroid/widget/ImageView;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mGreyStepCircleList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mNewStepCircle:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    :goto_4
    iget-object v3, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mFirstPassword:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_8

    new-instance v3, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mOldStepCircle:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mOldStepCircle:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mGreyCircleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->stepCircleLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    if-nez v3, :cond_6

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput-object v3, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->stepCircleLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    :cond_6
    iget-object v3, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->stepCircleLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    iget v4, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->STEP_CIRCLE_LEFT_MARGIN:I

    iget v5, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->STEP_CIRCLE_RIGHT_MARGIN:I

    invoke-virtual {v3, v4, v7, v5, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iget-object v3, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mOldStepCircle:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->stepCircleLayoutParams:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mGreyStepCircleList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mOldStepCircle:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mStepCircleLayout:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mOldStepCircle:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_7
    invoke-direct {p0}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->setDefaultInitState()V

    :cond_8
    :goto_5
    return-void

    :cond_9
    invoke-virtual {p0, v9}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->setRequestedOrientation(I)V

    invoke-direct {p0}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->setDefaultInitState()V

    goto :goto_5

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

    const-string v0, "ChooseLockUniversal"

    const-string v1, "setTalkbackDimens"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mHeaderTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mUniversalLockSettingsHelper:Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;

    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method


# virtual methods
.method initializeIdentifiers()V
    .locals 4

    const v3, 0x10809a3

    const-string v0, "ChooseLockUniversal"

    const-string v1, "initializeIdentifiers"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;

    invoke-direct {v0, p0}, Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mUniversalLockSettingsHelper:Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;

    const v0, 0x7f1000b0

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/DirectionLockView;

    iput-object v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    const v0, 0x7f1000b6

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mRightButton:Landroid/widget/Button;

    const v0, 0x7f1000b5

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "show_button_background"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mRightButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mGreyStepCircleList:Ljava/util/ArrayList;

    const v0, 0x7f10009e

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mHeaderTextView:Landroid/widget/TextView;

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "ChooseLockUniversal"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f04003f

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->setContentView(I)V

    invoke-direct {p0, p1}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->initializing(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    const-string v0, "ChooseLockUniversal"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->freeUpMemory()V

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const-string v1, "ChooseLockUniversal"

    const-string v2, "onResume"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;->applyLandscapeFullScreen(Landroid/content/Context;Landroid/view/Window;)V

    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mUniversalLockSettingsHelper:Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;->isMobileKeyboardCovered(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "ChooseLockUniversal"

    const-string v2, "Mobile Keyboard attached, changing the height of DirectionView"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v1}, Lcom/android/internal/widget/DirectionLockView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0315

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/DirectionLockView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "ChooseLockUniversal"

    const-string v1, "onSaveInstanceState"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->endOngoingAnimations()V

    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mUniversalLockSettingsHelper:Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;

    const-string v0, "current_generated_password"

    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;

    invoke-virtual {v1}, Lcom/android/internal/widget/DirectionLockView;->getCurrentPassword()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mUniversalLockSettingsHelper:Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;

    const-string v0, "header_text_content"

    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mUniversalLockSettingsHelper:Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;

    const-string v1, "screen_state"

    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mCurrentScreenStage:Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$ScreenStage;

    sget-object v2, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$ScreenStage;->ENTER_DIRECTION_SCREEN:Lcom/android/settings/accessibility/universallock/ChooseLockUniversal$ScreenStage;

    if-ne v0, v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mUniversalLockSettingsHelper:Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;

    const-string v0, "left_button_state"

    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->isEnabled()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mUniversalLockSettingsHelper:Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;

    const-string v0, "right_button_state"

    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mLeftButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->isEnabled()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mUniversalLockSettingsHelper:Lcom/android/settings/accessibility/universallock/UniversalLockSettingsHelper;

    const-string v0, "first_entered_password"

    iget-object v1, p0, Lcom/android/settings/accessibility/universallock/ChooseLockUniversal;->mFirstPassword:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

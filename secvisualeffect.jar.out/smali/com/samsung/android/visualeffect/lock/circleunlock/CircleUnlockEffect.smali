.class public Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;
.super Landroid/widget/FrameLayout;
.source "CircleUnlockEffect.java"

# interfaces
.implements Lcom/samsung/android/visualeffect/IEffectView;


# instance fields
.field private final ARROW_ANIMATION_DURATION:I

.field private final DBG:Z

.field private final IN_ANIMATION_DURATION:I

.field private final IN_ANIMATION_DURATION_FOR_AFFORDANCE:I

.field private final OUT_ANIMATION_DURATION:I

.field private final OUT_ANIMATION_DURATION_FOR_AFFORDANCE:I

.field private final SHOWING_DURATION_FOR_AFFORDANCE:I

.field private final TAG:Ljava/lang/String;

.field private affordanceX:F

.field private affordanceY:F

.field private arrow:Landroid/widget/ImageView;

.field private arrowAlphaMax:F

.field private arrowAnimationToggle:Z

.field private arrowAnimator:Landroid/animation/ValueAnimator;

.field private arrowForButton:Landroid/widget/ImageView;

.field private arrowForButtonId:I

.field private arrowImageId:I

.field private arrowWidth:I

.field private circle:Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockCircle;

.field private circleAnimationMax:F

.field private circleAnimationMin:F

.field private circleGroup:Landroid/widget/FrameLayout;

.field private circleInAnimator:Landroid/animation/ValueAnimator;

.field private circleOutAnimator:Landroid/animation/ValueAnimator;

.field private circleUnlockMaxHeight:I

.field private circleUnlockMaxRadius:I

.field private circleUnlockMaxWidth:I

.field private circleUnlockMinRadius:I

.field private circleUnlockMinWidth:I

.field private currentLockSequenceNumber:I

.field private dragAnimationValue:F

.field private fillAnimationValueMax:F

.field private hasNoOuterCircle:Z

.field private innerStrokeWidth:I

.field private isForAffordance:Z

.field private isForShortcut:Z

.field private isShowSwipeCircle:Z

.field private isStroke:Z

.field private isUnlocked:Z

.field private lockImageView:Landroid/widget/ImageView;

.field private lockSequenceImageId:[I

.field private lockSequenceTotal:I

.field private mContext:Landroid/content/Context;

.field private minWidthOffset:I

.field private outerStrokeWidth:I

.field private startX:F

.field private startY:F

.field private strokeAnimationValue:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    const/16 v4, 0x29a

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const-string v0, "VisualEffectCircleUnlockEffect"

    iput-object v0, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->TAG:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->DBG:Z

    iput v4, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->IN_ANIMATION_DURATION:I

    const/16 v0, 0x14d

    iput v0, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->OUT_ANIMATION_DURATION:I

    const/16 v0, 0x1f4

    iput v0, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->ARROW_ANIMATION_DURATION:I

    const/16 v0, -0xc8

    iput v0, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->SHOWING_DURATION_FOR_AFFORDANCE:I

    iput v4, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->IN_ANIMATION_DURATION_FOR_AFFORDANCE:I

    const/16 v0, 0x2bc

    iput v0, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->OUT_ANIMATION_DURATION_FOR_AFFORDANCE:I

    iput v1, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->currentLockSequenceNumber:I

    iput v2, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->circleAnimationMin:F

    iput v2, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->dragAnimationValue:F

    iput v2, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->strokeAnimationValue:F

    iput-boolean v3, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->isStroke:Z

    iput-boolean v1, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->isUnlocked:Z

    iput-boolean v1, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->isForShortcut:Z

    iput-boolean v1, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->isForAffordance:Z

    iput-boolean v3, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->isShowSwipeCircle:Z

    iput-boolean v1, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->arrowAnimationToggle:Z

    const-string v0, "VisualEffectCircleUnlockEffect"

    const-string v1, "Constructor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->strokeAnimationValue:F

    return v0
.end method

.method static synthetic access$002(Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;F)F
    .locals 0

    iput p1, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->strokeAnimationValue:F

    return p1
.end method

.method static synthetic access$100(Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->circleAnimationMin:F

    return v0
.end method

.method static synthetic access$1000(Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->checkIsWhiteBg()V

    return-void
.end method

.method static synthetic access$1100(Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->checkPosition()V

    return-void
.end method

.method static synthetic access$1200(Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->circleAnimationMax:F

    return v0
.end method

.method static synthetic access$1300(Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->setImageInLockImageView(F)V

    return-void
.end method

.method static synthetic access$1400(Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->arrowAlphaMax:F

    return v0
.end method

.method static synthetic access$1500(Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->arrow:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->arrowForButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->cancelAllAnimator()V

    return-void
.end method

.method static synthetic access$1800(Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->arrowAnimationToggle:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->arrowAnimationToggle:Z

    return p1
.end method

.method static synthetic access$200(Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;)Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->circleGroup:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;Landroid/view/View;F)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->setAlphaAndVisibility(Landroid/view/View;F)V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->hasNoOuterCircle:Z

    return v0
.end method

.method static synthetic access$500(Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->isForShortcut:Z

    return v0
.end method

.method static synthetic access$600(Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->isForAffordance:Z

    return v0
.end method

.method static synthetic access$700(Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->dragAnimationValue:F

    return v0
.end method

.method static synthetic access$702(Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;F)F
    .locals 0

    iput p1, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->dragAnimationValue:F

    return p1
.end method

.method static synthetic access$800(Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;)F
    .locals 1

    iget v0, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->fillAnimationValueMax:F

    return v0
.end method

.method static synthetic access$802(Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;F)F
    .locals 0

    iput p1, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->fillAnimationValueMax:F

    return p1
.end method

.method static synthetic access$900(Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;)Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockCircle;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->circle:Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockCircle;

    return-object v0
.end method

.method private cancelAllAnimator()V
    .locals 2

    const-string v0, "VisualEffectCircleUnlockEffect"

    const-string v1, "cancelAllAnimator"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->resetAnimatorAfterAffordance()V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->circleInAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->cancelAnimator(Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->circleOutAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->cancelAnimator(Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->arrowAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->cancelAnimator(Landroid/animation/Animator;)V

    return-void
.end method

.method private cancelAnimator(Landroid/animation/Animator;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    :cond_0
    return-void
.end method

.method private changeModeForCircleUnlock()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->lockImageView:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->setAlphaAndVisibility(Landroid/view/View;F)V

    iput-boolean v2, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->isForShortcut:Z

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->circle:Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockCircle;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->arrowWidth:I

    iget v1, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->innerStrokeWidth:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x4

    iput v0, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->circleUnlockMinWidth:I

    iget v0, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->circleUnlockMinWidth:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->circleUnlockMinRadius:I

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->circle:Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockCircle;

    iget v1, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->circleUnlockMinWidth:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockCircle;->setCircleMinWidth(I)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->circle:Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockCircle;

    iget-boolean v1, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->isForShortcut:Z

    invoke-virtual {v0, v1}, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockCircle;->setIsForShortcut(Z)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->circle:Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockCircle;

    invoke-virtual {v0, v3}, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockCircle;->setOuterCircleType(Z)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->circle:Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockCircle;

    invoke-virtual {v0, v3}, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockCircle;->showSwipeCircleEffect(Z)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->arrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->arrowForButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->arrowForButton:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private changeModeForShorcutButton(I)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->lockImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->setAlphaAndVisibility(Landroid/view/View;F)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->isForShortcut:Z

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->circle:Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockCircle;

    if-eqz v0, :cond_0

    add-int/lit8 v0, p1, -0x4

    iget v1, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->minWidthOffset:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->circleUnlockMinWidth:I

    iget v0, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->circleUnlockMinWidth:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->circleUnlockMinRadius:I

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->circle:Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockCircle;

    iget v1, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->circleUnlockMinWidth:I

    invoke-virtual {v0, v1}, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockCircle;->setCircleMinWidth(I)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->circle:Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockCircle;

    iget-boolean v1, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->isForShortcut:Z

    invoke-virtual {v0, v1}, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockCircle;->setIsForShortcut(Z)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->circle:Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockCircle;

    iget-boolean v1, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->isStroke:Z

    invoke-virtual {v0, v1}, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockCircle;->setOuterCircleType(Z)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->circle:Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockCircle;

    iget-boolean v1, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->isShowSwipeCircle:Z

    invoke-virtual {v0, v1}, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockCircle;->showSwipeCircleEffect(Z)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->arrowForButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->arrow:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->arrowForButton:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private checkIsWhiteBg()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "white_lockscreen_wallpaper"

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const-string v1, "VisualEffectCircleUnlockEffect"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "whiteValue : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v0, v5, :cond_0

    invoke-direct {p0, v5}, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->setIsWhiteBg(Z)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, v4}, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->setIsWhiteBg(Z)V

    goto :goto_0
.end method

.method private checkPosition()V
    .locals 5

    iget-object v2, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->circle:Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockCircle;

    iget v3, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->circleUnlockMinWidth:I

    invoke-virtual {v2, v3}, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockCircle;->setCircleMinWidth(I)V

    const-string v2, "VisualEffectCircleUnlockEffect"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkPosition : circleUnlockMinWidth = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->circleUnlockMinWidth:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->arrow:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->circleUnlockMaxWidth:I

    iget-object v3, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->arrow:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v0, v2, 0x2

    iget v2, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->circleUnlockMaxHeight:I

    iget-object v3, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->arrow:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v1, v2, 0x2

    iget-object v2, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->arrow:Landroid/widget/ImageView;

    int-to-float v3, v0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setX(F)V

    iget-object v2, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->arrow:Landroid/widget/ImageView;

    int-to-float v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setY(F)V

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->lockImageView:Landroid/widget/ImageView;

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->circleUnlockMaxWidth:I

    iget-object v3, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->lockImageView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v0, v2, 0x2

    iget v2, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->circleUnlockMaxHeight:I

    iget-object v3, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->lockImageView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v1, v2, 0x2

    iget-object v2, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->lockImageView:Landroid/widget/ImageView;

    int-to-float v3, v0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setX(F)V

    iget-object v2, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->lockImageView:Landroid/widget/ImageView;

    int-to-float v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setY(F)V

    :cond_1
    iget-object v2, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->arrowForButton:Landroid/widget/ImageView;

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->circleUnlockMaxWidth:I

    iget-object v3, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->arrowForButton:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v0, v2, 0x2

    iget v2, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->circleUnlockMaxHeight:I

    iget-object v3, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->arrowForButton:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v1, v2, 0x2

    iget-object v2, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->arrowForButton:Landroid/widget/ImageView;

    int-to-float v3, v0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setX(F)V

    iget-object v2, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->arrowForButton:Landroid/widget/ImageView;

    int-to-float v3, v1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setY(F)V

    :cond_2
    return-void
.end method

.method private clearEffect()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "VisualEffectCircleUnlockEffect"

    const-string v1, "clearEffect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->arrowAnimationToggle:Z

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->circleGroup:Landroid/widget/FrameLayout;

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->setAlphaAndVisibility(Landroid/view/View;F)V

    invoke-direct {p0}, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->cancelAllAnimator()V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->circle:Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockCircle;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->circle:Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockCircle;

    invoke-virtual {v0, v2}, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockCircle;->dragAnimationUpdate(F)V

    :cond_0
    return-void
.end method

.method private reloadResForOpenTheme()V
    .locals 3

    const-string v1, "VisualEffectCircleUnlockEffect"

    const-string v2, "reloadResForOpenTheme"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->arrowImageId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->arrow:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private resetAnimatorAfterAffordance()V
    .locals 6

    const-wide/16 v4, 0x0

    iget-boolean v0, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->isForAffordance:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->isForAffordance:Z

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->circleInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->circleInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->circleInAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x29a

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->circleInAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/interpolator/QuintEaseOut;

    invoke-direct {v1}, Landroid/view/animation/interpolator/QuintEaseOut;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->circleOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->circleOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->circleOutAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x14d

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->circleOutAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/interpolator/QuintEaseOut;

    invoke-direct {v1}, Landroid/view/animation/interpolator/QuintEaseOut;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto :goto_0
.end method

.method private setAlphaAndVisibility(Landroid/view/View;F)V
    .locals 2

    const/16 v0, 0x8

    const/4 v1, 0x0

    cmpl-float v1, p2, v1

    if-nez v1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x4

    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0
.end method

.method private setAnimator()V
    .locals 4

    const/4 v2, 0x2

    new-array v0, v2, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->circleInAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->circleInAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect$1;-><init>(Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->circleInAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect$2;-><init>(Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-array v0, v2, [F

    fill-array-data v0, :array_1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->circleOutAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->circleOutAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect$3;-><init>(Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->circleOutAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect$4;-><init>(Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-direct {p0}, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->resetAnimatorAfterAffordance()V

    new-array v0, v2, [F

    fill-array-data v0, :array_2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->arrowAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->arrowAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->arrowAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->arrowAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->arrowAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect$5;

    invoke-direct {v1, p0}, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect$5;-><init>(Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->arrowAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect$6;

    invoke-direct {v1, p0}, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect$6;-><init>(Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private setArrowForButton(I)V
    .locals 3

    const/4 v2, -0x2

    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->arrowForButton:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->arrowForButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->circleGroup:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->arrowForButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v2, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    return-void
.end method

.method private setCircleGroupXY(FF)V
    .locals 4

    const/high16 v3, 0x40000000    # 2.0f

    iget v2, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->circleUnlockMaxWidth:I

    int-to-float v2, v2

    div-float/2addr v2, v3

    sub-float v0, p1, v2

    iget v2, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->circleUnlockMaxHeight:I

    int-to-float v2, v2

    div-float/2addr v2, v3

    sub-float v1, p2, v2

    iget-object v2, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->circleGroup:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setX(F)V

    iget-object v2, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->circleGroup:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setY(F)V

    return-void
.end method

.method private setImageInLockImageView(F)V
    .locals 3

    iget v1, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->lockSequenceTotal:I

    add-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    float-to-int v0, v1

    iget v1, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->currentLockSequenceNumber:I

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->lockImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->lockSequenceImageId:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iput v0, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->currentLockSequenceNumber:I

    :cond_0
    return-void
.end method

.method private setIsWhiteBg(Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->circle:Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockCircle;

    invoke-virtual {v0, p1}, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockCircle;->setIsWhiteBg(Z)V

    return-void
.end method

.method private setLayout()V
    .locals 10

    const/4 v9, 0x0

    const/4 v8, -0x2

    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->circleGroup:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->circleGroup:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v9}, Landroid/widget/FrameLayout;->setLayoutDirection(I)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->circleGroup:Landroid/widget/FrameLayout;

    iget v1, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->circleUnlockMaxWidth:I

    iget v2, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->circleUnlockMaxHeight:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->addView(Landroid/view/View;II)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->circleGroup:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->setAlphaAndVisibility(Landroid/view/View;F)V

    new-instance v0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockCircle;

    iget-object v1, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->circleUnlockMaxWidth:I

    iget v3, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->circleUnlockMinWidth:I

    iget v4, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->outerStrokeWidth:I

    iget v5, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->innerStrokeWidth:I

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockCircle;-><init>(Landroid/content/Context;IIII)V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->circle:Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockCircle;

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->circleGroup:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->circle:Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockCircle;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->arrow:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->arrowImageId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->arrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->circleGroup:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->arrow:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v8, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    new-instance v7, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v7}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, v7, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-virtual {p0}, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->arrowImageId:I

    invoke-static {v0, v1, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v0, v7, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v0, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->arrowWidth:I

    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->lockImageView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->lockImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->lockSequenceImageId:[I

    aget v1, v1, v9

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->circleGroup:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->lockImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v8, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    return-void
.end method

.method private setOuterCircleType(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->isStroke:Z

    return-void
.end method

.method private showAffordanceEffect(JLandroid/graphics/Rect;)V
    .locals 5

    const/high16 v3, 0x40000000    # 2.0f

    const-string v0, "VisualEffectCircleUnlockEffect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showUnlockAffordance : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p3, Landroid/graphics/Rect;->right:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", startDelay : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p3, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget v1, p3, Landroid/graphics/Rect;->right:I

    iget v2, p3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v1, v3

    add-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->affordanceX:F

    iget v0, p3, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iget v1, p3, Landroid/graphics/Rect;->bottom:I

    iget v2, p3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v1, v3

    add-float/2addr v0, v1

    iput v0, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->affordanceY:F

    iget v0, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->affordanceX:F

    iget v1, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->affordanceY:F

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->startAnimatorForAffordance(JFF)V

    return-void
.end method

.method private showSwipeCircleEffect(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->isShowSwipeCircle:Z

    return-void
.end method

.method private startAnimatorForAffordance(JFF)V
    .locals 9

    const-wide/16 v6, 0x29a

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    iget-boolean v2, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->isForAffordance:Z

    if-eqz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->isForAffordance:Z

    invoke-direct {p0}, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->changeModeForCircleUnlock()V

    iput v3, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->dragAnimationValue:F

    iput v3, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->strokeAnimationValue:F

    iput v3, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->fillAnimationValueMax:F

    iput v3, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->circleAnimationMin:F

    iput v4, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->circleAnimationMax:F

    iput v4, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->arrowAlphaMax:F

    iget-object v2, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->circle:Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockCircle;

    iget v3, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->dragAnimationValue:F

    invoke-virtual {v2, v3}, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockCircle;->dragAnimationUpdate(F)V

    iget v2, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->dragAnimationValue:F

    invoke-direct {p0, v2}, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->setImageInLockImageView(F)V

    iget-object v2, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->arrow:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v2, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->arrowForButton:Landroid/widget/ImageView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->arrowForButton:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    :cond_1
    invoke-direct {p0, p3, p4}, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->setCircleGroupXY(FF)V

    iget-object v2, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->circleInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, p1, p2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-object v2, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->circleInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->circleInAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Landroid/view/animation/interpolator/QuintEaseOut;

    invoke-direct {v3}, Landroid/view/animation/interpolator/QuintEaseOut;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v2, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->circleInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    add-long v2, p1, v6

    const-wide/16 v4, -0xc8

    add-long v0, v2, v4

    iget-object v2, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->circleOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v0, v1}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-object v2, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->circleOutAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v4, 0x2bc

    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->circleOutAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Landroid/view/animation/interpolator/QuintEaseIn;

    invoke-direct {v3}, Landroid/view/animation/interpolator/QuintEaseIn;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v2, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->circleOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0
.end method

.method private unlock()V
    .locals 2

    const-string v0, "VisualEffectCircleUnlockEffect"

    const-string v1, "unlock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->isUnlocked:Z

    invoke-direct {p0}, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->cancelAllAnimator()V

    return-void
.end method


# virtual methods
.method public clearScreen()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->clearEffect()V

    return-void
.end method

.method public handleCustomEvent(ILjava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap",
            "<**>;)V"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const-string v0, "StartDelay"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-string v0, "Rect"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    invoke-direct {p0, v2, v3, v0}, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->showAffordanceEffect(JLandroid/graphics/Rect;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->unlock()V

    goto :goto_0

    :cond_2
    const/16 v0, 0x63

    if-ne p1, v0, :cond_0

    const-string v0, "setOuterCircleType"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v0, "setOuterCircleType"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->setOuterCircleType(Z)V

    goto :goto_0

    :cond_3
    const-string v0, "showSwipeCircleEffect"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v0, "showSwipeCircleEffect"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->showSwipeCircleEffect(Z)V

    goto :goto_0

    :cond_4
    const-string v0, "reloadResForOpenTheme"

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->reloadResForOpenTheme()V

    goto :goto_0
.end method

.method public handleTouchEvent(Landroid/view/MotionEvent;Landroid/view/View;)V
    .locals 16

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v9

    if-nez v9, :cond_0

    if-eqz p2, :cond_2

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v9

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->changeModeForShorcutButton(I)V

    :cond_0
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v7

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v8

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v9

    if-nez v9, :cond_5

    const-string v9, "VisualEffectCircleUnlockEffect"

    const-string v10, "handleTouchEvent : ACTION_DOWN"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->isUnlocked:Z

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->isForShortcut:Z

    if-eqz v9, :cond_3

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    iget v9, v5, Landroid/graphics/Rect;->left:I

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v9, v10

    int-to-float v9, v9

    move-object/from16 v0, p0

    iput v9, v0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->startX:F

    iget v9, v5, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v9, v10

    int-to-float v9, v9

    move-object/from16 v0, p0

    iput v9, v0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->startY:F

    :goto_1
    const/4 v9, 0x0

    move-object/from16 v0, p0

    iput-boolean v9, v0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->arrowAnimationToggle:Z

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->cancelAllAnimator()V

    move-object/from16 v0, p0

    iget v9, v0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->startX:F

    move-object/from16 v0, p0

    iget v10, v0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->startY:F

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v10}, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->setCircleGroupXY(FF)V

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->circleInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v9}, Landroid/animation/ValueAnimator;->start()V

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->hasNoOuterCircle:Z

    if-eqz v9, :cond_4

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->isForShortcut:Z

    if-nez v9, :cond_4

    :cond_1
    :goto_2
    return-void

    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->changeModeForCircleUnlock()V

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    iput v7, v0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->startX:F

    move-object/from16 v0, p0

    iput v8, v0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->startY:F

    goto :goto_1

    :cond_4
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->arrowAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v9}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_2

    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_8

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v9

    if-nez v9, :cond_8

    move-object/from16 v0, p0

    iget v9, v0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->startX:F

    sub-float v2, v7, v9

    move-object/from16 v0, p0

    iget v9, v0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->startY:F

    sub-float v3, v8, v9

    float-to-double v10, v2

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    float-to-double v12, v3

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    add-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    double-to-float v4, v10

    move-object/from16 v0, p0

    iget v9, v0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->circleUnlockMinRadius:I

    int-to-float v9, v9

    sub-float v9, v4, v9

    move-object/from16 v0, p0

    iget v10, v0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->circleUnlockMaxRadius:I

    move-object/from16 v0, p0

    iget v11, v0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->circleUnlockMinRadius:I

    sub-int/2addr v10, v11

    int-to-float v10, v10

    div-float v6, v9, v10

    const/4 v9, 0x0

    cmpg-float v9, v6, v9

    if-gez v9, :cond_6

    const/4 v6, 0x0

    :cond_6
    const/high16 v9, 0x3f800000    # 1.0f

    cmpl-float v9, v6, v9

    if-lez v9, :cond_7

    const/high16 v6, 0x3f800000    # 1.0f

    :cond_7
    move-object/from16 v0, p0

    iput v6, v0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->dragAnimationValue:F

    move-object/from16 v0, p0

    iget v9, v0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->dragAnimationValue:F

    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->setImageInLockImageView(F)V

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->circle:Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockCircle;

    move-object/from16 v0, p0

    iget v10, v0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->dragAnimationValue:F

    invoke-virtual {v9, v10}, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockCircle;->dragAnimationUpdate(F)V

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->isForAffordance:Z

    if-nez v9, :cond_1

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->hasNoOuterCircle:Z

    if-eqz v9, :cond_1

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->isForShortcut:Z

    if-nez v9, :cond_1

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->circle:Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockCircle;

    move-object/from16 v0, p0

    iget v10, v0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->dragAnimationValue:F

    invoke-virtual {v9, v10}, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockCircle;->strokeAnimationUpdate(F)V

    goto/16 :goto_2

    :cond_8
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v9

    const/4 v10, 0x1

    if-eq v9, v10, :cond_9

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v9

    const/4 v10, 0x3

    if-ne v9, v10, :cond_1

    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->cancelAllAnimator()V

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->isForAffordance:Z

    if-nez v9, :cond_a

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->hasNoOuterCircle:Z

    if-eqz v9, :cond_a

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->isForShortcut:Z

    if-nez v9, :cond_a

    move-object/from16 v0, p0

    iget v9, v0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->dragAnimationValue:F

    move-object/from16 v0, p0

    iput v9, v0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->circleAnimationMax:F

    :goto_3
    move-object/from16 v0, p0

    iget v9, v0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->dragAnimationValue:F

    move-object/from16 v0, p0

    iput v9, v0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->fillAnimationValueMax:F

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->arrow:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getAlpha()F

    move-result v9

    move-object/from16 v0, p0

    iput v9, v0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->arrowAlphaMax:F

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->isUnlocked:Z

    if-nez v9, :cond_1

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->circleOutAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v9}, Landroid/animation/ValueAnimator;->start()V

    goto/16 :goto_2

    :cond_a
    move-object/from16 v0, p0

    iget v9, v0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->strokeAnimationValue:F

    move-object/from16 v0, p0

    iput v9, v0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->circleAnimationMax:F

    goto :goto_3
.end method

.method public init(Lcom/samsung/android/visualeffect/EffectDataObj;)V
    .locals 3

    iget-object v0, p1, Lcom/samsung/android/visualeffect/EffectDataObj;->circleData:Lcom/samsung/android/visualeffect/lock/data/CircleData;

    if-nez v0, :cond_0

    const-string v0, "VisualEffectCircleUnlockEffect"

    const-string v1, "circleData is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p1, Lcom/samsung/android/visualeffect/EffectDataObj;->circleData:Lcom/samsung/android/visualeffect/lock/data/CircleData;

    iget v0, v0, Lcom/samsung/android/visualeffect/lock/data/CircleData;->arrowId:I

    iput v0, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->arrowImageId:I

    iget-object v0, p1, Lcom/samsung/android/visualeffect/EffectDataObj;->circleData:Lcom/samsung/android/visualeffect/lock/data/CircleData;

    iget v0, v0, Lcom/samsung/android/visualeffect/lock/data/CircleData;->circleUnlockMaxWidth:I

    iput v0, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->circleUnlockMaxWidth:I

    iget-object v0, p1, Lcom/samsung/android/visualeffect/EffectDataObj;->circleData:Lcom/samsung/android/visualeffect/lock/data/CircleData;

    iget v0, v0, Lcom/samsung/android/visualeffect/lock/data/CircleData;->outerStrokeWidth:I

    iput v0, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->outerStrokeWidth:I

    iget-object v0, p1, Lcom/samsung/android/visualeffect/EffectDataObj;->circleData:Lcom/samsung/android/visualeffect/lock/data/CircleData;

    iget v0, v0, Lcom/samsung/android/visualeffect/lock/data/CircleData;->innerStrokeWidth:I

    iput v0, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->innerStrokeWidth:I

    iget-object v0, p1, Lcom/samsung/android/visualeffect/EffectDataObj;->circleData:Lcom/samsung/android/visualeffect/lock/data/CircleData;

    iget-boolean v0, v0, Lcom/samsung/android/visualeffect/lock/data/CircleData;->hasNoOuterCircle:Z

    iput-boolean v0, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->hasNoOuterCircle:Z

    iget v0, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->circleUnlockMaxWidth:I

    iput v0, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->circleUnlockMaxHeight:I

    iget v0, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->circleUnlockMinWidth:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->circleUnlockMinRadius:I

    iget v0, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->circleUnlockMaxWidth:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->circleUnlockMaxRadius:I

    iget-object v0, p1, Lcom/samsung/android/visualeffect/EffectDataObj;->circleData:Lcom/samsung/android/visualeffect/lock/data/CircleData;

    iget-object v0, v0, Lcom/samsung/android/visualeffect/lock/data/CircleData;->lockSequenceImageId:[I

    iput-object v0, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->lockSequenceImageId:[I

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->lockSequenceImageId:[I

    array-length v0, v0

    iput v0, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->lockSequenceTotal:I

    const-string v0, "VisualEffectCircleUnlockEffect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "arrowImageId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->arrowImageId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "VisualEffectCircleUnlockEffect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "circleUnlockMaxWidth = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->circleUnlockMaxWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "VisualEffectCircleUnlockEffect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "outerStrokeWidth = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->outerStrokeWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "VisualEffectCircleUnlockEffect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "innerStrokeWidth = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->innerStrokeWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "VisualEffectCircleUnlockEffect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hasNoOuterCircle = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->hasNoOuterCircle:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "VisualEffectCircleUnlockEffect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lockSequenceTotal = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->lockSequenceTotal:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->setLayout()V

    invoke-direct {p0}, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->setAnimator()V

    goto/16 :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->clearEffect()V

    :cond_0
    return-void
.end method

.method public reInit(Lcom/samsung/android/visualeffect/EffectDataObj;)V
    .locals 3

    const-string v0, "VisualEffectCircleUnlockEffect"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reInit : minWidthOffset = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->minWidthOffset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", arrowForButtonId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->arrowForButtonId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p1, Lcom/samsung/android/visualeffect/EffectDataObj;->circleData:Lcom/samsung/android/visualeffect/lock/data/CircleData;

    iget v0, v0, Lcom/samsung/android/visualeffect/lock/data/CircleData;->minWidthOffset:I

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/samsung/android/visualeffect/EffectDataObj;->circleData:Lcom/samsung/android/visualeffect/lock/data/CircleData;

    iget v0, v0, Lcom/samsung/android/visualeffect/lock/data/CircleData;->minWidthOffset:I

    iput v0, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->minWidthOffset:I

    :cond_0
    iget-object v0, p1, Lcom/samsung/android/visualeffect/EffectDataObj;->circleData:Lcom/samsung/android/visualeffect/lock/data/CircleData;

    iget v0, v0, Lcom/samsung/android/visualeffect/lock/data/CircleData;->arrowForButtonId:I

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/samsung/android/visualeffect/EffectDataObj;->circleData:Lcom/samsung/android/visualeffect/lock/data/CircleData;

    iget v0, v0, Lcom/samsung/android/visualeffect/lock/data/CircleData;->arrowForButtonId:I

    iput v0, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->arrowForButtonId:I

    iget v0, p0, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->arrowForButtonId:I

    invoke-direct {p0, v0}, Lcom/samsung/android/visualeffect/lock/circleunlock/CircleUnlockEffect;->setArrowForButton(I)V

    :cond_1
    return-void
.end method

.method public removeListener()V
    .locals 0

    return-void
.end method

.method public setListener(Lcom/samsung/android/visualeffect/IEffectListener;)V
    .locals 0

    return-void
.end method

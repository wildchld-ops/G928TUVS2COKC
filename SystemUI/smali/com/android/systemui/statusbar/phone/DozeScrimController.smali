.class public Lcom/android/systemui/statusbar/phone/DozeScrimController;
.super Ljava/lang/Object;
.source "DozeScrimController.java"


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "DozeScrimController"


# instance fields
.field private mBehindAnimator:Landroid/animation/Animator;

.field private mBehindTarget:F

.field private final mDozeAnimationInterpolator:Landroid/view/animation/Interpolator;

.field private final mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

.field private mDozing:Z

.field private final mHandler:Landroid/os/Handler;

.field private mInFrontAnimator:Landroid/animation/Animator;

.field private mInFrontTarget:F

.field private mPulseCallback:Lcom/android/systemui/doze/DozeHost$PulseCallback;

.field private final mPulseIn:Ljava/lang/Runnable;

.field private final mPulseInFinished:Ljava/lang/Runnable;

.field private final mPulseInInterpolator:Landroid/view/animation/Interpolator;

.field private final mPulseInInterpolatorPickup:Landroid/view/animation/Interpolator;

.field private final mPulseOut:Ljava/lang/Runnable;

.field private final mPulseOutFinished:Ljava/lang/Runnable;

.field private final mPulseOutInterpolator:Landroid/view/animation/Interpolator;

.field private mPulseReason:I

.field private final mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "DozeScrimController"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/phone/ScrimController;Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseInInterpolator:Landroid/view/animation/Interpolator;

    sget-object v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->ALPHA_IN:Landroid/view/animation/Interpolator;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseOutInterpolator:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/statusbar/phone/DozeScrimController$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/DozeScrimController$3;-><init>(Lcom/android/systemui/statusbar/phone/DozeScrimController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseIn:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/systemui/statusbar/phone/DozeScrimController$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/DozeScrimController$4;-><init>(Lcom/android/systemui/statusbar/phone/DozeScrimController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseInFinished:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/systemui/statusbar/phone/DozeScrimController$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/DozeScrimController$5;-><init>(Lcom/android/systemui/statusbar/phone/DozeScrimController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseOut:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/systemui/statusbar/phone/DozeScrimController$6;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/DozeScrimController$6;-><init>(Lcom/android/systemui/statusbar/phone/DozeScrimController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseOutFinished:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    new-instance v0, Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-direct {v0, p2}, Lcom/android/systemui/statusbar/phone/DozeParameters;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    const v0, 0x10c000e

    invoke-static {p2, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseInInterpolatorPickup:Landroid/view/animation/Interpolator;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mDozeAnimationInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method private abortAnimations()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mInFrontAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mInFrontAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mBehindAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mBehindAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/DozeScrimController;ZF)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->setDozeAlpha(ZF)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/DozeScrimController;ZLandroid/animation/Animator;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->setCurrentAnimator(ZLandroid/animation/Animator;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/phone/DozeScrimController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->pulseStarted()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/phone/DozeScrimController;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseOut:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/systemui/statusbar/phone/DozeScrimController;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/systemui/statusbar/phone/DozeScrimController;)Landroid/view/animation/Interpolator;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseOutInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/systemui/statusbar/phone/DozeScrimController;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseOutFinished:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/systemui/statusbar/phone/DozeScrimController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->pulseFinished()V

    return-void
.end method

.method static synthetic access$200()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->DEBUG:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/DozeScrimController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mDozing:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/DozeScrimController;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseReason:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/phone/DozeScrimController;)Lcom/android/systemui/statusbar/phone/DozeParameters;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/phone/DozeScrimController;)Landroid/view/animation/Interpolator;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseInInterpolatorPickup:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/phone/DozeScrimController;)Landroid/view/animation/Interpolator;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseInInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/phone/DozeScrimController;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseInFinished:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/phone/DozeScrimController;ZFJLandroid/view/animation/Interpolator;JLjava/lang/Runnable;)V
    .locals 0

    invoke-direct/range {p0 .. p8}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->startScrimAnimation(ZFJLandroid/view/animation/Interpolator;JLjava/lang/Runnable;)V

    return-void
.end method

.method private cancelPulsing()V
    .locals 2

    sget-boolean v0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "DozeScrimController"

    const-string v1, "Cancel pulsing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseCallback:Lcom/android/systemui/doze/DozeHost$PulseCallback;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseIn:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseOut:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->pulseFinished()V

    :cond_1
    return-void
.end method

.method private getCurrentAnimator(Z)Landroid/animation/Animator;
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mInFrontAnimator:Landroid/animation/Animator;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mBehindAnimator:Landroid/animation/Animator;

    goto :goto_0
.end method

.method private getCurrentTarget(Z)F
    .locals 1

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mInFrontTarget:F

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mBehindTarget:F

    goto :goto_0
.end method

.method private getDozeAlpha(Z)F
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->getDozeInFrontAlpha()F

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/ScrimController;->getDozeBehindAlpha()F

    move-result v0

    goto :goto_0
.end method

.method private pulseFinished()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseCallback:Lcom/android/systemui/doze/DozeHost$PulseCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseCallback:Lcom/android/systemui/doze/DozeHost$PulseCallback;

    invoke-interface {v0}, Lcom/android/systemui/doze/DozeHost$PulseCallback;->onPulseFinished()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseCallback:Lcom/android/systemui/doze/DozeHost$PulseCallback;

    :cond_0
    return-void
.end method

.method private pulseStarted()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseCallback:Lcom/android/systemui/doze/DozeHost$PulseCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseCallback:Lcom/android/systemui/doze/DozeHost$PulseCallback;

    invoke-interface {v0}, Lcom/android/systemui/doze/DozeHost$PulseCallback;->onPulseStarted()V

    :cond_0
    return-void
.end method

.method private setCurrentAnimator(ZLandroid/animation/Animator;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mInFrontAnimator:Landroid/animation/Animator;

    :goto_0
    return-void

    :cond_0
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mBehindAnimator:Landroid/animation/Animator;

    goto :goto_0
.end method

.method private setCurrentTarget(ZF)V
    .locals 0

    if-eqz p1, :cond_0

    iput p2, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mInFrontTarget:F

    :goto_0
    return-void

    :cond_0
    iput p2, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mBehindTarget:F

    goto :goto_0
.end method

.method private setDozeAlpha(ZF)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/phone/ScrimController;->setDozeInFrontAlpha(F)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/phone/ScrimController;->setDozeBehindAlpha(F)V

    goto :goto_0
.end method

.method private startScrimAnimation(ZFJLandroid/view/animation/Interpolator;)V
    .locals 9

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->startScrimAnimation(ZFJLandroid/view/animation/Interpolator;JLjava/lang/Runnable;)V

    return-void
.end method

.method private startScrimAnimation(ZFJLandroid/view/animation/Interpolator;JLjava/lang/Runnable;)V
    .locals 6

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->getCurrentAnimator(Z)Landroid/animation/Animator;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->getCurrentTarget(Z)F

    move-result v2

    cmpl-float v3, v2, p2

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    :cond_1
    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->getDozeAlpha(Z)F

    move-result v5

    aput v5, v3, v4

    const/4 v4, 0x1

    aput p2, v3, v4

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    new-instance v3, Lcom/android/systemui/statusbar/phone/DozeScrimController$1;

    invoke-direct {v3, p0, p1}, Lcom/android/systemui/statusbar/phone/DozeScrimController$1;-><init>(Lcom/android/systemui/statusbar/phone/DozeScrimController;Z)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v0, p5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p6, p7}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    new-instance v3, Lcom/android/systemui/statusbar/phone/DozeScrimController$2;

    invoke-direct {v3, p0, p1, p8}, Lcom/android/systemui/statusbar/phone/DozeScrimController$2;-><init>(Lcom/android/systemui/statusbar/phone/DozeScrimController;ZLjava/lang/Runnable;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->setCurrentAnimator(ZLandroid/animation/Animator;)V

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->setCurrentTarget(ZF)V

    goto :goto_0
.end method


# virtual methods
.method public isPulsing()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseCallback:Lcom/android/systemui/doze/DozeHost$PulseCallback;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pulse(Lcom/android/systemui/doze/DozeHost$PulseCallback;I)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mDozing:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseCallback:Lcom/android/systemui/doze/DozeHost$PulseCallback;

    if-eqz v0, :cond_2

    :cond_1
    invoke-interface {p1}, Lcom/android/systemui/doze/DozeHost$PulseCallback;->onPulseFinished()V

    :goto_0
    return-void

    :cond_2
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseCallback:Lcom/android/systemui/doze/DozeHost$PulseCallback;

    iput p2, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseReason:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mPulseIn:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public setDozing(ZZ)V
    .locals 7

    const-wide/16 v4, 0x2bc

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mDozing:Z

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mDozing:Z

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mDozing:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->abortAnimations()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ScrimController;->setDozeBehindAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ScrimController;->setDozeInFrontAlpha(F)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->cancelPulsing()V

    if-eqz p2, :cond_2

    const/4 v2, 0x0

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mDozeAnimationInterpolator:Landroid/view/animation/Interpolator;

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->startScrimAnimation(ZFJLandroid/view/animation/Interpolator;)V

    const/4 v2, 0x1

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mDozeAnimationInterpolator:Landroid/view/animation/Interpolator;

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->startScrimAnimation(ZFJLandroid/view/animation/Interpolator;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/DozeScrimController;->abortAnimations()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/phone/ScrimController;->setDozeBehindAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DozeScrimController;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/phone/ScrimController;->setDozeInFrontAlpha(F)V

    goto :goto_0
.end method

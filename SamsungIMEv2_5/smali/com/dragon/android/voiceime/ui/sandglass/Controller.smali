.class public Lcom/dragon/android/voiceime/ui/sandglass/Controller;
.super Ljava/lang/Object;
.source "Controller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dragon/android/voiceime/ui/sandglass/Controller$1;,
        Lcom/dragon/android/voiceime/ui/sandglass/Controller$RotateAnimateUpdater;,
        Lcom/dragon/android/voiceime/ui/sandglass/Controller$DropAnimateUpdater;
    }
.end annotation


# instance fields
.field private final DROP_DURATION:I

.field private final DROP_FROM_RATIO:F

.field private final DROP_TO_RATIO:F

.field private final QUADEASEOUT:Landroid/animation/TimeInterpolator;

.field private final ROTATE_DELAY:I

.field private final ROTATE_DURATION:I

.field private mDropAnimator:Landroid/animation/ValueAnimator;

.field private final mDropSandView:Lcom/dragon/android/voiceime/ui/sandglass/AbstractView;

.field private final mDropUpdateListener:Lcom/dragon/android/voiceime/ui/sandglass/Controller$DropAnimateUpdater;

.field private final mLayout:Landroid/view/View;

.field private final mLowerSandView:Lcom/dragon/android/voiceime/ui/sandglass/AbstractView;

.field private mRotateAnimator:Landroid/animation/ObjectAnimator;

.field private final mRotateUpdateListener:Lcom/dragon/android/voiceime/ui/sandglass/Controller$RotateAnimateUpdater;

.field private final mUpperSandView:Lcom/dragon/android/voiceime/ui/sandglass/AbstractView;

.field private mbStopped:Z


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/dragon/android/voiceime/ui/sandglass/AbstractView;Lcom/dragon/android/voiceime/ui/sandglass/AbstractView;Lcom/dragon/android/voiceime/ui/sandglass/AbstractView;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/dragon/android/voiceime/ui/sandglass/Controller;->DROP_DURATION:I

    const/16 v0, 0x190

    iput v0, p0, Lcom/dragon/android/voiceime/ui/sandglass/Controller;->ROTATE_DURATION:I

    const/16 v0, 0x12c

    iput v0, p0, Lcom/dragon/android/voiceime/ui/sandglass/Controller;->ROTATE_DELAY:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/dragon/android/voiceime/ui/sandglass/Controller;->DROP_FROM_RATIO:F

    const v0, 0x3fb33333    # 1.4f

    iput v0, p0, Lcom/dragon/android/voiceime/ui/sandglass/Controller;->DROP_TO_RATIO:F

    new-instance v0, Lcom/dragon/android/voiceime/ui/sandglass/QuadEaseOut;

    invoke-direct {v0}, Lcom/dragon/android/voiceime/ui/sandglass/QuadEaseOut;-><init>()V

    iput-object v0, p0, Lcom/dragon/android/voiceime/ui/sandglass/Controller;->QUADEASEOUT:Landroid/animation/TimeInterpolator;

    iput-object p1, p0, Lcom/dragon/android/voiceime/ui/sandglass/Controller;->mLayout:Landroid/view/View;

    iput-object p2, p0, Lcom/dragon/android/voiceime/ui/sandglass/Controller;->mUpperSandView:Lcom/dragon/android/voiceime/ui/sandglass/AbstractView;

    iput-object p3, p0, Lcom/dragon/android/voiceime/ui/sandglass/Controller;->mLowerSandView:Lcom/dragon/android/voiceime/ui/sandglass/AbstractView;

    iput-object p4, p0, Lcom/dragon/android/voiceime/ui/sandglass/Controller;->mDropSandView:Lcom/dragon/android/voiceime/ui/sandglass/AbstractView;

    new-instance v0, Lcom/dragon/android/voiceime/ui/sandglass/Controller$DropAnimateUpdater;

    invoke-direct {v0, p0, v1}, Lcom/dragon/android/voiceime/ui/sandglass/Controller$DropAnimateUpdater;-><init>(Lcom/dragon/android/voiceime/ui/sandglass/Controller;Lcom/dragon/android/voiceime/ui/sandglass/Controller$1;)V

    iput-object v0, p0, Lcom/dragon/android/voiceime/ui/sandglass/Controller;->mDropUpdateListener:Lcom/dragon/android/voiceime/ui/sandglass/Controller$DropAnimateUpdater;

    new-instance v0, Lcom/dragon/android/voiceime/ui/sandglass/Controller$RotateAnimateUpdater;

    invoke-direct {v0, p0, v1}, Lcom/dragon/android/voiceime/ui/sandglass/Controller$RotateAnimateUpdater;-><init>(Lcom/dragon/android/voiceime/ui/sandglass/Controller;Lcom/dragon/android/voiceime/ui/sandglass/Controller$1;)V

    iput-object v0, p0, Lcom/dragon/android/voiceime/ui/sandglass/Controller;->mRotateUpdateListener:Lcom/dragon/android/voiceime/ui/sandglass/Controller$RotateAnimateUpdater;

    return-void
.end method

.method static synthetic access$200(Lcom/dragon/android/voiceime/ui/sandglass/Controller;)Lcom/dragon/android/voiceime/ui/sandglass/AbstractView;
    .locals 1

    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/sandglass/Controller;->mUpperSandView:Lcom/dragon/android/voiceime/ui/sandglass/AbstractView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/dragon/android/voiceime/ui/sandglass/Controller;)Lcom/dragon/android/voiceime/ui/sandglass/AbstractView;
    .locals 1

    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/sandglass/Controller;->mLowerSandView:Lcom/dragon/android/voiceime/ui/sandglass/AbstractView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/dragon/android/voiceime/ui/sandglass/Controller;)Lcom/dragon/android/voiceime/ui/sandglass/AbstractView;
    .locals 1

    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/sandglass/Controller;->mDropSandView:Lcom/dragon/android/voiceime/ui/sandglass/AbstractView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/dragon/android/voiceime/ui/sandglass/Controller;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/dragon/android/voiceime/ui/sandglass/Controller;->mbStopped:Z

    return v0
.end method

.method static synthetic access$600(Lcom/dragon/android/voiceime/ui/sandglass/Controller;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/dragon/android/voiceime/ui/sandglass/Controller;->playRotate(II)V

    return-void
.end method

.method static synthetic access$700(Lcom/dragon/android/voiceime/ui/sandglass/Controller;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/dragon/android/voiceime/ui/sandglass/Controller;->playDrop(II)V

    return-void
.end method

.method private playDrop(II)V
    .locals 4

    invoke-direct {p0}, Lcom/dragon/android/voiceime/ui/sandglass/Controller;->stopDropAnimator()V

    invoke-direct {p0}, Lcom/dragon/android/voiceime/ui/sandglass/Controller;->stopRotateAnimator()V

    invoke-direct {p0}, Lcom/dragon/android/voiceime/ui/sandglass/Controller;->recoveryForDropAnimator()V

    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/sandglass/Controller;->mDropUpdateListener:Lcom/dragon/android/voiceime/ui/sandglass/Controller$DropAnimateUpdater;

    const/4 v1, 0x0

    iput v1, v0, Lcom/dragon/android/voiceime/ui/sandglass/Controller$DropAnimateUpdater;->FROM:F

    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/sandglass/Controller;->mDropUpdateListener:Lcom/dragon/android/voiceime/ui/sandglass/Controller$DropAnimateUpdater;

    const v1, 0x3fb33333    # 1.4f

    iput v1, v0, Lcom/dragon/android/voiceime/ui/sandglass/Controller$DropAnimateUpdater;->TO:F

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/dragon/android/voiceime/ui/sandglass/Controller;->mDropUpdateListener:Lcom/dragon/android/voiceime/ui/sandglass/Controller$DropAnimateUpdater;

    iget v2, v2, Lcom/dragon/android/voiceime/ui/sandglass/Controller$DropAnimateUpdater;->FROM:F

    aput v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/dragon/android/voiceime/ui/sandglass/Controller;->mDropUpdateListener:Lcom/dragon/android/voiceime/ui/sandglass/Controller$DropAnimateUpdater;

    iget v2, v2, Lcom/dragon/android/voiceime/ui/sandglass/Controller$DropAnimateUpdater;->TO:F

    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/dragon/android/voiceime/ui/sandglass/Controller;->mDropAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/sandglass/Controller;->mDropAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/dragon/android/voiceime/ui/sandglass/Controller;->mDropUpdateListener:Lcom/dragon/android/voiceime/ui/sandglass/Controller$DropAnimateUpdater;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/sandglass/Controller;->mDropAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/dragon/android/voiceime/ui/sandglass/Controller;->mDropUpdateListener:Lcom/dragon/android/voiceime/ui/sandglass/Controller$DropAnimateUpdater;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/sandglass/Controller;->mDropAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/dragon/android/voiceime/ui/sandglass/Controller;->QUADEASEOUT:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/sandglass/Controller;->mDropAnimator:Landroid/animation/ValueAnimator;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/sandglass/Controller;->mDropAnimator:Landroid/animation/ValueAnimator;

    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/sandglass/Controller;->mDropAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private playRotate(II)V
    .locals 4

    invoke-direct {p0}, Lcom/dragon/android/voiceime/ui/sandglass/Controller;->stopDropAnimator()V

    invoke-direct {p0}, Lcom/dragon/android/voiceime/ui/sandglass/Controller;->stopRotateAnimator()V

    invoke-direct {p0}, Lcom/dragon/android/voiceime/ui/sandglass/Controller;->recoveryForRotateAnimator()V

    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/sandglass/Controller;->mLayout:Landroid/view/View;

    const-string v1, "rotation"

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/dragon/android/voiceime/ui/sandglass/Controller;->mRotateAnimator:Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/sandglass/Controller;->mRotateAnimator:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/dragon/android/voiceime/ui/sandglass/Controller;->mRotateUpdateListener:Lcom/dragon/android/voiceime/ui/sandglass/Controller$RotateAnimateUpdater;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/sandglass/Controller;->mRotateAnimator:Landroid/animation/ObjectAnimator;

    iget-object v1, p0, Lcom/dragon/android/voiceime/ui/sandglass/Controller;->QUADEASEOUT:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/sandglass/Controller;->mRotateAnimator:Landroid/animation/ObjectAnimator;

    int-to-long v2, p1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/sandglass/Controller;->mRotateAnimator:Landroid/animation/ObjectAnimator;

    int-to-long v2, p2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/sandglass/Controller;->mRotateAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x43340000    # 180.0f
    .end array-data
.end method

.method private recoveryForDropAnimator()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/sandglass/Controller;->mLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setRotation(F)V

    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/sandglass/Controller;->mUpperSandView:Lcom/dragon/android/voiceime/ui/sandglass/AbstractView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/dragon/android/voiceime/ui/sandglass/AbstractView;->render(F)V

    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/sandglass/Controller;->mLowerSandView:Lcom/dragon/android/voiceime/ui/sandglass/AbstractView;

    invoke-virtual {v0, v2}, Lcom/dragon/android/voiceime/ui/sandglass/AbstractView;->render(F)V

    return-void
.end method

.method private recoveryForRotateAnimator()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/sandglass/Controller;->mLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setRotation(F)V

    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/sandglass/Controller;->mUpperSandView:Lcom/dragon/android/voiceime/ui/sandglass/AbstractView;

    invoke-virtual {v0, v1}, Lcom/dragon/android/voiceime/ui/sandglass/AbstractView;->render(F)V

    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/sandglass/Controller;->mLowerSandView:Lcom/dragon/android/voiceime/ui/sandglass/AbstractView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/dragon/android/voiceime/ui/sandglass/AbstractView;->render(F)V

    return-void
.end method

.method private stopDropAnimator()V
    .locals 1

    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/sandglass/Controller;->mDropAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/sandglass/Controller;->mDropAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/sandglass/Controller;->mDropAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/sandglass/Controller;->mDropAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dragon/android/voiceime/ui/sandglass/Controller;->mDropAnimator:Landroid/animation/ValueAnimator;

    :cond_0
    return-void
.end method

.method private stopRotateAnimator()V
    .locals 1

    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/sandglass/Controller;->mRotateAnimator:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/sandglass/Controller;->mRotateAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->removeAllListeners()V

    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/sandglass/Controller;->mRotateAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->removeAllUpdateListeners()V

    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/sandglass/Controller;->mRotateAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/dragon/android/voiceime/ui/sandglass/Controller;->mRotateAnimator:Landroid/animation/ObjectAnimator;

    :cond_0
    return-void
.end method


# virtual methods
.method public play(I)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dragon/android/voiceime/ui/sandglass/Controller;->mbStopped:Z

    const/16 v0, 0x3e8

    invoke-direct {p0, v0, p1}, Lcom/dragon/android/voiceime/ui/sandglass/Controller;->playDrop(II)V

    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/dragon/android/voiceime/ui/sandglass/Controller;->mbStopped:Z

    return-void
.end method

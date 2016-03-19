.class Lcom/dragon/android/voiceime/ui/sandglass/Controller$DropAnimateUpdater;
.super Ljava/lang/Object;
.source "Controller.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dragon/android/voiceime/ui/sandglass/Controller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DropAnimateUpdater"
.end annotation


# instance fields
.field public FROM:F

.field public TO:F

.field final synthetic this$0:Lcom/dragon/android/voiceime/ui/sandglass/Controller;


# direct methods
.method private constructor <init>(Lcom/dragon/android/voiceime/ui/sandglass/Controller;)V
    .locals 0

    iput-object p1, p0, Lcom/dragon/android/voiceime/ui/sandglass/Controller$DropAnimateUpdater;->this$0:Lcom/dragon/android/voiceime/ui/sandglass/Controller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/dragon/android/voiceime/ui/sandglass/Controller;Lcom/dragon/android/voiceime/ui/sandglass/Controller$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/dragon/android/voiceime/ui/sandglass/Controller$DropAnimateUpdater;-><init>(Lcom/dragon/android/voiceime/ui/sandglass/Controller;)V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/sandglass/Controller$DropAnimateUpdater;->this$0:Lcom/dragon/android/voiceime/ui/sandglass/Controller;

    # getter for: Lcom/dragon/android/voiceime/ui/sandglass/Controller;->mbStopped:Z
    invoke-static {v0}, Lcom/dragon/android/voiceime/ui/sandglass/Controller;->access$500(Lcom/dragon/android/voiceime/ui/sandglass/Controller;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/sandglass/Controller$DropAnimateUpdater;->this$0:Lcom/dragon/android/voiceime/ui/sandglass/Controller;

    const/16 v1, 0x190

    const/16 v2, 0x12c

    # invokes: Lcom/dragon/android/voiceime/ui/sandglass/Controller;->playRotate(II)V
    invoke-static {v0, v1, v2}, Lcom/dragon/android/voiceime/ui/sandglass/Controller;->access$600(Lcom/dragon/android/voiceime/ui/sandglass/Controller;II)V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v1, p0, Lcom/dragon/android/voiceime/ui/sandglass/Controller$DropAnimateUpdater;->this$0:Lcom/dragon/android/voiceime/ui/sandglass/Controller;

    # getter for: Lcom/dragon/android/voiceime/ui/sandglass/Controller;->mUpperSandView:Lcom/dragon/android/voiceime/ui/sandglass/AbstractView;
    invoke-static {v1}, Lcom/dragon/android/voiceime/ui/sandglass/Controller;->access$200(Lcom/dragon/android/voiceime/ui/sandglass/Controller;)Lcom/dragon/android/voiceime/ui/sandglass/AbstractView;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v0

    iget v3, p0, Lcom/dragon/android/voiceime/ui/sandglass/Controller$DropAnimateUpdater;->FROM:F

    iget v4, p0, Lcom/dragon/android/voiceime/ui/sandglass/Controller$DropAnimateUpdater;->TO:F

    invoke-virtual {v1, v2, v3, v4}, Lcom/dragon/android/voiceime/ui/sandglass/AbstractView;->render(FFF)V

    iget-object v1, p0, Lcom/dragon/android/voiceime/ui/sandglass/Controller$DropAnimateUpdater;->this$0:Lcom/dragon/android/voiceime/ui/sandglass/Controller;

    # getter for: Lcom/dragon/android/voiceime/ui/sandglass/Controller;->mLowerSandView:Lcom/dragon/android/voiceime/ui/sandglass/AbstractView;
    invoke-static {v1}, Lcom/dragon/android/voiceime/ui/sandglass/Controller;->access$300(Lcom/dragon/android/voiceime/ui/sandglass/Controller;)Lcom/dragon/android/voiceime/ui/sandglass/AbstractView;

    move-result-object v1

    iget v2, p0, Lcom/dragon/android/voiceime/ui/sandglass/Controller$DropAnimateUpdater;->FROM:F

    iget v3, p0, Lcom/dragon/android/voiceime/ui/sandglass/Controller$DropAnimateUpdater;->TO:F

    invoke-virtual {v1, v0, v2, v3}, Lcom/dragon/android/voiceime/ui/sandglass/AbstractView;->render(FFF)V

    iget-object v1, p0, Lcom/dragon/android/voiceime/ui/sandglass/Controller$DropAnimateUpdater;->this$0:Lcom/dragon/android/voiceime/ui/sandglass/Controller;

    # getter for: Lcom/dragon/android/voiceime/ui/sandglass/Controller;->mDropSandView:Lcom/dragon/android/voiceime/ui/sandglass/AbstractView;
    invoke-static {v1}, Lcom/dragon/android/voiceime/ui/sandglass/Controller;->access$400(Lcom/dragon/android/voiceime/ui/sandglass/Controller;)Lcom/dragon/android/voiceime/ui/sandglass/AbstractView;

    move-result-object v1

    iget v2, p0, Lcom/dragon/android/voiceime/ui/sandglass/Controller$DropAnimateUpdater;->FROM:F

    iget v3, p0, Lcom/dragon/android/voiceime/ui/sandglass/Controller$DropAnimateUpdater;->TO:F

    invoke-virtual {v1, v0, v2, v3}, Lcom/dragon/android/voiceime/ui/sandglass/AbstractView;->render(FFF)V

    return-void
.end method

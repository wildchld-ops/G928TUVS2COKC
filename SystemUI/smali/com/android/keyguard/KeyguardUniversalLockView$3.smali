.class Lcom/android/keyguard/KeyguardUniversalLockView$3;
.super Ljava/lang/Object;
.source "KeyguardUniversalLockView.java"

# interfaces
.implements Lcom/android/internal/widget/DirectionLockTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardUniversalLockView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardUniversalLockView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardUniversalLockView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardUniversalLockView$3;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDirectionDetected(Ljava/lang/String;Z)V
    .locals 6

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUniversalLockView$3;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    # getter for: Lcom/android/keyguard/KeyguardUniversalLockView;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;
    invoke-static {v2}, Lcom/android/keyguard/KeyguardUniversalLockView;->access$800(Lcom/android/keyguard/KeyguardUniversalLockView;)Lcom/android/keyguard/KeyguardSecurityCallback;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V

    const-string v2, "FINGER_LIFT"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz p2, :cond_4

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUniversalLockView$3;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    # getter for: Lcom/android/keyguard/KeyguardUniversalLockView;->mDirectionImageView:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/android/keyguard/KeyguardUniversalLockView;->access$900(Lcom/android/keyguard/KeyguardUniversalLockView;)Landroid/widget/ImageView;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUniversalLockView$3;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    # getter for: Lcom/android/keyguard/KeyguardUniversalLockView;->mDirectionImageView:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/android/keyguard/KeyguardUniversalLockView;->access$900(Lcom/android/keyguard/KeyguardUniversalLockView;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/KeyguardUniversalLockView$3;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    # getter for: Lcom/android/keyguard/KeyguardUniversalLockView;->mOutgoingArrowAnimator:Landroid/view/animation/AlphaAnimation;
    invoke-static {v3}, Lcom/android/keyguard/KeyguardUniversalLockView;->access$1000(Lcom/android/keyguard/KeyguardUniversalLockView;)Landroid/view/animation/AlphaAnimation;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/keyguard/KeyguardUniversalLockView$3;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    # getter for: Lcom/android/keyguard/KeyguardUniversalLockView;->mLastPokeTime:J
    invoke-static {v4}, Lcom/android/keyguard/KeyguardUniversalLockView;->access$1200(Lcom/android/keyguard/KeyguardUniversalLockView;)J

    move-result-wide v4

    sub-long v0, v2, v4

    const-wide/16 v2, 0x1b58

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUniversalLockView$3;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    # setter for: Lcom/android/keyguard/KeyguardUniversalLockView;->mLastPokeTime:J
    invoke-static {v2, v4, v5}, Lcom/android/keyguard/KeyguardUniversalLockView;->access$1202(Lcom/android/keyguard/KeyguardUniversalLockView;J)J

    :cond_1
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUniversalLockView$3;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    # invokes: Lcom/android/keyguard/KeyguardUniversalLockView;->resetmTimer()V
    invoke-static {v2}, Lcom/android/keyguard/KeyguardUniversalLockView;->access$100(Lcom/android/keyguard/KeyguardUniversalLockView;)V

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUniversalLockView$3;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    # getter for: Lcom/android/keyguard/KeyguardUniversalLockView;->mDirectionLockTextView:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/keyguard/KeyguardUniversalLockView;->access$1300(Lcom/android/keyguard/KeyguardUniversalLockView;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->clearAnimation()V

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUniversalLockView$3;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    # getter for: Lcom/android/keyguard/KeyguardUniversalLockView;->mDirectionLockTextView:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/keyguard/KeyguardUniversalLockView;->access$1300(Lcom/android/keyguard/KeyguardUniversalLockView;)Landroid/widget/TextView;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUniversalLockView$3;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    # getter for: Lcom/android/keyguard/KeyguardUniversalLockView;->mDirectionLockTextView:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/keyguard/KeyguardUniversalLockView;->access$1300(Lcom/android/keyguard/KeyguardUniversalLockView;)Landroid/widget/TextView;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    const-string v2, "FINGER_LIFT"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUniversalLockView$3;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    new-instance v3, Lcom/android/keyguard/KeyguardUniversalLockView$DirectionStichingTimer;

    iget-object v4, p0, Lcom/android/keyguard/KeyguardUniversalLockView$3;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/android/keyguard/KeyguardUniversalLockView$DirectionStichingTimer;-><init>(Lcom/android/keyguard/KeyguardUniversalLockView;Lcom/android/keyguard/KeyguardUniversalLockView$1;)V

    iput-object v3, v2, Lcom/android/keyguard/KeyguardUniversalLockView;->mTimer:Lcom/android/keyguard/KeyguardUniversalLockView$DirectionStichingTimer;

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUniversalLockView$3;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    iget-object v2, v2, Lcom/android/keyguard/KeyguardUniversalLockView;->mTimer:Lcom/android/keyguard/KeyguardUniversalLockView$DirectionStichingTimer;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUniversalLockView$3;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    iget-object v2, v2, Lcom/android/keyguard/KeyguardUniversalLockView;->mTimer:Lcom/android/keyguard/KeyguardUniversalLockView$DirectionStichingTimer;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUniversalLockView$DirectionStichingTimer;->start()V

    :cond_2
    if-eqz p2, :cond_3

    const-string v2, "FINGER_LIFT"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUniversalLockView$3;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    # getter for: Lcom/android/keyguard/KeyguardUniversalLockView;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;
    invoke-static {v2}, Lcom/android/keyguard/KeyguardUniversalLockView;->access$000(Lcom/android/keyguard/KeyguardUniversalLockView;)Lcom/android/internal/widget/DirectionLockView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/widget/DirectionLockView;->getCurrentPassword()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x16

    if-gt v2, v3, :cond_3

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUniversalLockView$3;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    # invokes: Lcom/android/keyguard/KeyguardUniversalLockView;->handleAndPerformDotAnimations()V
    invoke-static {v2}, Lcom/android/keyguard/KeyguardUniversalLockView;->access$1500(Lcom/android/keyguard/KeyguardUniversalLockView;)V

    :cond_3
    return-void

    :cond_4
    if-eqz p2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUniversalLockView$3;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    # getter for: Lcom/android/keyguard/KeyguardUniversalLockView;->mDirectionImageView:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/android/keyguard/KeyguardUniversalLockView;->access$900(Lcom/android/keyguard/KeyguardUniversalLockView;)Landroid/widget/ImageView;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUniversalLockView$3;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    # getter for: Lcom/android/keyguard/KeyguardUniversalLockView;->mDirectionImageView:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/android/keyguard/KeyguardUniversalLockView;->access$900(Lcom/android/keyguard/KeyguardUniversalLockView;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/KeyguardUniversalLockView$3;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    # getter for: Lcom/android/keyguard/KeyguardUniversalLockView;->mIncomingArrowAnimator:Landroid/view/animation/AlphaAnimation;
    invoke-static {v3}, Lcom/android/keyguard/KeyguardUniversalLockView;->access$1100(Lcom/android/keyguard/KeyguardUniversalLockView;)Landroid/view/animation/AlphaAnimation;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_0
.end method

.method public onDirectionStarted()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView$3;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    # getter for: Lcom/android/keyguard/KeyguardUniversalLockView;->isChecking:Z
    invoke-static {v0}, Lcom/android/keyguard/KeyguardUniversalLockView;->access$400(Lcom/android/keyguard/KeyguardUniversalLockView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView$3;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    # getter for: Lcom/android/keyguard/KeyguardUniversalLockView;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardUniversalLockView;->access$000(Lcom/android/keyguard/KeyguardUniversalLockView;)Lcom/android/internal/widget/DirectionLockView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/DirectionLockView;->setAllow(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView$3;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    # getter for: Lcom/android/keyguard/KeyguardUniversalLockView;->isSleeping:Z
    invoke-static {v0}, Lcom/android/keyguard/KeyguardUniversalLockView;->access$300(Lcom/android/keyguard/KeyguardUniversalLockView;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView$3;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardUniversalLockView;->mTimer:Lcom/android/keyguard/KeyguardUniversalLockView$DirectionStichingTimer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView$3;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardUniversalLockView;->mTimer:Lcom/android/keyguard/KeyguardUniversalLockView$DirectionStichingTimer;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUniversalLockView$DirectionStichingTimer;->interrupt()V

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView$3;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/keyguard/KeyguardUniversalLockView;->mTimer:Lcom/android/keyguard/KeyguardUniversalLockView$DirectionStichingTimer;

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView$3;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    # getter for: Lcom/android/keyguard/KeyguardUniversalLockView;->mDirectionView:Lcom/android/internal/widget/DirectionLockView;
    invoke-static {v0}, Lcom/android/keyguard/KeyguardUniversalLockView;->access$000(Lcom/android/keyguard/KeyguardUniversalLockView;)Lcom/android/internal/widget/DirectionLockView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/DirectionLockView;->setAllow(Z)V

    goto :goto_0
.end method

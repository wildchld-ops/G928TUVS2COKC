.class Lcom/sec/android/cover/widget/CoverHideEffectView$CloseEffectRenderer$2;
.super Ljava/lang/Object;
.source "CoverHideEffectView.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/cover/widget/CoverHideEffectView$CloseEffectRenderer;->startAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field canceled:Z

.field final synthetic this$1:Lcom/sec/android/cover/widget/CoverHideEffectView$CloseEffectRenderer;


# direct methods
.method constructor <init>(Lcom/sec/android/cover/widget/CoverHideEffectView$CloseEffectRenderer;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/cover/widget/CoverHideEffectView$CloseEffectRenderer$2;->this$1:Lcom/sec/android/cover/widget/CoverHideEffectView$CloseEffectRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/cover/widget/CoverHideEffectView$CloseEffectRenderer$2;->canceled:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/cover/widget/CoverHideEffectView$CloseEffectRenderer$2;->canceled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/cover/widget/CoverHideEffectView$CloseEffectRenderer$2;->this$1:Lcom/sec/android/cover/widget/CoverHideEffectView$CloseEffectRenderer;

    const/4 v1, -0x1

    # setter for: Lcom/sec/android/cover/widget/CoverHideEffectView$CloseEffectRenderer;->mTextureHandle:I
    invoke-static {v0, v1}, Lcom/sec/android/cover/widget/CoverHideEffectView$CloseEffectRenderer;->access$402(Lcom/sec/android/cover/widget/CoverHideEffectView$CloseEffectRenderer;I)I

    iget-object v0, p0, Lcom/sec/android/cover/widget/CoverHideEffectView$CloseEffectRenderer$2;->this$1:Lcom/sec/android/cover/widget/CoverHideEffectView$CloseEffectRenderer;

    const/4 v1, 0x0

    # setter for: Lcom/sec/android/cover/widget/CoverHideEffectView$CloseEffectRenderer;->mAnimator:Landroid/animation/ObjectAnimator;
    invoke-static {v0, v1}, Lcom/sec/android/cover/widget/CoverHideEffectView$CloseEffectRenderer;->access$502(Lcom/sec/android/cover/widget/CoverHideEffectView$CloseEffectRenderer;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    iget-boolean v0, p0, Lcom/sec/android/cover/widget/CoverHideEffectView$CloseEffectRenderer$2;->canceled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/widget/CoverHideEffectView$CloseEffectRenderer$2;->this$1:Lcom/sec/android/cover/widget/CoverHideEffectView$CloseEffectRenderer;

    iget-object v0, v0, Lcom/sec/android/cover/widget/CoverHideEffectView$CloseEffectRenderer;->this$0:Lcom/sec/android/cover/widget/CoverHideEffectView;

    # getter for: Lcom/sec/android/cover/widget/CoverHideEffectView;->mListener:Lcom/sec/android/cover/widget/CoverHideEffectView$SViewCoverHideAnimationListener;
    invoke-static {v0}, Lcom/sec/android/cover/widget/CoverHideEffectView;->access$600(Lcom/sec/android/cover/widget/CoverHideEffectView;)Lcom/sec/android/cover/widget/CoverHideEffectView$SViewCoverHideAnimationListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/widget/CoverHideEffectView$CloseEffectRenderer$2;->this$1:Lcom/sec/android/cover/widget/CoverHideEffectView$CloseEffectRenderer;

    iget-object v0, v0, Lcom/sec/android/cover/widget/CoverHideEffectView$CloseEffectRenderer;->this$0:Lcom/sec/android/cover/widget/CoverHideEffectView;

    # getter for: Lcom/sec/android/cover/widget/CoverHideEffectView;->mListener:Lcom/sec/android/cover/widget/CoverHideEffectView$SViewCoverHideAnimationListener;
    invoke-static {v0}, Lcom/sec/android/cover/widget/CoverHideEffectView;->access$600(Lcom/sec/android/cover/widget/CoverHideEffectView;)Lcom/sec/android/cover/widget/CoverHideEffectView$SViewCoverHideAnimationListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/cover/widget/CoverHideEffectView$SViewCoverHideAnimationListener;->onHideAnimationFinished()V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/cover/widget/CoverHideEffectView$CloseEffectRenderer$2;->this$1:Lcom/sec/android/cover/widget/CoverHideEffectView$CloseEffectRenderer;

    iget-object v1, p0, Lcom/sec/android/cover/widget/CoverHideEffectView$CloseEffectRenderer$2;->this$1:Lcom/sec/android/cover/widget/CoverHideEffectView$CloseEffectRenderer;

    # getter for: Lcom/sec/android/cover/widget/CoverHideEffectView$CloseEffectRenderer;->mFadeStartPosition:F
    invoke-static {v1}, Lcom/sec/android/cover/widget/CoverHideEffectView$CloseEffectRenderer;->access$300(Lcom/sec/android/cover/widget/CoverHideEffectView$CloseEffectRenderer;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/widget/CoverHideEffectView$CloseEffectRenderer;->setFadePosition(F)V

    return-void
.end method

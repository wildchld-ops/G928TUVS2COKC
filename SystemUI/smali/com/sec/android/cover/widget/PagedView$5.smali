.class Lcom/sec/android/cover/widget/PagedView$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PagedView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/cover/widget/PagedView;->zoomOut()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/cover/widget/PagedView;


# direct methods
.method constructor <init>(Lcom/sec/android/cover/widget/PagedView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/cover/widget/PagedView$5;->this$0:Lcom/sec/android/cover/widget/PagedView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/cover/widget/PagedView$5;->this$0:Lcom/sec/android/cover/widget/PagedView;

    # getter for: Lcom/sec/android/cover/widget/PagedView;->mDeleteDropTarget:Landroid/view/View;
    invoke-static {v0}, Lcom/sec/android/cover/widget/PagedView;->access$500(Lcom/sec/android/cover/widget/PagedView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/widget/PagedView$5;->this$0:Lcom/sec/android/cover/widget/PagedView;

    # getter for: Lcom/sec/android/cover/widget/PagedView;->mDeleteDropTarget:Landroid/view/View;
    invoke-static {v0}, Lcom/sec/android/cover/widget/PagedView;->access$500(Lcom/sec/android/cover/widget/PagedView;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/cover/widget/PagedView$5;->this$0:Lcom/sec/android/cover/widget/PagedView;

    # getter for: Lcom/sec/android/cover/widget/PagedView;->mDeleteDropTarget:Landroid/view/View;
    invoke-static {v0}, Lcom/sec/android/cover/widget/PagedView;->access$500(Lcom/sec/android/cover/widget/PagedView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/widget/PagedView$5;->this$0:Lcom/sec/android/cover/widget/PagedView;

    # getter for: Lcom/sec/android/cover/widget/PagedView;->REORDERING_DELETE_DROP_TARGET_FADE_DURATION:J
    invoke-static {v1}, Lcom/sec/android/cover/widget/PagedView;->access$600(Lcom/sec/android/cover/widget/PagedView;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/sec/android/cover/widget/PagedView$5$1;

    invoke-direct {v1, p0}, Lcom/sec/android/cover/widget/PagedView$5$1;-><init>(Lcom/sec/android/cover/widget/PagedView$5;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    :cond_0
    return-void
.end method

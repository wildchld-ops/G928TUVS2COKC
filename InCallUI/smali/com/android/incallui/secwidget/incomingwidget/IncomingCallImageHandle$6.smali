.class Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "IncomingCallImageHandle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->getConversionAnimator()Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;


# direct methods
.method constructor <init>(Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle$6;->this$0:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle$6;->this$0:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    # getter for: Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mTabCircle:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->access$1900(Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle$6;->this$0:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    iget-object v1, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle$6;->this$0:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    # getter for: Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mTabCircle:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->access$1900(Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;)Landroid/widget/ImageView;

    move-result-object v1

    # invokes: Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->setViewStatePostAnimation(Landroid/view/View;F)V
    invoke-static {v0, v1, v2}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->access$2200(Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;Landroid/view/View;F)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle$6;->this$0:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    # getter for: Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mHandleImageView:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->access$2100(Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle$6;->this$0:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    iget-object v1, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle$6;->this$0:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    # getter for: Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mHandleImageView:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->access$2100(Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;)Landroid/widget/ImageView;

    move-result-object v1

    # invokes: Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->setViewStatePostAnimation(Landroid/view/View;F)V
    invoke-static {v0, v1, v2}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->access$2200(Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;Landroid/view/View;F)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle$6;->this$0:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    # getter for: Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mTabCircleForAnim:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->access$2300(Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle$6;->this$0:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    # getter for: Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mTabCircleForAnim:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->access$2300(Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;)Landroid/widget/ImageView;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    :cond_2
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 5

    const/4 v3, 0x4

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle$6;->this$0:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    const/4 v2, 0x1

    # setter for: Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mIsAnswerAnimating:Z
    invoke-static {v1, v2}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->access$1602(Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;Z)Z

    iget-object v1, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle$6;->this$0:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v1}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->hideArrowHandleInternal()V

    iget-object v1, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle$6;->this$0:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    # getter for: Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mTargetCircle:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->access$1700(Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;)Landroid/widget/ImageView;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle$6;->this$0:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    # getter for: Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mTargetCircle:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->access$1700(Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView;->clearAnimation()V

    iget-object v1, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle$6;->this$0:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    # getter for: Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mTargetCircle:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->access$1700(Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    iget-object v1, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle$6;->this$0:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    # getter for: Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mMovingCircle:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->access$1800(Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;)Landroid/widget/ImageView;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle$6;->this$0:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    # getter for: Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mMovingCircle:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->access$1800(Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle$6;->this$0:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    invoke-virtual {v1}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c000f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle$6;->this$0:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    # getter for: Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mTabCircle:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->access$1900(Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;)Landroid/widget/ImageView;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle$6;->this$0:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    iget-object v2, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle$6;->this$0:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    # getter for: Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mTabCircle:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->access$1900(Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;)Landroid/widget/ImageView;

    move-result-object v2

    div-int/lit8 v3, v0, 0x2

    # invokes: Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->assignAlphaAnimation(Landroid/view/View;IF)V
    invoke-static {v1, v2, v3, v4}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->access$2000(Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;Landroid/view/View;IF)V

    :cond_2
    iget-object v1, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle$6;->this$0:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    # getter for: Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mHandleImageView:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->access$2100(Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;)Landroid/widget/ImageView;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle$6;->this$0:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    iget-object v2, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle$6;->this$0:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;

    # getter for: Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->mHandleImageView:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->access$2100(Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;)Landroid/widget/ImageView;

    move-result-object v2

    div-int/lit8 v3, v0, 0x2

    # invokes: Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->assignAlphaAnimation(Landroid/view/View;IF)V
    invoke-static {v1, v2, v3, v4}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;->access$2000(Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageHandle;Landroid/view/View;IF)V

    :cond_3
    return-void
.end method

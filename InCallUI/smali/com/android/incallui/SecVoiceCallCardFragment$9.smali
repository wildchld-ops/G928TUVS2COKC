.class Lcom/android/incallui/SecVoiceCallCardFragment$9;
.super Ljava/lang/Object;
.source "SecVoiceCallCardFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/SecVoiceCallCardFragment;->animateForNewOutgoingCall(Landroid/graphics/Point;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/SecVoiceCallCardFragment;

.field final synthetic val$startPoint:Landroid/graphics/Point;


# direct methods
.method constructor <init>(Lcom/android/incallui/SecVoiceCallCardFragment;Landroid/graphics/Point;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/SecVoiceCallCardFragment$9;->this$0:Lcom/android/incallui/SecVoiceCallCardFragment;

    iput-object p2, p0, Lcom/android/incallui/SecVoiceCallCardFragment$9;->val$startPoint:Landroid/graphics/Point;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 7

    iget-object v4, p0, Lcom/android/incallui/SecVoiceCallCardFragment$9;->this$0:Lcom/android/incallui/SecVoiceCallCardFragment;

    invoke-virtual {v4}, Lcom/android/incallui/SecVoiceCallCardFragment;->getView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    const-string v4, "onGlobalLayout..."

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/incallui/SecVoiceCallCardFragment$9;->this$0:Lcom/android/incallui/SecVoiceCallCardFragment;

    # invokes: Lcom/android/incallui/SecVoiceCallCardFragment;->setViewStateBeforeOutgoingAnimation()V
    invoke-static {v4}, Lcom/android/incallui/SecVoiceCallCardFragment;->access$600(Lcom/android/incallui/SecVoiceCallCardFragment;)V

    iget-object v4, p0, Lcom/android/incallui/SecVoiceCallCardFragment$9;->this$0:Lcom/android/incallui/SecVoiceCallCardFragment;

    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v5, v4, Lcom/android/incallui/SecVoiceCallCardFragment;->mOutgoingAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v4, p0, Lcom/android/incallui/SecVoiceCallCardFragment$9;->this$0:Lcom/android/incallui/SecVoiceCallCardFragment;

    iget-object v5, p0, Lcom/android/incallui/SecVoiceCallCardFragment$9;->val$startPoint:Landroid/graphics/Point;

    # invokes: Lcom/android/incallui/SecVoiceCallCardFragment;->getRevealAnimator(Landroid/graphics/Point;)Landroid/animation/Animator;
    invoke-static {v4, v5}, Lcom/android/incallui/SecVoiceCallCardFragment;->access$700(Lcom/android/incallui/SecVoiceCallCardFragment;Landroid/graphics/Point;)Landroid/animation/Animator;

    move-result-object v3

    iget-object v4, p0, Lcom/android/incallui/SecVoiceCallCardFragment$9;->this$0:Lcom/android/incallui/SecVoiceCallCardFragment;

    # invokes: Lcom/android/incallui/SecVoiceCallCardFragment;->getRevealViewsAnimator()Landroid/animation/Animator;
    invoke-static {v4}, Lcom/android/incallui/SecVoiceCallCardFragment;->access$800(Lcom/android/incallui/SecVoiceCallCardFragment;)Landroid/animation/Animator;

    move-result-object v2

    iget-object v4, p0, Lcom/android/incallui/SecVoiceCallCardFragment$9;->this$0:Lcom/android/incallui/SecVoiceCallCardFragment;

    iget-object v4, v4, Lcom/android/incallui/SecVoiceCallCardFragment;->mOutgoingAnimatorSet:Landroid/animation/AnimatorSet;

    const/4 v5, 0x2

    new-array v5, v5, [Landroid/animation/Animator;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/4 v6, 0x1

    aput-object v2, v5, v6

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    iget-object v4, p0, Lcom/android/incallui/SecVoiceCallCardFragment$9;->this$0:Lcom/android/incallui/SecVoiceCallCardFragment;

    iget-object v4, v4, Lcom/android/incallui/SecVoiceCallCardFragment;->mOutgoingAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v5, Lcom/android/incallui/SecVoiceCallCardFragment$9$1;

    invoke-direct {v5, p0}, Lcom/android/incallui/SecVoiceCallCardFragment$9$1;-><init>(Lcom/android/incallui/SecVoiceCallCardFragment$9;)V

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v4, p0, Lcom/android/incallui/SecVoiceCallCardFragment$9;->this$0:Lcom/android/incallui/SecVoiceCallCardFragment;

    iget-object v4, v4, Lcom/android/incallui/SecVoiceCallCardFragment;->mOutgoingAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    iget-object v4, p0, Lcom/android/incallui/SecVoiceCallCardFragment$9;->this$0:Lcom/android/incallui/SecVoiceCallCardFragment;

    invoke-virtual {v4}, Lcom/android/incallui/SecVoiceCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/incallui/SecVoiceCallCardFragment$9;->this$0:Lcom/android/incallui/SecVoiceCallCardFragment;

    invoke-virtual {v4}, Lcom/android/incallui/SecVoiceCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    instance-of v4, v4, Lcom/android/incallui/SecInCallActivity;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/incallui/SecVoiceCallCardFragment$9;->this$0:Lcom/android/incallui/SecVoiceCallCardFragment;

    invoke-virtual {v4}, Lcom/android/incallui/SecVoiceCallCardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/SecInCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/SecInCallActivity;->getSecCallButtonFragment()Lcom/android/incallui/SecCallButtonUi;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/SecInCallActivity;->getSecCallButtonFragment()Lcom/android/incallui/SecCallButtonUi;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/incallui/SecCallButtonUi;->animateForRevealEndCallButton()V

    goto :goto_0
.end method

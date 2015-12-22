.class Lcom/android/incallui/CallCardFragment$6;
.super Ljava/lang/Object;
.source "CallCardFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/CallCardFragment;->animateForNewOutgoingCall(Landroid/graphics/Point;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/CallCardFragment;

.field final synthetic val$parent:Landroid/view/ViewGroup;

.field final synthetic val$showCircularReveal:Z

.field final synthetic val$touchPoint:Landroid/graphics/Point;


# direct methods
.method constructor <init>(Lcom/android/incallui/CallCardFragment;Landroid/view/ViewGroup;Landroid/graphics/Point;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/CallCardFragment$6;->this$0:Lcom/android/incallui/CallCardFragment;

    iput-object p2, p0, Lcom/android/incallui/CallCardFragment$6;->val$parent:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/android/incallui/CallCardFragment$6;->val$touchPoint:Landroid/graphics/Point;

    iput-boolean p4, p0, Lcom/android/incallui/CallCardFragment$6;->val$showCircularReveal:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 8

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/android/incallui/CallCardFragment$6;->this$0:Lcom/android/incallui/CallCardFragment;

    invoke-virtual {v4}, Lcom/android/incallui/CallCardFragment;->getView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v4

    if-nez v4, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v2, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    new-instance v1, Lcom/android/incallui/CallCardFragment$LayoutIgnoringListener;

    const/4 v4, 0x0

    invoke-direct {v1, v4}, Lcom/android/incallui/CallCardFragment$LayoutIgnoringListener;-><init>(Lcom/android/incallui/CallCardFragment$1;)V

    iget-object v4, p0, Lcom/android/incallui/CallCardFragment$6;->this$0:Lcom/android/incallui/CallCardFragment;

    # getter for: Lcom/android/incallui/CallCardFragment;->mPrimaryCallCardContainer:Landroid/view/View;
    invoke-static {v4}, Lcom/android/incallui/CallCardFragment;->access$200(Lcom/android/incallui/CallCardFragment;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object v4, p0, Lcom/android/incallui/CallCardFragment$6;->this$0:Lcom/android/incallui/CallCardFragment;

    # getter for: Lcom/android/incallui/CallCardFragment;->mPrimaryCallCardContainer:Landroid/view/View;
    invoke-static {v4}, Lcom/android/incallui/CallCardFragment;->access$200(Lcom/android/incallui/CallCardFragment;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/android/incallui/CallCardFragment$6;->this$0:Lcom/android/incallui/CallCardFragment;

    # getter for: Lcom/android/incallui/CallCardFragment;->mPrimaryCallCardContainer:Landroid/view/View;
    invoke-static {v4}, Lcom/android/incallui/CallCardFragment;->access$200(Lcom/android/incallui/CallCardFragment;)Landroid/view/View;

    move-result-object v4

    iget-object v5, p0, Lcom/android/incallui/CallCardFragment$6;->val$parent:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setBottom(I)V

    iget-object v4, p0, Lcom/android/incallui/CallCardFragment$6;->this$0:Lcom/android/incallui/CallCardFragment;

    # getter for: Lcom/android/incallui/CallCardFragment;->mFloatingActionButtonContainer:Landroid/view/View;
    invoke-static {v4}, Lcom/android/incallui/CallCardFragment;->access$500(Lcom/android/incallui/CallCardFragment;)Landroid/view/View;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/incallui/CallCardFragment$6;->this$0:Lcom/android/incallui/CallCardFragment;

    # getter for: Lcom/android/incallui/CallCardFragment;->mFloatingActionButtonController:Lcom/android/contacts/common/widget/FloatingActionButtonController;
    invoke-static {v4}, Lcom/android/incallui/CallCardFragment;->access$600(Lcom/android/incallui/CallCardFragment;)Lcom/android/contacts/common/widget/FloatingActionButtonController;

    move-result-object v4

    iget-object v5, p0, Lcom/android/incallui/CallCardFragment$6;->val$parent:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/contacts/common/widget/FloatingActionButtonController;->setScreenWidth(I)V

    iget-object v4, p0, Lcom/android/incallui/CallCardFragment$6;->this$0:Lcom/android/incallui/CallCardFragment;

    # getter for: Lcom/android/incallui/CallCardFragment;->mCallButtonsContainer:Landroid/view/View;
    invoke-static {v4}, Lcom/android/incallui/CallCardFragment;->access$700(Lcom/android/incallui/CallCardFragment;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setAlpha(F)V

    iget-object v4, p0, Lcom/android/incallui/CallCardFragment$6;->this$0:Lcom/android/incallui/CallCardFragment;

    # getter for: Lcom/android/incallui/CallCardFragment;->mCallStateLabel:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/incallui/CallCardFragment;->access$800(Lcom/android/incallui/CallCardFragment;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v4, p0, Lcom/android/incallui/CallCardFragment$6;->this$0:Lcom/android/incallui/CallCardFragment;

    # getter for: Lcom/android/incallui/CallCardFragment;->mPrimaryName:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/incallui/CallCardFragment;->access$900(Lcom/android/incallui/CallCardFragment;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v4, p0, Lcom/android/incallui/CallCardFragment$6;->this$0:Lcom/android/incallui/CallCardFragment;

    # getter for: Lcom/android/incallui/CallCardFragment;->mCallTypeLabel:Landroid/widget/TextView;
    invoke-static {v4}, Lcom/android/incallui/CallCardFragment;->access$1000(Lcom/android/incallui/CallCardFragment;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v4, p0, Lcom/android/incallui/CallCardFragment$6;->this$0:Lcom/android/incallui/CallCardFragment;

    # getter for: Lcom/android/incallui/CallCardFragment;->mCallNumberAndLabel:Landroid/view/View;
    invoke-static {v4}, Lcom/android/incallui/CallCardFragment;->access$1100(Lcom/android/incallui/CallCardFragment;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setAlpha(F)V

    iget-object v4, p0, Lcom/android/incallui/CallCardFragment$6;->this$0:Lcom/android/incallui/CallCardFragment;

    iget-object v5, p0, Lcom/android/incallui/CallCardFragment$6;->val$touchPoint:Landroid/graphics/Point;

    iget-object v6, p0, Lcom/android/incallui/CallCardFragment$6;->val$parent:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getHeight()I

    move-result v6

    iget-boolean v7, p0, Lcom/android/incallui/CallCardFragment$6;->val$showCircularReveal:Z

    # invokes: Lcom/android/incallui/CallCardFragment;->getOutgoingCallAnimator(Landroid/graphics/Point;IIZ)Landroid/animation/Animator;
    invoke-static {v4, v5, v6, v3, v7}, Lcom/android/incallui/CallCardFragment;->access$1200(Lcom/android/incallui/CallCardFragment;Landroid/graphics/Point;IIZ)Landroid/animation/Animator;

    move-result-object v0

    new-instance v4, Lcom/android/incallui/CallCardFragment$6$1;

    invoke-direct {v4, p0, v1}, Lcom/android/incallui/CallCardFragment$6$1;-><init>(Lcom/android/incallui/CallCardFragment$6;Lcom/android/incallui/CallCardFragment$LayoutIgnoringListener;)V

    invoke-virtual {v0, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto/16 :goto_0
.end method

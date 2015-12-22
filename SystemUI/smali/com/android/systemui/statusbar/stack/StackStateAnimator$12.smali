.class Lcom/android/systemui/statusbar/stack/StackStateAnimator$12;
.super Landroid/animation/AnimatorListenerAdapter;
.source "StackStateAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/stack/StackStateAnimator;->animateOverScrollToAmount(FZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/stack/StackStateAnimator;

.field final synthetic val$onTop:Z


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/stack/StackStateAnimator;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator$12;->this$0:Lcom/android/systemui/statusbar/stack/StackStateAnimator;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator$12;->val$onTop:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator$12;->val$onTop:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator$12;->this$0:Lcom/android/systemui/statusbar/stack/StackStateAnimator;

    # setter for: Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mTopOverScrollAnimator:Landroid/animation/ValueAnimator;
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->access$302(Lcom/android/systemui/statusbar/stack/StackStateAnimator;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator$12;->this$0:Lcom/android/systemui/statusbar/stack/StackStateAnimator;

    # getter for: Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mDVFSHelper:Landroid/os/DVFSHelper;
    invoke-static {v0}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->access$500(Lcom/android/systemui/statusbar/stack/StackStateAnimator;)Landroid/os/DVFSHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->isAquired()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "StackStateAnimator"

    const-string v1, "CPU Booster OFF"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator$12;->this$0:Lcom/android/systemui/statusbar/stack/StackStateAnimator;

    # getter for: Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mDVFSHelper:Landroid/os/DVFSHelper;
    invoke-static {v0}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->access$500(Lcom/android/systemui/statusbar/stack/StackStateAnimator;)Landroid/os/DVFSHelper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/DVFSHelper;->release()V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator$12;->this$0:Lcom/android/systemui/statusbar/stack/StackStateAnimator;

    # setter for: Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mBottomOverScrollAnimator:Landroid/animation/ValueAnimator;
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->access$402(Lcom/android/systemui/statusbar/stack/StackStateAnimator;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    goto :goto_0
.end method

.class Lcom/android/systemui/statusbar/stack/StackStateAnimator$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "StackStateAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/stack/StackStateAnimator;->startAlphaAnimation(Lcom/android/systemui/statusbar/ExpandableView;Lcom/android/systemui/statusbar/stack/StackScrollState$ViewState;JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public mWasCancelled:Z

.field final synthetic this$0:Lcom/android/systemui/statusbar/stack/StackStateAnimator;

.field final synthetic val$child:Lcom/android/systemui/statusbar/ExpandableView;

.field final synthetic val$newEndValue:F


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/stack/StackStateAnimator;Lcom/android/systemui/statusbar/ExpandableView;F)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator$5;->this$0:Lcom/android/systemui/statusbar/stack/StackStateAnimator;

    iput-object p2, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator$5;->val$child:Lcom/android/systemui/statusbar/ExpandableView;

    iput p3, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator$5;->val$newEndValue:F

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator$5;->mWasCancelled:Z

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator$5;->val$child:Lcom/android/systemui/statusbar/ExpandableView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v3}, Lcom/android/systemui/statusbar/ExpandableView;->setLayerType(ILandroid/graphics/Paint;)V

    iget v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator$5;->val$newEndValue:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator$5;->mWasCancelled:Z

    if-nez v0, :cond_0

    const-string v1, "StackStateAnimator"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " hided notification will be "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator$5;->this$0:Lcom/android/systemui/statusbar/stack/StackStateAnimator;

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mHostLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isBackEventFromShadeLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "GONE"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator$5;->val$child:Lcom/android/systemui/statusbar/ExpandableView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator$5;->this$0:Lcom/android/systemui/statusbar/stack/StackStateAnimator;

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->mHostLayout:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isBackEventFromShadeLocked()Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x8

    :goto_1
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/ExpandableView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator$5;->val$child:Lcom/android/systemui/statusbar/ExpandableView;

    const v1, 0x7f0e0050

    invoke-virtual {v0, v1, v3}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator$5;->val$child:Lcom/android/systemui/statusbar/ExpandableView;

    const v1, 0x7f0e005c

    invoke-virtual {v0, v1, v3}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator$5;->val$child:Lcom/android/systemui/statusbar/ExpandableView;

    const v1, 0x7f0e0056

    invoke-virtual {v0, v1, v3}, Lcom/android/systemui/statusbar/ExpandableView;->setTag(ILjava/lang/Object;)V

    return-void

    :cond_1
    const-string v0, "INVISIBLE"

    goto :goto_0

    :cond_2
    const/4 v0, 0x4

    goto :goto_1
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/stack/StackStateAnimator$5;->mWasCancelled:Z

    return-void
.end method

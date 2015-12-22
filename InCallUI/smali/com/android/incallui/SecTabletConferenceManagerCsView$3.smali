.class Lcom/android/incallui/SecTabletConferenceManagerCsView$3;
.super Ljava/lang/Object;
.source "SecTabletConferenceManagerCsView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/SecTabletConferenceManagerCsView;->animateForHide()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/SecTabletConferenceManagerCsView;


# direct methods
.method constructor <init>(Lcom/android/incallui/SecTabletConferenceManagerCsView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/SecTabletConferenceManagerCsView$3;->this$0:Lcom/android/incallui/SecTabletConferenceManagerCsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    iget-object v2, p0, Lcom/android/incallui/SecTabletConferenceManagerCsView$3;->this$0:Lcom/android/incallui/SecTabletConferenceManagerCsView;

    # getter for: Lcom/android/incallui/SecTabletConferenceManagerCsView;->mConferencePanel:Landroid/widget/FrameLayout;
    invoke-static {v2}, Lcom/android/incallui/SecTabletConferenceManagerCsView;->access$200(Lcom/android/incallui/SecTabletConferenceManagerCsView;)Landroid/widget/FrameLayout;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v2, p0, Lcom/android/incallui/SecTabletConferenceManagerCsView$3;->this$0:Lcom/android/incallui/SecTabletConferenceManagerCsView;

    # getter for: Lcom/android/incallui/SecTabletConferenceManagerCsView;->mConferencePanel:Landroid/widget/FrameLayout;
    invoke-static {v2}, Lcom/android/incallui/SecTabletConferenceManagerCsView;->access$200(Lcom/android/incallui/SecTabletConferenceManagerCsView;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v2, p0, Lcom/android/incallui/SecTabletConferenceManagerCsView$3;->this$0:Lcom/android/incallui/SecTabletConferenceManagerCsView;

    # getter for: Lcom/android/incallui/SecTabletConferenceManagerCsView;->mConferencePanel:Landroid/widget/FrameLayout;
    invoke-static {v2}, Lcom/android/incallui/SecTabletConferenceManagerCsView;->access$200(Lcom/android/incallui/SecTabletConferenceManagerCsView;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

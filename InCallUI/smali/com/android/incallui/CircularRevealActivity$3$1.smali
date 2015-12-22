.class Lcom/android/incallui/CircularRevealActivity$3$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "CircularRevealActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/CircularRevealActivity$3;->onPreDraw()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/incallui/CircularRevealActivity$3;


# direct methods
.method constructor <init>(Lcom/android/incallui/CircularRevealActivity$3;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/CircularRevealActivity$3$1;->this$1:Lcom/android/incallui/CircularRevealActivity$3;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/CircularRevealActivity$3$1;->this$1:Lcom/android/incallui/CircularRevealActivity$3;

    iget-object v0, v0, Lcom/android/incallui/CircularRevealActivity$3;->val$view:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClipToOutline(Z)V

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/CircularRevealActivity$3$1;->this$1:Lcom/android/incallui/CircularRevealActivity$3;

    iget-object v1, v1, Lcom/android/incallui/CircularRevealActivity$3;->this$0:Lcom/android/incallui/CircularRevealActivity;

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallPresenter;->onCircularRevealStarted(Landroid/app/Activity;)V

    return-void
.end method

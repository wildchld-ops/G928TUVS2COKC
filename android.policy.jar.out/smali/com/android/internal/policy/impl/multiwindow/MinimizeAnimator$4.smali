.class Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$4;
.super Ljava/lang/Object;
.source "MinimizeAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->scaleRedCircleTrashCoverAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;

.field final synthetic val$scaleAnim:Landroid/view/animation/ScaleAnimation;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;Landroid/view/animation/ScaleAnimation;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$4;->this$0:Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;

    iput-object p2, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$4;->val$scaleAnim:Landroid/view/animation/ScaleAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$4;->this$0:Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->trash:Landroid/view/View;
    invoke-static {v0}, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->access$500(Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$4;->val$scaleAnim:Landroid/view/animation/ScaleAnimation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

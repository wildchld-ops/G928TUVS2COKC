.class Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$3;
.super Ljava/lang/Object;
.source "MinimizeAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->shakeRedCircleTrashCoverAnimation(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;

.field final synthetic val$rotateAnim:Landroid/view/animation/RotateAnimation;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;Landroid/view/animation/RotateAnimation;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$3;->this$0:Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;

    iput-object p2, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$3;->val$rotateAnim:Landroid/view/animation/RotateAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$3;->this$0:Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->trashCover:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->access$400(Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator$3;->val$rotateAnim:Landroid/view/animation/RotateAnimation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

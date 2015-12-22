.class Lcom/android/systemui/recents/views/SwipeHelper$6;
.super Ljava/lang/Object;
.source "SwipeHelper.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/recents/views/SwipeHelper;->moveChild(Landroid/view/View;F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/views/SwipeHelper;

.field final synthetic val$canAnimViewBeDismissed:Z

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/systemui/recents/views/SwipeHelper;ZLandroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/views/SwipeHelper$6;->this$0:Lcom/android/systemui/recents/views/SwipeHelper;

    iput-boolean p2, p0, Lcom/android/systemui/recents/views/SwipeHelper$6;->val$canAnimViewBeDismissed:Z

    iput-object p3, p0, Lcom/android/systemui/recents/views/SwipeHelper$6;->val$view:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6

    iget-boolean v0, p0, Lcom/android/systemui/recents/views/SwipeHelper$6;->val$canAnimViewBeDismissed:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/recents/views/SwipeHelper$6;->val$view:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/recents/views/SwipeHelper$6;->this$0:Lcom/android/systemui/recents/views/SwipeHelper;

    iget-object v2, p0, Lcom/android/systemui/recents/views/SwipeHelper$6;->val$view:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/views/SwipeHelper;->getAlphaForOffset(Landroid/view/View;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    invoke-static {}, Lcom/android/systemui/recents/views/DualScreenViewControl;->getInstance()Lcom/android/systemui/recents/views/DualScreenViewControl;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/recents/views/SwipeHelper$6;->val$view:Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/recents/views/SwipeHelper$6;->this$0:Lcom/android/systemui/recents/views/SwipeHelper;

    # getter for: Lcom/android/systemui/recents/views/SwipeHelper;->mSwipeDirection:I
    invoke-static {v2}, Lcom/android/systemui/recents/views/SwipeHelper;->access$100(Lcom/android/systemui/recents/views/SwipeHelper;)I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/recents/views/SwipeHelper$6;->this$0:Lcom/android/systemui/recents/views/SwipeHelper;

    iget-object v4, p0, Lcom/android/systemui/recents/views/SwipeHelper$6;->val$view:Landroid/view/View;

    const/4 v5, 0x0

    # invokes: Lcom/android/systemui/recents/views/SwipeHelper;->isValidMoveDirection(Landroid/view/View;F)Z
    invoke-static {v3, v4, v5}, Lcom/android/systemui/recents/views/SwipeHelper;->access$200(Lcom/android/systemui/recents/views/SwipeHelper;Landroid/view/View;F)Z

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/recents/views/DualScreenViewControl;->moveAnimationView(Landroid/view/View;IZ)V

    return-void
.end method

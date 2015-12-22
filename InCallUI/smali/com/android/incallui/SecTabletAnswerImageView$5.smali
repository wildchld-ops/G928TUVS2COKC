.class Lcom/android/incallui/SecTabletAnswerImageView$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SecTabletAnswerImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/SecTabletAnswerImageView;->animateHideForMaskPanel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/SecTabletAnswerImageView;


# direct methods
.method constructor <init>(Lcom/android/incallui/SecTabletAnswerImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/SecTabletAnswerImageView$5;->this$0:Lcom/android/incallui/SecTabletAnswerImageView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/SecTabletAnswerImageView$5;->this$0:Lcom/android/incallui/SecTabletAnswerImageView;

    # getter for: Lcom/android/incallui/SecTabletAnswerImageView;->mMaskPanelForSlidingDrawer:Landroid/view/View;
    invoke-static {v0}, Lcom/android/incallui/SecTabletAnswerImageView;->access$500(Lcom/android/incallui/SecTabletAnswerImageView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecTabletAnswerImageView$5;->this$0:Lcom/android/incallui/SecTabletAnswerImageView;

    # getter for: Lcom/android/incallui/SecTabletAnswerImageView;->mMaskPanelForSlidingDrawer:Landroid/view/View;
    invoke-static {v0}, Lcom/android/incallui/SecTabletAnswerImageView;->access$500(Lcom/android/incallui/SecTabletAnswerImageView;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecTabletAnswerImageView$5;->this$0:Lcom/android/incallui/SecTabletAnswerImageView;

    iget-object v0, v0, Lcom/android/incallui/SecTabletAnswerImageView;->mIncomingCallImageWidget:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecTabletAnswerImageView$5;->this$0:Lcom/android/incallui/SecTabletAnswerImageView;

    iget-object v0, v0, Lcom/android/incallui/SecTabletAnswerImageView;->mIncomingCallImageWidget:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;

    iget-object v1, p0, Lcom/android/incallui/SecTabletAnswerImageView$5;->this$0:Lcom/android/incallui/SecTabletAnswerImageView;

    # getter for: Lcom/android/incallui/SecTabletAnswerImageView;->mRejectCallWithMsgHandle:Landroid/view/View;
    invoke-static {v1}, Lcom/android/incallui/SecTabletAnswerImageView;->access$600(Lcom/android/incallui/SecTabletAnswerImageView;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallImageWidget;->setRejectMsgHandleView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

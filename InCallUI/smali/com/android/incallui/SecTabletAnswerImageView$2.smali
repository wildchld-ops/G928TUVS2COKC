.class Lcom/android/incallui/SecTabletAnswerImageView$2;
.super Ljava/lang/Object;
.source "SecTabletAnswerImageView.java"

# interfaces
.implements Lcom/android/incallui/secwidget/incomingwidget/IncomingCallSlidingDrawer$OnDrawerCloseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/SecTabletAnswerImageView;->initView()V
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

    iput-object p1, p0, Lcom/android/incallui/SecTabletAnswerImageView$2;->this$0:Lcom/android/incallui/SecTabletAnswerImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrawerClosed()V
    .locals 4

    const/4 v3, 0x1

    const-string v1, "onDrawerClosed"

    invoke-static {p0, v1, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/incallui/SecTabletAnswerImageView$2;->this$0:Lcom/android/incallui/SecTabletAnswerImageView;

    # invokes: Lcom/android/incallui/SecTabletAnswerImageView;->animateHideForMaskPanel()V
    invoke-static {v1}, Lcom/android/incallui/SecTabletAnswerImageView;->access$300(Lcom/android/incallui/SecTabletAnswerImageView;)V

    iget-object v1, p0, Lcom/android/incallui/SecTabletAnswerImageView$2;->this$0:Lcom/android/incallui/SecTabletAnswerImageView;

    # getter for: Lcom/android/incallui/SecTabletAnswerImageView;->mRejectCallWithMsgOpenIcon:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/incallui/SecTabletAnswerImageView;->access$000(Lcom/android/incallui/SecTabletAnswerImageView;)Landroid/widget/ImageView;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecTabletAnswerImageView$2;->this$0:Lcom/android/incallui/SecTabletAnswerImageView;

    # getter for: Lcom/android/incallui/SecTabletAnswerImageView;->mRejectCallWithMsgOpenIcon:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/android/incallui/SecTabletAnswerImageView;->access$000(Lcom/android/incallui/SecTabletAnswerImageView;)Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x7f0202a7

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    iget-object v1, p0, Lcom/android/incallui/SecTabletAnswerImageView$2;->this$0:Lcom/android/incallui/SecTabletAnswerImageView;

    iget-object v1, v1, Lcom/android/incallui/SecTabletAnswerImageView;->mRejectCallWithMsgDrawer:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallSlidingDrawer;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/SecTabletAnswerImageView$2;->this$0:Lcom/android/incallui/SecTabletAnswerImageView;

    iget-object v2, p0, Lcom/android/incallui/SecTabletAnswerImageView$2;->this$0:Lcom/android/incallui/SecTabletAnswerImageView;

    iget-object v2, v2, Lcom/android/incallui/SecTabletAnswerImageView;->mRejectCallWithMsgDrawer:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallSlidingDrawer;

    invoke-virtual {v2}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallSlidingDrawer;->getHandle()Landroid/view/View;

    move-result-object v2

    # invokes: Lcom/android/incallui/SecTabletAnswerImageView;->setDescriptionToHandle(Landroid/view/View;Z)V
    invoke-static {v1, v2, v3}, Lcom/android/incallui/SecTabletAnswerImageView;->access$100(Lcom/android/incallui/SecTabletAnswerImageView;Landroid/view/View;Z)V

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/SecTabletAnswerImageView$2;->this$0:Lcom/android/incallui/SecTabletAnswerImageView;

    # getter for: Lcom/android/incallui/SecTabletAnswerImageView;->mRejectCallWithMsgHandler:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/android/incallui/SecTabletAnswerImageView;->access$200(Lcom/android/incallui/SecTabletAnswerImageView;)Landroid/widget/LinearLayout;

    move-result-object v1

    if-eqz v1, :cond_2

    const v0, 0x7f0201e0

    iget-object v1, p0, Lcom/android/incallui/SecTabletAnswerImageView$2;->this$0:Lcom/android/incallui/SecTabletAnswerImageView;

    # getter for: Lcom/android/incallui/SecTabletAnswerImageView;->mRejectCallWithMsgHandler:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lcom/android/incallui/SecTabletAnswerImageView;->access$200(Lcom/android/incallui/SecTabletAnswerImageView;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    :cond_2
    return-void
.end method

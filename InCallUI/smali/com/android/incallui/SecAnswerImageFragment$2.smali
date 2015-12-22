.class Lcom/android/incallui/SecAnswerImageFragment$2;
.super Ljava/lang/Object;
.source "SecAnswerImageFragment.java"

# interfaces
.implements Lcom/android/incallui/secwidget/incomingwidget/IncomingCallSlidingDrawer$OnDrawerCloseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/SecAnswerImageFragment;->onFinishInflate(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/SecAnswerImageFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/SecAnswerImageFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/SecAnswerImageFragment$2;->this$0:Lcom/android/incallui/SecAnswerImageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrawerClosed()V
    .locals 3

    const/4 v2, 0x1

    const-string v0, "onDrawerClosed"

    invoke-static {p0, v0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/SecAnswerImageFragment$2;->this$0:Lcom/android/incallui/SecAnswerImageFragment;

    # invokes: Lcom/android/incallui/SecAnswerImageFragment;->animateHideForMaskPanel()V
    invoke-static {v0}, Lcom/android/incallui/SecAnswerImageFragment;->access$200(Lcom/android/incallui/SecAnswerImageFragment;)V

    iget-object v0, p0, Lcom/android/incallui/SecAnswerImageFragment$2;->this$0:Lcom/android/incallui/SecAnswerImageFragment;

    # getter for: Lcom/android/incallui/SecAnswerImageFragment;->mRejectCallWithMsgOpenIcon:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/incallui/SecAnswerImageFragment;->access$000(Lcom/android/incallui/SecAnswerImageFragment;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecAnswerImageFragment$2;->this$0:Lcom/android/incallui/SecAnswerImageFragment;

    # getter for: Lcom/android/incallui/SecAnswerImageFragment;->mRejectCallWithMsgOpenIcon:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/incallui/SecAnswerImageFragment;->access$000(Lcom/android/incallui/SecAnswerImageFragment;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f0202a7

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecAnswerImageFragment$2;->this$0:Lcom/android/incallui/SecAnswerImageFragment;

    iget-object v0, v0, Lcom/android/incallui/SecAnswerImageFragment;->mRejectCallWithMsgDrawer:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallSlidingDrawer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/SecAnswerImageFragment$2;->this$0:Lcom/android/incallui/SecAnswerImageFragment;

    iget-object v1, p0, Lcom/android/incallui/SecAnswerImageFragment$2;->this$0:Lcom/android/incallui/SecAnswerImageFragment;

    iget-object v1, v1, Lcom/android/incallui/SecAnswerImageFragment;->mRejectCallWithMsgDrawer:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallSlidingDrawer;

    invoke-virtual {v1}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallSlidingDrawer;->getHandle()Landroid/view/View;

    move-result-object v1

    # invokes: Lcom/android/incallui/SecAnswerImageFragment;->setDescriptionToHandle(Landroid/view/View;Z)V
    invoke-static {v0, v1, v2}, Lcom/android/incallui/SecAnswerImageFragment;->access$100(Lcom/android/incallui/SecAnswerImageFragment;Landroid/view/View;Z)V

    :cond_1
    return-void
.end method

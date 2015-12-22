.class Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget$1;
.super Landroid/os/Handler;
.source "IncomingCallEasyImageWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;


# direct methods
.method constructor <init>(Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget$1;->this$0:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    const/4 v3, 0x0

    const/16 v4, 0x64

    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget$1;->this$0:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;

    const-string v1, "handleMessage"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->log(Ljava/lang/String;Z)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v0

    sget-object v1, Lcom/android/incallui/InCallPresenter$InCallState;->NO_CALLS:Lcom/android/incallui/InCallPresenter$InCallState;

    if-ne v0, v1, :cond_1

    const-string v0, "IncomingCallEasyImageWidget"

    const-string v1, "InCallState.NO_CALLS "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget$1;->this$0:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;

    # getter for: Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->access$000(Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget$1;->this$0:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;

    # getter for: Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->access$000(Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget$1;->this$0:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;

    # getter for: Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->mLeftArrowAnimationIndex:I
    invoke-static {v0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->access$100(Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;)I

    move-result v0

    iget-object v1, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget$1;->this$0:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;

    # getter for: Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->mEasyArrowLeftAnimation:[I
    invoke-static {v1}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->access$200(Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;)[I

    move-result-object v1

    array-length v1, v1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget$1;->this$0:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;

    # setter for: Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->mLeftArrowAnimationIndex:I
    invoke-static {v0, v3}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->access$102(Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;I)I

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget$1;->this$0:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;

    # getter for: Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->mRightArrowAnimationIndex:I
    invoke-static {v0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->access$300(Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;)I

    move-result v0

    iget-object v1, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget$1;->this$0:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;

    # getter for: Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->mEasyArrowRightAnimation:[I
    invoke-static {v1}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->access$400(Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;)[I

    move-result-object v1

    array-length v1, v1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget$1;->this$0:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;

    # setter for: Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->mRightArrowAnimationIndex:I
    invoke-static {v0, v3}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->access$302(Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;I)I

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget$1;->this$0:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;

    # getter for: Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->mLeftArrowImageViews:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->access$500(Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget$1;->this$0:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;

    # getter for: Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->mEasyArrowLeftAnimation:[I
    invoke-static {v1}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->access$200(Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;)[I

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget$1;->this$0:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;

    # operator++ for: Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->mLeftArrowAnimationIndex:I
    invoke-static {v2}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->access$108(Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;)I

    move-result v2

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget$1;->this$0:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;

    # getter for: Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->mRightArrowImageViews:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->access$600(Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget$1;->this$0:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;

    # getter for: Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->mEasyArrowRightAnimation:[I
    invoke-static {v1}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->access$400(Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;)[I

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget$1;->this$0:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;

    # operator++ for: Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->mRightArrowAnimationIndex:I
    invoke-static {v2}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->access$308(Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;)I

    move-result v2

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget$1;->this$0:Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;

    # getter for: Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;->access$000(Lcom/android/incallui/secwidget/incomingwidget/IncomingCallEasyImageWidget;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method

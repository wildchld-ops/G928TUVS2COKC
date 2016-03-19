.class Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle$1;
.super Landroid/os/Handler;
.source "IncomingCallImageHandle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;


# direct methods
.method constructor <init>(Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle$1;->this$0:Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    const-wide/16 v4, 0x12c

    const/16 v3, 0x64

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle$1;->this$0:Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;

    # getter for: Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mParent:Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget;
    invoke-static {v0}, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->access$000(Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;)Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    iget-object v0, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle$1;->this$0:Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;

    # getter for: Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mParent:Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget;
    invoke-static {v0}, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->access$000(Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;)Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/widget/incomingwidget/IncomingCallImageWidget;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle$1;->this$0:Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;

    # getter for: Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mArrow:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->access$100(Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle$1;->this$0:Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;

    # getter for: Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mEnableArrowAnimation:Z
    invoke-static {v0}, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->access$200(Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle$1;->this$0:Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;

    # getter for: Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mHandleType:I
    invoke-static {v0}, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->access$300(Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle$1;->this$0:Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;

    # getter for: Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mArrowAnimationIndex:I
    invoke-static {v0}, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->access$400(Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;)I

    move-result v0

    iget-object v1, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle$1;->this$0:Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;

    # getter for: Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mArrowLeftAnimation:[I
    invoke-static {v1}, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->access$500(Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;)[I

    move-result-object v1

    array-length v1, v1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle$1;->this$0:Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;

    # setter for: Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mArrowAnimationIndex:I
    invoke-static {v0, v2}, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->access$402(Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;I)I

    :cond_2
    iget-object v0, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle$1;->this$0:Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;

    # getter for: Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mArrow:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->access$100(Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle$1;->this$0:Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;

    # getter for: Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mArrowLeftAnimation:[I
    invoke-static {v1}, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->access$500(Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;)[I

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle$1;->this$0:Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;

    # operator++ for: Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mArrowAnimationIndex:I
    invoke-static {v2}, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->access$408(Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;)I

    move-result v2

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle$1;->this$0:Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;

    # getter for: Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->access$600(Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle$1;->this$0:Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;

    # getter for: Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mArrowAnimationIndex:I
    invoke-static {v0}, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->access$400(Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;)I

    move-result v0

    iget-object v1, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle$1;->this$0:Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;

    # getter for: Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mArrowRightAnimation:[I
    invoke-static {v1}, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->access$700(Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;)[I

    move-result-object v1

    array-length v1, v1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle$1;->this$0:Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;

    # setter for: Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mArrowAnimationIndex:I
    invoke-static {v0, v2}, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->access$402(Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;I)I

    :cond_3
    iget-object v0, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle$1;->this$0:Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;

    # getter for: Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mArrow:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->access$100(Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle$1;->this$0:Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;

    # getter for: Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mArrowRightAnimation:[I
    invoke-static {v1}, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->access$700(Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;)[I

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle$1;->this$0:Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;

    # operator++ for: Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mArrowAnimationIndex:I
    invoke-static {v2}, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->access$408(Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;)I

    move-result v2

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle$1;->this$0:Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;

    # getter for: Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->access$600(Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle$1;->this$0:Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;

    sget-object v1, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle$HandleState;->NORMAL:Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle$HandleState;

    invoke-virtual {v0, v1}, Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle;->setHandleState(Lcom/android/phone/widget/incomingwidget/IncomingCallImageHandle$HandleState;)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x12c -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

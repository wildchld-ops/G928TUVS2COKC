.class Lcom/android/internal/policy/impl/MultiPhoneWindow$5;
.super Landroid/os/Handler;
.source "MultiPhoneWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/MultiPhoneWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/MultiPhoneWindow;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$5;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    const/high16 v5, 0x800000

    const/4 v4, 0x4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$5;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$5;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->getState()I
    invoke-static {v2}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$300(Lcom/android/internal/policy/impl/MultiPhoneWindow;)I

    move-result v2

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->requestState(I)V
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$2500(Lcom/android/internal/policy/impl/MultiPhoneWindow;I)V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$5;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-static {v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$4900(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    invoke-virtual {v0, v4, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$5;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    iget-object v2, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$5;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->getState()I
    invoke-static {v2}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$300(Lcom/android/internal/policy/impl/MultiPhoneWindow;)I

    move-result v2

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->requestState(I)V
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$2500(Lcom/android/internal/policy/impl/MultiPhoneWindow;I)V

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$5;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-static {v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$4900(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v0

    invoke-virtual {v0, v4, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    invoke-virtual {v0, v5, v2}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->setOption(IZ)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$5;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->initStackBound(ZZ)V
    invoke-static {v1, v3, v3}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$2200(Lcom/android/internal/policy/impl/MultiPhoneWindow;ZZ)V

    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$5;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$5;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->getMultiWindowStyle()Lcom/samsung/android/multiwindow/MultiWindowStyle;
    invoke-static {v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$4900(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/samsung/android/multiwindow/MultiWindowStyle;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$5;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1300(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x105022d

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v4, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$5;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mStatusBarHeight:I
    invoke-static {v4}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$3400(Lcom/android/internal/policy/impl/MultiPhoneWindow;)I

    move-result v4

    add-int/2addr v1, v4

    :goto_1
    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->setStackBoundInScreen(IIZ)V
    invoke-static {v3, v2, v1, v2}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$5700(Lcom/android/internal/policy/impl/MultiPhoneWindow;IIZ)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$5;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    iget-object v3, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$5;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->getState()I
    invoke-static {v3}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$300(Lcom/android/internal/policy/impl/MultiPhoneWindow;)I

    move-result v3

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow;->requestState(I)V
    invoke-static {v1, v3}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$2500(Lcom/android/internal/policy/impl/MultiPhoneWindow;I)V

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$5;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :pswitch_4
    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$5;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMinimizeAnimator:Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;
    invoke-static {v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$5200(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;

    move-result-object v2

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/view/MotionEvent;

    invoke-virtual {v2, v1}, Lcom/android/internal/policy/impl/multiwindow/MinimizeAnimator;->onTouchEvent(Landroid/view/MotionEvent;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

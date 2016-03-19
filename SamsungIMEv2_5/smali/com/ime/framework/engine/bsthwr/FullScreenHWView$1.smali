.class Lcom/ime/framework/engine/bsthwr/FullScreenHWView$1;
.super Landroid/os/Handler;
.source "FullScreenHWView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ime/framework/engine/bsthwr/FullScreenHWView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ime/framework/engine/bsthwr/FullScreenHWView;


# direct methods
.method constructor <init>(Lcom/ime/framework/engine/bsthwr/FullScreenHWView;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/framework/engine/bsthwr/FullScreenHWView$1;->this$0:Lcom/ime/framework/engine/bsthwr/FullScreenHWView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/16 v3, 0x10

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/ime/framework/engine/bsthwr/FullScreenHWView$1;->this$0:Lcom/ime/framework/engine/bsthwr/FullScreenHWView;

    invoke-virtual {v1}, Lcom/ime/framework/engine/bsthwr/FullScreenHWView;->getHWManager()Lcom/ime/framework/engine/bsthwr/HWManager;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ime/framework/engine/bsthwr/FullScreenHWView$1;->this$0:Lcom/ime/framework/engine/bsthwr/FullScreenHWView;

    invoke-virtual {v1}, Lcom/ime/framework/engine/bsthwr/FullScreenHWView;->getHWManager()Lcom/ime/framework/engine/bsthwr/HWManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ime/framework/engine/bsthwr/HWManager;->getWindow()Lcom/ime/framework/engine/bsthwr/FullScreenHWindow;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ime/framework/engine/bsthwr/FullScreenHWView$1;->this$0:Lcom/ime/framework/engine/bsthwr/FullScreenHWView;

    invoke-virtual {v1}, Lcom/ime/framework/engine/bsthwr/FullScreenHWView;->getHWManager()Lcom/ime/framework/engine/bsthwr/HWManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ime/framework/engine/bsthwr/HWManager;->getWindow()Lcom/ime/framework/engine/bsthwr/FullScreenHWindow;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ime/framework/engine/bsthwr/FullScreenHWindow;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Lcom/ime/framework/engine/bsthwr/FullScreenHWView$1;->this$0:Lcom/ime/framework/engine/bsthwr/FullScreenHWView;

    invoke-virtual {v1}, Lcom/ime/framework/engine/bsthwr/FullScreenHWView;->getHWManager()Lcom/ime/framework/engine/bsthwr/HWManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ime/framework/engine/bsthwr/HWManager;->getWindow()Lcom/ime/framework/engine/bsthwr/FullScreenHWindow;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ime/framework/engine/bsthwr/FullScreenHWindow;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0, v4}, Lcom/ime/framework/engine/bsthwr/FullScreenHWView$1;->sendEmptyMessage(I)Z

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/ime/framework/engine/bsthwr/FullScreenHWView$1;->this$0:Lcom/ime/framework/engine/bsthwr/FullScreenHWView;

    invoke-virtual {v1}, Lcom/ime/framework/engine/bsthwr/FullScreenHWView;->clear()V

    iget-object v1, p0, Lcom/ime/framework/engine/bsthwr/FullScreenHWView$1;->this$0:Lcom/ime/framework/engine/bsthwr/FullScreenHWView;

    # setter for: Lcom/ime/framework/engine/bsthwr/FullScreenHWView;->isLongPressed:Z
    invoke-static {v1, v2}, Lcom/ime/framework/engine/bsthwr/FullScreenHWView;->access$002(Lcom/ime/framework/engine/bsthwr/FullScreenHWView;Z)Z

    iget-object v1, p0, Lcom/ime/framework/engine/bsthwr/FullScreenHWView$1;->this$0:Lcom/ime/framework/engine/bsthwr/FullScreenHWView;

    invoke-virtual {v1}, Lcom/ime/framework/engine/bsthwr/FullScreenHWView;->getHWManager()Lcom/ime/framework/engine/bsthwr/HWManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ime/framework/engine/bsthwr/HWManager;->getWindow()Lcom/ime/framework/engine/bsthwr/FullScreenHWindow;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ime/framework/engine/bsthwr/FullScreenHWindow;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0, v4}, Lcom/ime/framework/engine/bsthwr/FullScreenHWView$1;->sendEmptyMessage(I)Z

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/ime/framework/engine/bsthwr/FullScreenHWView$1;->this$0:Lcom/ime/framework/engine/bsthwr/FullScreenHWView;

    # getter for: Lcom/ime/framework/engine/bsthwr/FullScreenHWView;->evDown:Landroid/view/MotionEvent;
    invoke-static {v1}, Lcom/ime/framework/engine/bsthwr/FullScreenHWView;->access$100(Lcom/ime/framework/engine/bsthwr/FullScreenHWView;)Landroid/view/MotionEvent;

    move-result-object v1

    if-eqz v1, :cond_2

    :try_start_0
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v1

    iget-object v2, p0, Lcom/ime/framework/engine/bsthwr/FullScreenHWView$1;->this$0:Lcom/ime/framework/engine/bsthwr/FullScreenHWView;

    # getter for: Lcom/ime/framework/engine/bsthwr/FullScreenHWView;->evDown:Landroid/view/MotionEvent;
    invoke-static {v2}, Lcom/ime/framework/engine/bsthwr/FullScreenHWView;->access$100(Lcom/ime/framework/engine/bsthwr/FullScreenHWView;)Landroid/view/MotionEvent;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/ime/framework/engine/bsthwr/FullScreenHWView$1;->this$0:Lcom/ime/framework/engine/bsthwr/FullScreenHWView;

    # getter for: Lcom/ime/framework/engine/bsthwr/FullScreenHWView;->isLongPressed:Z
    invoke-static {v1}, Lcom/ime/framework/engine/bsthwr/FullScreenHWView;->access$000(Lcom/ime/framework/engine/bsthwr/FullScreenHWView;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/ime/framework/engine/bsthwr/FullScreenHWView$1;->this$0:Lcom/ime/framework/engine/bsthwr/FullScreenHWView;

    # getter for: Lcom/ime/framework/engine/bsthwr/FullScreenHWView;->TAP_TIMEOUT:I
    invoke-static {v2}, Lcom/ime/framework/engine/bsthwr/FullScreenHWView;->access$300(Lcom/ime/framework/engine/bsthwr/FullScreenHWView;)I

    move-result v2

    add-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {p0, v1, v2, v3}, Lcom/ime/framework/engine/bsthwr/FullScreenHWView$1;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/ime/framework/engine/bsthwr/FullScreenHWView$1;->this$0:Lcom/ime/framework/engine/bsthwr/FullScreenHWView;

    # getter for: Lcom/ime/framework/engine/bsthwr/FullScreenHWView;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/ime/framework/engine/bsthwr/FullScreenHWView;->access$200(Lcom/ime/framework/engine/bsthwr/FullScreenHWView;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Injecting to another application requires INJECT_EVENTS permission"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/ime/framework/engine/bsthwr/FullScreenHWView$1;->sendEmptyMessage(I)Z

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0, v5}, Lcom/ime/framework/engine/bsthwr/FullScreenHWView$1;->sendEmptyMessage(I)Z

    goto :goto_0

    :pswitch_4
    iget-object v1, p0, Lcom/ime/framework/engine/bsthwr/FullScreenHWView$1;->this$0:Lcom/ime/framework/engine/bsthwr/FullScreenHWView;

    # getter for: Lcom/ime/framework/engine/bsthwr/FullScreenHWView;->evUp:Landroid/view/MotionEvent;
    invoke-static {v1}, Lcom/ime/framework/engine/bsthwr/FullScreenHWView;->access$400(Lcom/ime/framework/engine/bsthwr/FullScreenHWView;)Landroid/view/MotionEvent;

    move-result-object v1

    if-eqz v1, :cond_4

    :try_start_1
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v1

    iget-object v2, p0, Lcom/ime/framework/engine/bsthwr/FullScreenHWView$1;->this$0:Lcom/ime/framework/engine/bsthwr/FullScreenHWView;

    # getter for: Lcom/ime/framework/engine/bsthwr/FullScreenHWView;->evUp:Landroid/view/MotionEvent;
    invoke-static {v2}, Lcom/ime/framework/engine/bsthwr/FullScreenHWView;->access$400(Lcom/ime/framework/engine/bsthwr/FullScreenHWView;)Landroid/view/MotionEvent;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    iget-object v1, p0, Lcom/ime/framework/engine/bsthwr/FullScreenHWView$1;->this$0:Lcom/ime/framework/engine/bsthwr/FullScreenHWView;

    invoke-virtual {v1}, Lcom/ime/framework/engine/bsthwr/FullScreenHWView;->getHWManager()Lcom/ime/framework/engine/bsthwr/HWManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ime/framework/engine/bsthwr/HWManager;->initFullViewMeasureHeight()V

    :cond_4
    invoke-virtual {p0, v5}, Lcom/ime/framework/engine/bsthwr/FullScreenHWView$1;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :catch_1
    move-exception v0

    iget-object v1, p0, Lcom/ime/framework/engine/bsthwr/FullScreenHWView$1;->this$0:Lcom/ime/framework/engine/bsthwr/FullScreenHWView;

    # getter for: Lcom/ime/framework/engine/bsthwr/FullScreenHWView;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/ime/framework/engine/bsthwr/FullScreenHWView;->access$200(Lcom/ime/framework/engine/bsthwr/FullScreenHWView;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Injecting to another application requires INJECT_EVENTS permission"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :pswitch_5
    iget-object v1, p0, Lcom/ime/framework/engine/bsthwr/FullScreenHWView$1;->this$0:Lcom/ime/framework/engine/bsthwr/FullScreenHWView;

    invoke-virtual {v1}, Lcom/ime/framework/engine/bsthwr/FullScreenHWView;->getHWManager()Lcom/ime/framework/engine/bsthwr/HWManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ime/framework/engine/bsthwr/HWManager;->getWindow()Lcom/ime/framework/engine/bsthwr/FullScreenHWindow;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ime/framework/engine/bsthwr/FullScreenHWindow;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/Window;->clearFlags(I)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_3
    .end packed-switch
.end method

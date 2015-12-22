.class public Landroid/widget/HoverPopupWindow$TouchablePopupContainer;
.super Landroid/widget/FrameLayout;
.source "HoverPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/HoverPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "TouchablePopupContainer"
.end annotation


# static fields
.field private static final MSG_TIMEOUT:I = 0x1

.field private static final TIMEOUT_DELAY:I = 0x1f4

.field private static final TIMEOUT_DELAY_LONG:I = 0x7d0


# instance fields
.field protected mContainerDismissHandler:Landroid/os/Handler;

.field private mDismissPopupRunnable:Ljava/lang/Runnable;

.field private mIsHoverExitCalled:Z

.field final synthetic this$0:Landroid/widget/HoverPopupWindow;


# direct methods
.method public constructor <init>(Landroid/widget/HoverPopupWindow;Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Landroid/widget/HoverPopupWindow$TouchablePopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/HoverPopupWindow$TouchablePopupContainer;->mIsHoverExitCalled:Z

    iput-object v1, p0, Landroid/widget/HoverPopupWindow$TouchablePopupContainer;->mDismissPopupRunnable:Ljava/lang/Runnable;

    iput-object v1, p0, Landroid/widget/HoverPopupWindow$TouchablePopupContainer;->mContainerDismissHandler:Landroid/os/Handler;

    new-instance v0, Landroid/widget/HoverPopupWindow$TouchablePopupContainer$1;

    invoke-direct {v0, p0, p1}, Landroid/widget/HoverPopupWindow$TouchablePopupContainer$1;-><init>(Landroid/widget/HoverPopupWindow$TouchablePopupContainer;Landroid/widget/HoverPopupWindow;)V

    iput-object v0, p0, Landroid/widget/HoverPopupWindow$TouchablePopupContainer;->mContainerDismissHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v2, 0xa

    if-ne v0, v2, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    const/high16 v4, -0x40000000    # -2.0f

    invoke-virtual {p0, v2, v3, v4}, Landroid/widget/HoverPopupWindow$TouchablePopupContainer;->pointInView(FFF)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/widget/HoverPopupWindow$TouchablePopupContainer;->mIsHoverExitCalled:Z

    new-instance v2, Landroid/widget/HoverPopupWindow$TouchablePopupContainer$3;

    invoke-direct {v2, p0}, Landroid/widget/HoverPopupWindow$TouchablePopupContainer$3;-><init>(Landroid/widget/HoverPopupWindow$TouchablePopupContainer;)V

    iput-object v2, p0, Landroid/widget/HoverPopupWindow$TouchablePopupContainer;->mDismissPopupRunnable:Ljava/lang/Runnable;

    iget-object v2, p0, Landroid/widget/HoverPopupWindow$TouchablePopupContainer;->mDismissPopupRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x64

    invoke-virtual {p0, v2, v4, v5}, Landroid/widget/HoverPopupWindow$TouchablePopupContainer;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    :goto_1
    return v1

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    iget-object v2, p0, Landroid/widget/HoverPopupWindow$TouchablePopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    invoke-virtual {v2}, Landroid/widget/HoverPopupWindow;->dismiss()V

    goto :goto_1

    :cond_2
    const/4 v2, 0x7

    if-ne v0, v2, :cond_0

    iget-object v2, p0, Landroid/widget/HoverPopupWindow$TouchablePopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mToolType:I
    invoke-static {v2}, Landroid/widget/HoverPopupWindow;->access$2000(Landroid/widget/HoverPopupWindow;)I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    invoke-virtual {p0}, Landroid/widget/HoverPopupWindow$TouchablePopupContainer;->resetTimeout()V

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    iget-boolean v1, p0, Landroid/widget/HoverPopupWindow$TouchablePopupContainer;->mIsHoverExitCalled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/HoverPopupWindow$TouchablePopupContainer;->mDismissPopupRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/HoverPopupWindow$TouchablePopupContainer;->mDismissPopupRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroid/widget/HoverPopupWindow$TouchablePopupContainer;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/widget/HoverPopupWindow$TouchablePopupContainer;->mDismissPopupRunnable:Ljava/lang/Runnable;

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/HoverPopupWindow$TouchablePopupContainer;->mIsHoverExitCalled:Z

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Landroid/widget/HoverPopupWindow$TouchablePopupContainer;->this$0:Landroid/widget/HoverPopupWindow;

    # getter for: Landroid/widget/HoverPopupWindow;->mDismissTouchableHPWOnActionUp:Z
    invoke-static {v1}, Landroid/widget/HoverPopupWindow;->access$1900(Landroid/widget/HoverPopupWindow;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Landroid/widget/HoverPopupWindow$TouchablePopupContainer$2;

    invoke-direct {v1, p0}, Landroid/widget/HoverPopupWindow$TouchablePopupContainer$2;-><init>(Landroid/widget/HoverPopupWindow$TouchablePopupContainer;)V

    const-wide/16 v2, 0x64

    invoke-virtual {p0, v1, v2, v3}, Landroid/widget/HoverPopupWindow$TouchablePopupContainer;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return v0
.end method

.method public resetTimeout()V
    .locals 4

    const/4 v2, 0x1

    iget-object v0, p0, Landroid/widget/HoverPopupWindow$TouchablePopupContainer;->mContainerDismissHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/HoverPopupWindow$TouchablePopupContainer;->mContainerDismissHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/HoverPopupWindow$TouchablePopupContainer;->mContainerDismissHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    if-eqz v0, :cond_3

    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v1, "gt5note"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v1, "noble"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    iget-object v0, p0, Landroid/widget/HoverPopupWindow$TouchablePopupContainer;->mContainerDismissHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/widget/HoverPopupWindow$TouchablePopupContainer;->mContainerDismissHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Landroid/widget/HoverPopupWindow$TouchablePopupContainer;->mContainerDismissHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/widget/HoverPopupWindow$TouchablePopupContainer;->mContainerDismissHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

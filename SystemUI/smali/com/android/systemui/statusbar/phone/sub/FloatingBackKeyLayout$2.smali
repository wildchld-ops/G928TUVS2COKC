.class Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$2;
.super Ljava/lang/Object;
.source "FloatingBackKeyLayout.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$2;->this$0:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10

    const/16 v9, 0xf

    const/4 v8, 0x3

    const/4 v5, 0x0

    const/4 v7, 0x2

    const/4 v4, 0x1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    :cond_0
    :goto_0
    move v4, v5

    :goto_1
    return v4

    :pswitch_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$2;->this$0:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    # setter for: Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->isDimmed:Z
    invoke-static {v4, v5}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->access$202(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;Z)Z

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$2;->this$0:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    # getter for: Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mFloatingBack:Lcom/android/systemui/statusbar/policy/KeyButtonView;
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->access$300(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)Lcom/android/systemui/statusbar/policy/KeyButtonView;

    move-result-object v4

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v4, v6}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setAlpha(F)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$2;->this$0:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    # getter for: Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->access$500(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)Landroid/os/Handler;

    move-result-object v4

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$2;->this$0:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    # getter for: Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mDimmedTimeOut:Ljava/lang/Runnable;
    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->access$400(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)Ljava/lang/Runnable;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$2;->this$0:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    # getter for: Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->access$500(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)Landroid/os/Handler;

    move-result-object v4

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$2;->this$0:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    # getter for: Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mDimmedTimeOut:Ljava/lang/Runnable;
    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->access$400(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)Ljava/lang/Runnable;

    move-result-object v6

    const-wide/16 v8, 0xbb8

    invoke-virtual {v4, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$2;->this$0:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    float-to-int v6, v6

    # setter for: Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mInitX:I
    invoke-static {v4, v6}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->access$602(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;I)I

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$2;->this$0:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    float-to-int v6, v6

    # setter for: Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mInitY:I
    invoke-static {v4, v6}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->access$702(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;I)I

    goto :goto_0

    :pswitch_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    float-to-int v0, v6

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    float-to-int v2, v6

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$2;->this$0:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    # getter for: Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mState:I
    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->access$000(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)I

    move-result v6

    if-nez v6, :cond_3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$2;->this$0:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    # invokes: Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->isLeft()Z
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->access$800(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$2;->this$0:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    # getter for: Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mInitX:I
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->access$600(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)I

    move-result v4

    if-gt v0, v4, :cond_2

    :cond_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$2;->this$0:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    # invokes: Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->isLeft()Z
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->access$800(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$2;->this$0:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    # getter for: Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mInitX:I
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->access$600(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)I

    move-result v4

    if-ge v0, v4, :cond_0

    :cond_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$2;->this$0:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    # invokes: Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->open()V
    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->access$900(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->cancel()V

    goto/16 :goto_0

    :cond_3
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$2;->this$0:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    # getter for: Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mState:I
    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->access$000(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)I

    move-result v6

    if-eq v6, v8, :cond_0

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$2;->this$0:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    # getter for: Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mState:I
    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->access$000(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)I

    move-result v6

    if-ne v6, v4, :cond_5

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$2;->this$0:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    # getter for: Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mInitX:I
    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->access$600(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)I

    move-result v6

    sub-int v6, v0, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-gt v6, v9, :cond_4

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$2;->this$0:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    # getter for: Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mInitY:I
    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->access$700(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)I

    move-result v6

    sub-int v6, v2, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-le v6, v9, :cond_0

    :cond_4
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$2;->this$0:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    # getter for: Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->access$1000(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$2;->this$0:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    # getter for: Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mFloatingBack:Lcom/android/systemui/statusbar/policy/KeyButtonView;
    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->access$300(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)Lcom/android/systemui/statusbar/policy/KeyButtonView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int v6, v0, v6

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$2;->this$0:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    # getter for: Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->access$1000(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$2;->this$0:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    # getter for: Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mFloatingBack:Lcom/android/systemui/statusbar/policy/KeyButtonView;
    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->access$300(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)Lcom/android/systemui/statusbar/policy/KeyButtonView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int v6, v2, v6

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$2;->this$0:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    # setter for: Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mState:I
    invoke-static {v5, v7}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->access$002(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;I)I

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$2;->this$0:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    # invokes: Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->updateWindowParams()V
    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->access$1100(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)V

    goto/16 :goto_1

    :cond_5
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$2;->this$0:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    # getter for: Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mState:I
    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->access$000(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)I

    move-result v6

    if-ne v6, v7, :cond_0

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$2;->this$0:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    # getter for: Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->access$1000(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$2;->this$0:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    # getter for: Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mFloatingBack:Lcom/android/systemui/statusbar/policy/KeyButtonView;
    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->access$300(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)Lcom/android/systemui/statusbar/policy/KeyButtonView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int v6, v0, v6

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$2;->this$0:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    # getter for: Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->access$1000(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$2;->this$0:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    # getter for: Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mFloatingBack:Lcom/android/systemui/statusbar/policy/KeyButtonView;
    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->access$300(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)Lcom/android/systemui/statusbar/policy/KeyButtonView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    sub-int v6, v2, v6

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$2;->this$0:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    # invokes: Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->updateWindowParams()V
    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->access$1100(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)V

    goto/16 :goto_1

    :pswitch_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    float-to-int v1, v6

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    float-to-int v3, v6

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$2;->this$0:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    # getter for: Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mState:I
    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->access$000(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)I

    move-result v6

    if-ne v6, v7, :cond_0

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$2;->this$0:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    # getter for: Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mDisplayWidth:I
    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->access$1200(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    if-ge v1, v6, :cond_7

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$2;->this$0:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    # getter for: Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mDisplayHeight:I
    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->access$1300(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    if-ge v3, v6, :cond_6

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$2;->this$0:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    # setter for: Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mPosition:I
    invoke-static {v6, v5}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->access$1402(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;I)I

    :goto_2
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$2;->this$0:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    # setter for: Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mState:I
    invoke-static {v6, v4}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->access$002(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;I)I

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$2;->this$0:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    # invokes: Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->moveToPositionAnim(Landroid/view/MotionEvent;)V
    invoke-static {v4, p2}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->access$1500(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;Landroid/view/MotionEvent;)V

    invoke-virtual {p2}, Landroid/view/MotionEvent;->cancel()V

    goto/16 :goto_0

    :cond_6
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$2;->this$0:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    # setter for: Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mPosition:I
    invoke-static {v6, v4}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->access$1402(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;I)I

    goto :goto_2

    :cond_7
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$2;->this$0:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    # getter for: Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mDisplayHeight:I
    invoke-static {v6}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->access$1300(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;)I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    if-ge v3, v6, :cond_8

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$2;->this$0:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    # setter for: Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mPosition:I
    invoke-static {v6, v7}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->access$1402(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;I)I

    goto :goto_2

    :cond_8
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout$2;->this$0:Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;

    # setter for: Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->mPosition:I
    invoke-static {v6, v8}, Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;->access$1402(Lcom/android/systemui/statusbar/phone/sub/FloatingBackKeyLayout;I)I

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

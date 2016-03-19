.class Lcom/ime/framework/view/PopupKeyboardView$2;
.super Ljava/lang/Object;
.source "PopupKeyboardView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ime/framework/view/PopupKeyboardView;->getFloatingMoveButtonTouchListener()Landroid/view/View$OnTouchListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ime/framework/view/PopupKeyboardView;


# direct methods
.method constructor <init>(Lcom/ime/framework/view/PopupKeyboardView;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/framework/view/PopupKeyboardView$2;->this$0:Lcom/ime/framework/view/PopupKeyboardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return v6

    :pswitch_1
    iget-object v4, p0, Lcom/ime/framework/view/PopupKeyboardView$2;->this$0:Lcom/ime/framework/view/PopupKeyboardView;

    # getter for: Lcom/ime/framework/view/PopupKeyboardView;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v4}, Lcom/ime/framework/view/PopupKeyboardView;->access$400(Lcom/ime/framework/view/PopupKeyboardView;)Lcom/ime/framework/common/InputManager;

    move-result-object v4

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->isChnMode()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/ime/framework/view/PopupKeyboardView$2;->this$0:Lcom/ime/framework/view/PopupKeyboardView;

    # getter for: Lcom/ime/framework/view/PopupKeyboardView;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v4}, Lcom/ime/framework/view/PopupKeyboardView;->access$400(Lcom/ime/framework/view/PopupKeyboardView;)Lcom/ime/framework/common/InputManager;

    move-result-object v4

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->getToolbarPopupWindow()Landroid/widget/PopupWindow;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_1
    iget-object v4, p0, Lcom/ime/framework/view/PopupKeyboardView$2;->this$0:Lcom/ime/framework/view/PopupKeyboardView;

    # getter for: Lcom/ime/framework/view/PopupKeyboardView;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v4}, Lcom/ime/framework/view/PopupKeyboardView;->access$400(Lcom/ime/framework/view/PopupKeyboardView;)Lcom/ime/framework/common/InputManager;

    move-result-object v4

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->getCtrlPressedState()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/ime/framework/view/PopupKeyboardView$2;->this$0:Lcom/ime/framework/view/PopupKeyboardView;

    # getter for: Lcom/ime/framework/view/PopupKeyboardView;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v4}, Lcom/ime/framework/view/PopupKeyboardView;->access$400(Lcom/ime/framework/view/PopupKeyboardView;)Lcom/ime/framework/common/InputManager;

    move-result-object v4

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->isTabletMode()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/ime/framework/view/PopupKeyboardView$2;->this$0:Lcom/ime/framework/view/PopupKeyboardView;

    # getter for: Lcom/ime/framework/view/PopupKeyboardView;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v4}, Lcom/ime/framework/view/PopupKeyboardView;->access$400(Lcom/ime/framework/view/PopupKeyboardView;)Lcom/ime/framework/common/InputManager;

    move-result-object v4

    invoke-interface {v4, v6}, Lcom/ime/framework/common/InputManager;->setCtrlPressedState(Z)V

    iget-object v4, p0, Lcom/ime/framework/view/PopupKeyboardView$2;->this$0:Lcom/ime/framework/view/PopupKeyboardView;

    # getter for: Lcom/ime/framework/view/PopupKeyboardView;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v4}, Lcom/ime/framework/view/PopupKeyboardView;->access$400(Lcom/ime/framework/view/PopupKeyboardView;)Lcom/ime/framework/common/InputManager;

    move-result-object v4

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->updateCtrlState()V

    :cond_2
    iget-object v4, p0, Lcom/ime/framework/view/PopupKeyboardView$2;->this$0:Lcom/ime/framework/view/PopupKeyboardView;

    # setter for: Lcom/ime/framework/view/PopupKeyboardView;->mFloatingMoveButtonTouched:Z
    invoke-static {v4, v5}, Lcom/ime/framework/view/PopupKeyboardView;->access$502(Lcom/ime/framework/view/PopupKeyboardView;Z)Z

    iget-object v4, p0, Lcom/ime/framework/view/PopupKeyboardView$2;->this$0:Lcom/ime/framework/view/PopupKeyboardView;

    # invokes: Lcom/ime/framework/view/PopupKeyboardView;->setFloatingMoveButtonBackground(Z)V
    invoke-static {v4, v5}, Lcom/ime/framework/view/PopupKeyboardView;->access$600(Lcom/ime/framework/view/PopupKeyboardView;Z)V

    iget-object v4, p0, Lcom/ime/framework/view/PopupKeyboardView$2;->this$0:Lcom/ime/framework/view/PopupKeyboardView;

    # getter for: Lcom/ime/framework/view/PopupKeyboardView;->mSplitLeftMoveButton:Landroid/view/View;
    invoke-static {v4}, Lcom/ime/framework/view/PopupKeyboardView;->access$700(Lcom/ime/framework/view/PopupKeyboardView;)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f0206a1

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v4, p0, Lcom/ime/framework/view/PopupKeyboardView$2;->this$0:Lcom/ime/framework/view/PopupKeyboardView;

    # getter for: Lcom/ime/framework/view/PopupKeyboardView;->mSplitRightMoveButton:Landroid/view/View;
    invoke-static {v4}, Lcom/ime/framework/view/PopupKeyboardView;->access$800(Lcom/ime/framework/view/PopupKeyboardView;)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f0206a5

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    new-instance v1, Landroid/graphics/Point;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-direct {v1, v4, v5}, Landroid/graphics/Point;-><init>(II)V

    iget-object v4, p0, Lcom/ime/framework/view/PopupKeyboardView$2;->this$0:Lcom/ime/framework/view/PopupKeyboardView;

    # getter for: Lcom/ime/framework/view/PopupKeyboardView;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v4}, Lcom/ime/framework/view/PopupKeyboardView;->access$400(Lcom/ime/framework/view/PopupKeyboardView;)Lcom/ime/framework/common/InputManager;

    move-result-object v4

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->getPopupKeyboardView()Lcom/ime/framework/view/PopupKeyboardView;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/ime/framework/view/PopupKeyboardView$2;->this$0:Lcom/ime/framework/view/PopupKeyboardView;

    # getter for: Lcom/ime/framework/view/PopupKeyboardView;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v4}, Lcom/ime/framework/view/PopupKeyboardView;->access$400(Lcom/ime/framework/view/PopupKeyboardView;)Lcom/ime/framework/common/InputManager;

    move-result-object v4

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->getPopupKeyboardView()Lcom/ime/framework/view/PopupKeyboardView;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/ime/framework/view/PopupKeyboardView;->setMovingDownPoint(Landroid/graphics/Point;)V

    :cond_3
    iget-object v4, p0, Lcom/ime/framework/view/PopupKeyboardView$2;->this$0:Lcom/ime/framework/view/PopupKeyboardView;

    # getter for: Lcom/ime/framework/view/PopupKeyboardView;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v4}, Lcom/ime/framework/view/PopupKeyboardView;->access$400(Lcom/ime/framework/view/PopupKeyboardView;)Lcom/ime/framework/common/InputManager;

    move-result-object v4

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->dismissPopupKeyboard()V

    goto/16 :goto_0

    :pswitch_2
    iget-object v4, p0, Lcom/ime/framework/view/PopupKeyboardView$2;->this$0:Lcom/ime/framework/view/PopupKeyboardView;

    # getter for: Lcom/ime/framework/view/PopupKeyboardView;->mFloatingMoveButtonTouched:Z
    invoke-static {v4}, Lcom/ime/framework/view/PopupKeyboardView;->access$500(Lcom/ime/framework/view/PopupKeyboardView;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/ime/framework/view/PopupKeyboardView$2;->this$0:Lcom/ime/framework/view/PopupKeyboardView;

    # getter for: Lcom/ime/framework/view/PopupKeyboardView;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v4}, Lcom/ime/framework/view/PopupKeyboardView;->access$400(Lcom/ime/framework/view/PopupKeyboardView;)Lcom/ime/framework/common/InputManager;

    move-result-object v4

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->getPopupKeyboardView()Lcom/ime/framework/view/PopupKeyboardView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ime/framework/view/PopupKeyboardView;->getFloatingView()Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/ime/framework/view/AbstractKeyboardView;

    move-object v2, v4

    check-cast v2, Lcom/ime/framework/view/AbstractKeyboardView;

    if-eqz v2, :cond_4

    invoke-virtual {v2, p2}, Lcom/ime/framework/view/AbstractKeyboardView;->moveUpPopupKeyboard(Landroid/view/MotionEvent;)V

    :cond_4
    iget-object v4, p0, Lcom/ime/framework/view/PopupKeyboardView$2;->this$0:Lcom/ime/framework/view/PopupKeyboardView;

    # getter for: Lcom/ime/framework/view/PopupKeyboardView;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v4}, Lcom/ime/framework/view/PopupKeyboardView;->access$400(Lcom/ime/framework/view/PopupKeyboardView;)Lcom/ime/framework/common/InputManager;

    move-result-object v4

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->getPopupKeyboardView()Lcom/ime/framework/view/PopupKeyboardView;

    move-result-object v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/ime/framework/view/PopupKeyboardView$2;->this$0:Lcom/ime/framework/view/PopupKeyboardView;

    # getter for: Lcom/ime/framework/view/PopupKeyboardView;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v4}, Lcom/ime/framework/view/PopupKeyboardView;->access$400(Lcom/ime/framework/view/PopupKeyboardView;)Lcom/ime/framework/common/InputManager;

    move-result-object v4

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->getPopupKeyboardView()Lcom/ime/framework/view/PopupKeyboardView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ime/framework/view/PopupKeyboardView;->releaseDownPoint()V

    :cond_5
    iget-object v4, p0, Lcom/ime/framework/view/PopupKeyboardView$2;->this$0:Lcom/ime/framework/view/PopupKeyboardView;

    # setter for: Lcom/ime/framework/view/PopupKeyboardView;->mFloatingMoveButtonTouched:Z
    invoke-static {v4, v6}, Lcom/ime/framework/view/PopupKeyboardView;->access$502(Lcom/ime/framework/view/PopupKeyboardView;Z)Z

    iget-object v4, p0, Lcom/ime/framework/view/PopupKeyboardView$2;->this$0:Lcom/ime/framework/view/PopupKeyboardView;

    # invokes: Lcom/ime/framework/view/PopupKeyboardView;->setFloatingMoveButtonBackground(Z)V
    invoke-static {v4, v6}, Lcom/ime/framework/view/PopupKeyboardView;->access$600(Lcom/ime/framework/view/PopupKeyboardView;Z)V

    iget-object v4, p0, Lcom/ime/framework/view/PopupKeyboardView$2;->this$0:Lcom/ime/framework/view/PopupKeyboardView;

    # getter for: Lcom/ime/framework/view/PopupKeyboardView;->mSplitLeftMoveButton:Landroid/view/View;
    invoke-static {v4}, Lcom/ime/framework/view/PopupKeyboardView;->access$700(Lcom/ime/framework/view/PopupKeyboardView;)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f0206a0

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v4, p0, Lcom/ime/framework/view/PopupKeyboardView$2;->this$0:Lcom/ime/framework/view/PopupKeyboardView;

    # getter for: Lcom/ime/framework/view/PopupKeyboardView;->mSplitRightMoveButton:Landroid/view/View;
    invoke-static {v4}, Lcom/ime/framework/view/PopupKeyboardView;->access$800(Lcom/ime/framework/view/PopupKeyboardView;)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f0206a4

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v4, p0, Lcom/ime/framework/view/PopupKeyboardView$2;->this$0:Lcom/ime/framework/view/PopupKeyboardView;

    # getter for: Lcom/ime/framework/view/PopupKeyboardView;->mFloatingMoveButtonTouched:Z
    invoke-static {v4}, Lcom/ime/framework/view/PopupKeyboardView;->access$500(Lcom/ime/framework/view/PopupKeyboardView;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/ime/framework/view/PopupKeyboardView$2;->this$0:Lcom/ime/framework/view/PopupKeyboardView;

    # getter for: Lcom/ime/framework/view/PopupKeyboardView;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v4}, Lcom/ime/framework/view/PopupKeyboardView;->access$400(Lcom/ime/framework/view/PopupKeyboardView;)Lcom/ime/framework/common/InputManager;

    move-result-object v4

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->getPopupKeyboardView()Lcom/ime/framework/view/PopupKeyboardView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/ime/framework/view/PopupKeyboardView;->getFloatingView()Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/ime/framework/view/AbstractKeyboardView;

    move-object v2, v4

    check-cast v2, Lcom/ime/framework/view/AbstractKeyboardView;

    if-eqz v2, :cond_0

    invoke-virtual {v2, p2}, Lcom/ime/framework/view/AbstractKeyboardView;->movePopupKeyboard(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

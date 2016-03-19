.class Lcom/ime/implement/view/candidate/CandidateView$5;
.super Ljava/lang/Object;
.source "CandidateView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ime/implement/view/candidate/CandidateView;->getExpandButtonTouchListener()Landroid/view/View$OnTouchListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ime/implement/view/candidate/CandidateView;


# direct methods
.method constructor <init>(Lcom/ime/implement/view/candidate/CandidateView;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/implement/view/candidate/CandidateView$5;->this$0:Lcom/ime/implement/view/candidate/CandidateView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/ime/framework/view/TipsDialog;->getInstance()Lcom/ime/framework/view/TipsDialog;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/ime/framework/view/TipsDialog;->isDiscoverabilityShown()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Lcom/ime/framework/view/TipsDialog;->closeDiscoverability()V

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-ne v4, v3, :cond_1

    iget-object v4, p0, Lcom/ime/implement/view/candidate/CandidateView$5;->this$0:Lcom/ime/implement/view/candidate/CandidateView;

    # getter for: Lcom/ime/implement/view/candidate/CandidateView;->mIsAlreadyDismissExpandPopup:Z
    invoke-static {v4}, Lcom/ime/implement/view/candidate/CandidateView;->access$2000(Lcom/ime/implement/view/candidate/CandidateView;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v3, p0, Lcom/ime/implement/view/candidate/CandidateView$5;->this$0:Lcom/ime/implement/view/candidate/CandidateView;

    # setter for: Lcom/ime/implement/view/candidate/CandidateView;->mIsAlreadyDismissExpandPopup:Z
    invoke-static {v3, v2}, Lcom/ime/implement/view/candidate/CandidateView;->access$2102(Lcom/ime/implement/view/candidate/CandidateView;Z)Z

    :cond_1
    :goto_0
    return v2

    :cond_2
    iget-object v4, p0, Lcom/ime/implement/view/candidate/CandidateView$5;->this$0:Lcom/ime/implement/view/candidate/CandidateView;

    # getter for: Lcom/ime/implement/view/candidate/CandidateView;->mExpandButton:Landroid/view/View;
    invoke-static {v4}, Lcom/ime/implement/view/candidate/CandidateView;->access$2200(Lcom/ime/implement/view/candidate/CandidateView;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/view/View;->setPressed(Z)V

    iget-object v4, p0, Lcom/ime/implement/view/candidate/CandidateView$5;->this$0:Lcom/ime/implement/view/candidate/CandidateView;

    # getter for: Lcom/ime/implement/view/candidate/CandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v4}, Lcom/ime/implement/view/candidate/CandidateView;->access$2300(Lcom/ime/implement/view/candidate/CandidateView;)Lcom/ime/framework/common/InputManager;

    move-result-object v4

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->isCandidateExpanded()Z

    move-result v0

    iget-object v4, p0, Lcom/ime/implement/view/candidate/CandidateView$5;->this$0:Lcom/ime/implement/view/candidate/CandidateView;

    # getter for: Lcom/ime/implement/view/candidate/CandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v4}, Lcom/ime/implement/view/candidate/CandidateView;->access$2400(Lcom/ime/implement/view/candidate/CandidateView;)Lcom/ime/framework/common/InputManager;

    move-result-object v4

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->isMobileKeyboard()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/ime/implement/view/candidate/CandidateView$5;->this$0:Lcom/ime/implement/view/candidate/CandidateView;

    # getter for: Lcom/ime/implement/view/candidate/CandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v4}, Lcom/ime/implement/view/candidate/CandidateView;->access$2500(Lcom/ime/implement/view/candidate/CandidateView;)Lcom/ime/framework/common/InputManager;

    move-result-object v4

    invoke-interface {v4}, Lcom/ime/framework/common/InputManager;->isMobileKeyboardSYMCandidate()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/ime/implement/view/candidate/CandidateView$5;->this$0:Lcom/ime/implement/view/candidate/CandidateView;

    iget-object v4, v4, Lcom/ime/implement/view/candidate/CandidateView;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/ime/implement/view/candidate/CandidateView$5;->this$0:Lcom/ime/implement/view/candidate/CandidateView;

    iget-object v5, v5, Lcom/ime/implement/view/candidate/CandidateView;->mFireUpdateCandidateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v4, p0, Lcom/ime/implement/view/candidate/CandidateView$5;->this$0:Lcom/ime/implement/view/candidate/CandidateView;

    # getter for: Lcom/ime/implement/view/candidate/CandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v4}, Lcom/ime/implement/view/candidate/CandidateView;->access$2600(Lcom/ime/implement/view/candidate/CandidateView;)Lcom/ime/framework/common/InputManager;

    move-result-object v4

    invoke-interface {v4, v2}, Lcom/ime/framework/common/InputManager;->setMobilekeyboardSYMCandidate(Z)V

    iget-object v2, p0, Lcom/ime/implement/view/candidate/CandidateView$5;->this$0:Lcom/ime/implement/view/candidate/CandidateView;

    # getter for: Lcom/ime/implement/view/candidate/CandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v2}, Lcom/ime/implement/view/candidate/CandidateView;->access$2700(Lcom/ime/implement/view/candidate/CandidateView;)Lcom/ime/framework/common/InputManager;

    move-result-object v2

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->getInputController()Lcom/ime/framework/input/InputController;

    move-result-object v2

    invoke-interface {v2}, Lcom/ime/framework/input/InputController;->updateCandidates()V

    iget-object v2, p0, Lcom/ime/implement/view/candidate/CandidateView$5;->this$0:Lcom/ime/implement/view/candidate/CandidateView;

    invoke-virtual {v2}, Lcom/ime/implement/view/candidate/CandidateView;->updateCandidates()V

    move v2, v3

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_5

    iget-object v3, p0, Lcom/ime/implement/view/candidate/CandidateView$5;->this$0:Lcom/ime/implement/view/candidate/CandidateView;

    # getter for: Lcom/ime/implement/view/candidate/CandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v3}, Lcom/ime/implement/view/candidate/CandidateView;->access$2800(Lcom/ime/implement/view/candidate/CandidateView;)Lcom/ime/framework/common/InputManager;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/ime/framework/common/InputManager;->setCandidateExpandedFlag(Z)V

    iget-object v3, p0, Lcom/ime/implement/view/candidate/CandidateView$5;->this$0:Lcom/ime/implement/view/candidate/CandidateView;

    invoke-virtual {v3}, Lcom/ime/implement/view/candidate/CandidateView;->dismissExpandPopup()V

    iget-object v3, p0, Lcom/ime/implement/view/candidate/CandidateView$5;->this$0:Lcom/ime/implement/view/candidate/CandidateView;

    # getter for: Lcom/ime/implement/view/candidate/CandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v3}, Lcom/ime/implement/view/candidate/CandidateView;->access$2900(Lcom/ime/implement/view/candidate/CandidateView;)Lcom/ime/framework/common/InputManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->getHanjaStatus()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/ime/implement/view/candidate/CandidateView$5;->this$0:Lcom/ime/implement/view/candidate/CandidateView;

    # getter for: Lcom/ime/implement/view/candidate/CandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v3}, Lcom/ime/implement/view/candidate/CandidateView;->access$3000(Lcom/ime/implement/view/candidate/CandidateView;)Lcom/ime/framework/common/InputManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->SearchHanja()V

    :cond_4
    :goto_1
    iget-object v3, p0, Lcom/ime/implement/view/candidate/CandidateView$5;->this$0:Lcom/ime/implement/view/candidate/CandidateView;

    # getter for: Lcom/ime/implement/view/candidate/CandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v3}, Lcom/ime/implement/view/candidate/CandidateView;->access$3900(Lcom/ime/implement/view/candidate/CandidateView;)Lcom/ime/framework/common/InputManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->isSurveyModeEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v0, :cond_8

    iget-object v3, p0, Lcom/ime/implement/view/candidate/CandidateView$5;->this$0:Lcom/ime/implement/view/candidate/CandidateView;

    # getter for: Lcom/ime/implement/view/candidate/CandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v3}, Lcom/ime/implement/view/candidate/CandidateView;->access$4000(Lcom/ime/implement/view/candidate/CandidateView;)Lcom/ime/framework/common/InputManager;

    move-result-object v3

    const-string v4, "S01B"

    const-string v5, "shrink"

    invoke-interface {v3, v4, v5}, Lcom/ime/framework/common/InputManager;->insertLogByThread(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    iget-object v4, p0, Lcom/ime/implement/view/candidate/CandidateView$5;->this$0:Lcom/ime/implement/view/candidate/CandidateView;

    # getter for: Lcom/ime/implement/view/candidate/CandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v4}, Lcom/ime/implement/view/candidate/CandidateView;->access$3100(Lcom/ime/implement/view/candidate/CandidateView;)Lcom/ime/framework/common/InputManager;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/ime/framework/common/InputManager;->setCandidateExpandedFlag(Z)V

    iget-object v3, p0, Lcom/ime/implement/view/candidate/CandidateView$5;->this$0:Lcom/ime/implement/view/candidate/CandidateView;

    # getter for: Lcom/ime/implement/view/candidate/CandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v3}, Lcom/ime/implement/view/candidate/CandidateView;->access$3200(Lcom/ime/implement/view/candidate/CandidateView;)Lcom/ime/framework/common/InputManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->dismissPopupKeyboard()V

    iget-object v3, p0, Lcom/ime/implement/view/candidate/CandidateView$5;->this$0:Lcom/ime/implement/view/candidate/CandidateView;

    # getter for: Lcom/ime/implement/view/candidate/CandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v3}, Lcom/ime/implement/view/candidate/CandidateView;->access$3300(Lcom/ime/implement/view/candidate/CandidateView;)Lcom/ime/framework/common/InputManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->getCtrlPressedState()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/ime/implement/view/candidate/CandidateView$5;->this$0:Lcom/ime/implement/view/candidate/CandidateView;

    # getter for: Lcom/ime/implement/view/candidate/CandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v3}, Lcom/ime/implement/view/candidate/CandidateView;->access$3400(Lcom/ime/implement/view/candidate/CandidateView;)Lcom/ime/framework/common/InputManager;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/ime/framework/common/InputManager;->setCtrlPressedState(Z)V

    iget-object v3, p0, Lcom/ime/implement/view/candidate/CandidateView$5;->this$0:Lcom/ime/implement/view/candidate/CandidateView;

    # getter for: Lcom/ime/implement/view/candidate/CandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v3}, Lcom/ime/implement/view/candidate/CandidateView;->access$3500(Lcom/ime/implement/view/candidate/CandidateView;)Lcom/ime/framework/common/InputManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->releaseAllKeyPressed()V

    iget-object v3, p0, Lcom/ime/implement/view/candidate/CandidateView$5;->this$0:Lcom/ime/implement/view/candidate/CandidateView;

    # getter for: Lcom/ime/implement/view/candidate/CandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v3}, Lcom/ime/implement/view/candidate/CandidateView;->access$3600(Lcom/ime/implement/view/candidate/CandidateView;)Lcom/ime/framework/common/InputManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->updateKeyboardView()V

    :cond_6
    iget-object v3, p0, Lcom/ime/implement/view/candidate/CandidateView$5;->this$0:Lcom/ime/implement/view/candidate/CandidateView;

    # getter for: Lcom/ime/implement/view/candidate/CandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v3}, Lcom/ime/implement/view/candidate/CandidateView;->access$3700(Lcom/ime/implement/view/candidate/CandidateView;)Lcom/ime/framework/common/InputManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->getHanjaStatus()Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/ime/implement/view/candidate/CandidateView$5;->this$0:Lcom/ime/implement/view/candidate/CandidateView;

    # getter for: Lcom/ime/implement/view/candidate/CandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v3}, Lcom/ime/implement/view/candidate/CandidateView;->access$3800(Lcom/ime/implement/view/candidate/CandidateView;)Lcom/ime/framework/common/InputManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/ime/framework/common/InputManager;->searchHanjaDirectly(Ljava/lang/String;)V

    :cond_7
    iget-object v3, p0, Lcom/ime/implement/view/candidate/CandidateView$5;->this$0:Lcom/ime/implement/view/candidate/CandidateView;

    invoke-virtual {v3}, Lcom/ime/implement/view/candidate/CandidateView;->updateCandidates()V

    iget-object v3, p0, Lcom/ime/implement/view/candidate/CandidateView$5;->this$0:Lcom/ime/implement/view/candidate/CandidateView;

    invoke-virtual {v3}, Lcom/ime/implement/view/candidate/CandidateView;->showExpandPopup()V

    goto :goto_1

    :cond_8
    iget-object v3, p0, Lcom/ime/implement/view/candidate/CandidateView$5;->this$0:Lcom/ime/implement/view/candidate/CandidateView;

    # getter for: Lcom/ime/implement/view/candidate/CandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v3}, Lcom/ime/implement/view/candidate/CandidateView;->access$4100(Lcom/ime/implement/view/candidate/CandidateView;)Lcom/ime/framework/common/InputManager;

    move-result-object v3

    const-string v4, "S01B"

    const-string v5, "expand"

    invoke-interface {v3, v4, v5}, Lcom/ime/framework/common/InputManager;->insertLogByThread(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

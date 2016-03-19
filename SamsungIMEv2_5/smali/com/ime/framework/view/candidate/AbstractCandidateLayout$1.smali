.class Lcom/ime/framework/view/candidate/AbstractCandidateLayout$1;
.super Ljava/lang/Object;
.source "AbstractCandidateLayout.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->getTouchListener()Landroid/view/View$OnTouchListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;


# direct methods
.method constructor <init>(Lcom/ime/framework/view/candidate/AbstractCandidateLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$1;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$1;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    # getter for: Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mGestureDetector:Landroid/view/GestureDetector;
    invoke-static {v2}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->access$1500(Lcom/ime/framework/view/candidate/AbstractCandidateLayout;)Landroid/view/GestureDetector;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    iget-object v2, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$1;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    iget-object v2, v2, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->isFocusOnCandidateView()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$1;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    iget-object v2, v2, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2, v3}, Lcom/ime/framework/common/InputManager;->setFocusOnCandidateView(Z)V

    iget-object v2, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$1;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    iget-object v2, v2, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2, v3, v3}, Lcom/ime/framework/common/InputManager;->setSelectionBgOnCandidateList(IZ)V

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    iget-object v2, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$1;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    # setter for: Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mIgnorePick:Z
    invoke-static {v2, v3}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->access$1302(Lcom/ime/framework/view/candidate/AbstractCandidateLayout;Z)Z

    :cond_1
    :goto_0
    return v3

    :cond_2
    if-nez v0, :cond_3

    iget-object v2, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$1;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    # setter for: Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->misLeftScrolled:Z
    invoke-static {v2, v3}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->access$1602(Lcom/ime/framework/view/candidate/AbstractCandidateLayout;Z)Z

    iget-object v2, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$1;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    # setter for: Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->misRightScrolled:Z
    invoke-static {v2, v3}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->access$1702(Lcom/ime/framework/view/candidate/AbstractCandidateLayout;Z)Z

    goto :goto_0

    :cond_3
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    iget-object v2, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$1;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    iget-object v2, v2, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->getPopupKeyboardView()Lcom/ime/framework/view/PopupKeyboardView;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v2, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$1;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    # getter for: Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->misLeftScrolled:Z
    invoke-static {v2}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->access$1600(Lcom/ime/framework/view/candidate/AbstractCandidateLayout;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v1}, Lcom/ime/framework/view/PopupKeyboardView;->moveCandidateWindowLeftSide()V

    :cond_4
    :goto_1
    iget-object v2, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$1;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    # setter for: Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->misLeftScrolled:Z
    invoke-static {v2, v3}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->access$1602(Lcom/ime/framework/view/candidate/AbstractCandidateLayout;Z)Z

    iget-object v2, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$1;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    # setter for: Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->misRightScrolled:Z
    invoke-static {v2, v3}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->access$1702(Lcom/ime/framework/view/candidate/AbstractCandidateLayout;Z)Z

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$1;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    # getter for: Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->misRightScrolled:Z
    invoke-static {v2}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->access$1700(Lcom/ime/framework/view/candidate/AbstractCandidateLayout;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Lcom/ime/framework/view/PopupKeyboardView;->moveCandidateWindowRightSide()V

    goto :goto_1
.end method

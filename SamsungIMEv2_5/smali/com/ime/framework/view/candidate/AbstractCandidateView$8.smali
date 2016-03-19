.class Lcom/ime/framework/view/candidate/AbstractCandidateView$8;
.super Ljava/lang/Object;
.source "AbstractCandidateView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ime/framework/view/candidate/AbstractCandidateView;->updateExpandCandidateLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ime/framework/view/candidate/AbstractCandidateView;


# direct methods
.method constructor <init>(Lcom/ime/framework/view/candidate/AbstractCandidateView;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView$8;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v3, 0x0

    iget-object v6, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView$8;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateView;

    # getter for: Lcom/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidateLayout:Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;
    invoke-static {v6}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->access$000(Lcom/ime/framework/view/candidate/AbstractCandidateView;)Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;

    move-result-object v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView$8;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateView;

    iget-object v7, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView$8;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateView;

    invoke-virtual {v7}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->getCandidateExpandLayout()Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;

    move-result-object v7

    # setter for: Lcom/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidateLayout:Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;
    invoke-static {v6, v7}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->access$002(Lcom/ime/framework/view/candidate/AbstractCandidateView;Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;)Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;

    :goto_0
    iget-object v6, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView$8;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateView;

    # getter for: Lcom/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidateLayout:Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;
    invoke-static {v6}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->access$000(Lcom/ime/framework/view/candidate/AbstractCandidateView;)Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->createExpandCandidateViewsChn()V

    return-void

    :cond_0
    iget-object v6, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView$8;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateView;

    # getter for: Lcom/ime/framework/view/candidate/AbstractCandidateView;->mExpandCandidateLayout:Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;
    invoke-static {v6}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->access$000(Lcom/ime/framework/view/candidate/AbstractCandidateView;)Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->getExpandCandidateScrollView()Landroid/widget/ScrollView;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView$8;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateView;

    iget-object v6, v6, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/ime/framework/common/InputManager;->getKeyboardViewHeight()I

    move-result v6

    iget-object v7, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView$8;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateView;

    iget-object v7, v7, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v7}, Lcom/ime/framework/common/InputManager;->getCandidateViewHeight()I

    move-result v7

    sub-int v0, v6, v7

    iget-object v6, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView$8;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateView;

    iget-object v6, v6, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/ime/framework/common/InputManager;->getKeyboardViewHeight()I

    move-result v1

    iget-object v6, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView$8;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateView;

    iget-object v6, v6, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/ime/framework/common/InputManager;->isChineseStrokeModeOn()Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView$8;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateView;

    iget-object v6, v6, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/ime/framework/common/InputManager;->getInputLanguage()I

    move-result v6

    const v7, 0x7a68484b

    if-eq v6, v7, :cond_1

    const/4 v3, 0x1

    :cond_1
    iget-object v6, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView$8;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateView;

    iget-object v6, v6, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/ime/framework/common/InputManager;->isChineseLanguageMode()Z

    move-result v6

    if-eqz v6, :cond_2

    if-eqz v3, :cond_2

    move v2, v0

    :goto_1
    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iput v2, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v5}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iput v2, v6, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    :cond_2
    move v2, v1

    goto :goto_1
.end method

.class Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout$1;
.super Ljava/lang/Object;
.source "AbstractCandidateExpandLayout.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->setCandidates(Ljava/util/ArrayList;I)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;


# direct methods
.method constructor <init>(Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout$1;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout$1;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;

    # setter for: Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mIgnorePick:Z
    invoke-static {v1, v2}, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->access$002(Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;Z)Z

    :cond_0
    iget-object v1, p0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout$1;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;

    iget-object v1, v1, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isMobileKeyboard()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout$1;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;

    iget-object v1, v1, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isMobileKeyboardUmlautCandidate()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_1
    return v2
.end method

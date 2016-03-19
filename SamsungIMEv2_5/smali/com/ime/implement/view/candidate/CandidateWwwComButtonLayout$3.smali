.class Lcom/ime/implement/view/candidate/CandidateWwwComButtonLayout$3;
.super Ljava/lang/Object;
.source "CandidateWwwComButtonLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ime/implement/view/candidate/CandidateWwwComButtonLayout;->setButtonListener(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ime/implement/view/candidate/CandidateWwwComButtonLayout;


# direct methods
.method constructor <init>(Lcom/ime/implement/view/candidate/CandidateWwwComButtonLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/implement/view/candidate/CandidateWwwComButtonLayout$3;->this$0:Lcom/ime/implement/view/candidate/CandidateWwwComButtonLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    instance-of v1, p1, Landroid/widget/Button;

    if-eqz v1, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/widget/Button;

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/ime/implement/view/candidate/CandidateWwwComButtonLayout$3;->this$0:Lcom/ime/implement/view/candidate/CandidateWwwComButtonLayout;

    # getter for: Lcom/ime/implement/view/candidate/CandidateWwwComButtonLayout;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v1}, Lcom/ime/implement/view/candidate/CandidateWwwComButtonLayout;->access$500(Lcom/ime/implement/view/candidate/CandidateWwwComButtonLayout;)Lcom/ime/framework/common/InputManager;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ime/implement/view/candidate/CandidateWwwComButtonLayout$3;->this$0:Lcom/ime/implement/view/candidate/CandidateWwwComButtonLayout;

    # getter for: Lcom/ime/implement/view/candidate/CandidateWwwComButtonLayout;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v1}, Lcom/ime/implement/view/candidate/CandidateWwwComButtonLayout;->access$600(Lcom/ime/implement/view/candidate/CandidateWwwComButtonLayout;)Lcom/ime/framework/common/InputManager;

    move-result-object v1

    invoke-virtual {v0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/ime/framework/common/InputManager;->onText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

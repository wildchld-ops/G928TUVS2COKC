.class Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter$1;
.super Ljava/lang/Object;
.source "AbstractCandidateLayout.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;


# direct methods
.method constructor <init>(Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter$1;->this$1:Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    if-eqz p1, :cond_0

    instance-of v1, p1, Lcom/ime/framework/view/candidate/CandidateTextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter$1;->this$1:Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;

    iget-object v1, v1, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    iget-object v1, v1, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter$1;->this$1:Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;

    iget-object v1, v1, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    iget-object v1, v1, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1, v0}, Lcom/ime/framework/common/InputManager;->existTermInDLM(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/ime/framework/input/ComposingTextManager;->composingText()Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, p1

    check-cast v1, Lcom/ime/framework/view/candidate/CandidateTextView;

    invoke-virtual {v1}, Lcom/ime/framework/view/candidate/CandidateTextView;->getIndex()I

    move-result v1

    if-ne v1, v4, :cond_1

    :cond_0
    :goto_0
    return v5

    :cond_1
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter$1;->this$1:Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;

    iget-object v1, v1, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    iget-object v1, v1, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1, v0}, Lcom/ime/framework/common/InputManager;->existTermInDLM(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter$1;->this$1:Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;

    iget-object v1, v1, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    iget-object v1, v1, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1, v0}, Lcom/ime/framework/common/InputManager;->existTermInAutoText(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    iget-object v1, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter$1;->this$1:Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;

    iget-object v1, v1, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    iget-object v1, v1, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->releaseAllKeyPressed()V

    iget-object v1, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter$1;->this$1:Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;

    iget-object v1, v1, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    iget-object v2, v1, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object v1, p1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v1, p1

    check-cast v1, Lcom/ime/framework/view/candidate/CandidateTextView;

    invoke-virtual {v1}, Lcom/ime/framework/view/candidate/CandidateTextView;->getIndex()I

    move-result v1

    invoke-interface {v2, v3, v1}, Lcom/ime/framework/common/InputManager;->showSwiftkeyRemoveTermDialog(Ljava/lang/String;I)V

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setSoundEffectsEnabled(Z)V

    iget-object v1, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter$1;->this$1:Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;

    iget-object v1, v1, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    # setter for: Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mIgnorePick:Z
    invoke-static {v1, v4}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->access$1302(Lcom/ime/framework/view/candidate/AbstractCandidateLayout;Z)Z

    goto :goto_0
.end method

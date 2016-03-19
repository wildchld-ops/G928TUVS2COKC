.class Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter$4;
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

    iput-object p1, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter$4;->this$1:Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    sget-boolean v1, Lcom/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "SamsungIME_UnifiedIME"

    const-string v2, "AbstractCandidateLayout, XT9 long click"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_2

    instance-of v1, p1, Lcom/ime/framework/view/candidate/CandidateTextView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter$4;->this$1:Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;

    iget-object v1, v1, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    iget-object v1, v1, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter$4;->this$1:Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;

    iget-object v1, v1, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    # getter for: Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestions:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->access$1000(Lcom/ime/framework/view/candidate/AbstractCandidateLayout;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v4, :cond_2

    move-object v1, p1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-le v1, v4, :cond_2

    move-object v1, p1

    check-cast v1, Lcom/ime/framework/view/candidate/CandidateTextView;

    invoke-virtual {v1}, Lcom/ime/framework/view/candidate/CandidateTextView;->getIconType()I

    move-result v1

    if-ne v1, v4, :cond_2

    iget-object v1, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter$4;->this$1:Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;

    iget-object v1, v1, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    new-instance v2, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$ContactDisplayListener;

    iget-object v3, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter$4;->this$1:Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;

    iget-object v3, v3, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    invoke-direct {v2, v3}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$ContactDisplayListener;-><init>(Lcom/ime/framework/view/candidate/AbstractCandidateLayout;)V

    invoke-virtual {v1, v2, v5}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->showContactDialog(Landroid/content/DialogInterface$OnClickListener;I)V

    iget-object v1, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter$4;->this$1:Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;

    iget-object v1, v1, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    # setter for: Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mIgnorePick:Z
    invoke-static {v1, v4}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->access$1302(Lcom/ime/framework/view/candidate/AbstractCandidateLayout;Z)Z

    :cond_1
    :goto_0
    return v5

    :cond_2
    if-eqz p1, :cond_1

    instance-of v1, p1, Lcom/ime/framework/view/candidate/CandidateTextView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter$4;->this$1:Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;

    iget-object v1, v1, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    iget-object v1, v1, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter$4;->this$1:Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;

    iget-object v1, v1, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    # getter for: Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestions:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->access$1000(Lcom/ime/framework/view/candidate/AbstractCandidateLayout;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v4, :cond_1

    move-object v1, p1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-le v1, v4, :cond_1

    move-object v1, p1

    check-cast v1, Lcom/ime/framework/view/candidate/CandidateTextView;

    invoke-virtual {v1}, Lcom/ime/framework/view/candidate/CandidateTextView;->getIconType()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter$4;->this$1:Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;

    iget-object v1, v1, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    iget-object v1, v1, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->releaseAllKeyPressed()V

    move-object v1, p1

    check-cast v1, Lcom/ime/framework/view/candidate/CandidateTextView;

    invoke-virtual {v1}, Lcom/ime/framework/view/candidate/CandidateTextView;->getIndex()I

    move-result v0

    iget-object v1, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter$4;->this$1:Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;

    iget-object v1, v1, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    iget-object v2, v1, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    iget-object v1, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter$4;->this$1:Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;

    iget-object v1, v1, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    # getter for: Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mSuggestions:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->access$1000(Lcom/ime/framework/view/candidate/AbstractCandidateLayout;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1, v0}, Lcom/ime/framework/common/InputManager;->showXt9_9RemoveTermDialog(Ljava/lang/String;I)V

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setSoundEffectsEnabled(Z)V

    iget-object v1, p0, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter$4;->this$1:Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;

    iget-object v1, v1, Lcom/ime/framework/view/candidate/AbstractCandidateLayout$SuggestionsAdapter;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateLayout;

    # setter for: Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->mIgnorePick:Z
    invoke-static {v1, v4}, Lcom/ime/framework/view/candidate/AbstractCandidateLayout;->access$1302(Lcom/ime/framework/view/candidate/AbstractCandidateLayout;Z)Z

    goto :goto_0
.end method

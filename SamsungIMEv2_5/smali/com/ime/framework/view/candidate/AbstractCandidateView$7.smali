.class Lcom/ime/framework/view/candidate/AbstractCandidateView$7;
.super Landroid/os/Handler;
.source "AbstractCandidateView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ime/framework/view/candidate/AbstractCandidateView;
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

    iput-object p1, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView$7;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v5, 0x0

    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v4, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView$7;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateView;

    # invokes: Lcom/ime/framework/view/candidate/AbstractCandidateView;->getFocussedCandidateView()Lcom/ime/framework/view/candidate/CandidateTextView;
    invoke-static {v4}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->access$300(Lcom/ime/framework/view/candidate/AbstractCandidateView;)Lcom/ime/framework/view/candidate/CandidateTextView;

    move-result-object v2

    if-eqz v2, :cond_0

    iput-boolean v5, v2, Lcom/ime/framework/view/candidate/CandidateTextView;->mIsInFocusState:Z

    iput-boolean v5, v2, Lcom/ime/framework/view/candidate/CandidateTextView;->mIsInPressedState:Z

    iget-object v4, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView$7;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateView;

    # invokes: Lcom/ime/framework/view/candidate/AbstractCandidateView;->updateDrawableState(Lcom/ime/framework/view/candidate/CandidateTextView;)V
    invoke-static {v4, v2}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->access$400(Lcom/ime/framework/view/candidate/AbstractCandidateView;Lcom/ime/framework/view/candidate/CandidateTextView;)V

    iget-object v4, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView$7;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateView;

    iget-object v4, v4, Lcom/ime/framework/view/candidate/AbstractCandidateView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v4, v5}, Lcom/ime/framework/common/InputManager;->getInputView(Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v4}, Lcom/ime/framework/view/AbstractKeyboardView;->restoreKnobKeyFocus()V

    goto :goto_0

    :pswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v4, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView$7;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateView;

    iget-object v5, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView$7;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateView;

    # getter for: Lcom/ime/framework/view/candidate/AbstractCandidateView;->mStartKnobIndex:I
    invoke-static {v5}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->access$500(Lcom/ime/framework/view/candidate/AbstractCandidateView;)I

    move-result v5

    iget-object v6, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView$7;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateView;

    # getter for: Lcom/ime/framework/view/candidate/AbstractCandidateView;->KNOB_SHOW_CANDIDATES_COUNT:I
    invoke-static {v6}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->access$600(Lcom/ime/framework/view/candidate/AbstractCandidateView;)I

    move-result v6

    add-int/2addr v5, v6

    # invokes: Lcom/ime/framework/view/candidate/AbstractCandidateView;->updateRightArrowVisibility(I)V
    invoke-static {v4, v5}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->access$700(Lcom/ime/framework/view/candidate/AbstractCandidateView;I)V

    iget-object v4, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView$7;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateView;

    iget-object v5, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView$7;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateView;

    # getter for: Lcom/ime/framework/view/candidate/AbstractCandidateView;->mStartKnobIndex:I
    invoke-static {v5}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->access$500(Lcom/ime/framework/view/candidate/AbstractCandidateView;)I

    move-result v5

    iget-object v6, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView$7;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateView;

    # getter for: Lcom/ime/framework/view/candidate/AbstractCandidateView;->KNOB_SHOW_CANDIDATES_COUNT:I
    invoke-static {v6}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->access$600(Lcom/ime/framework/view/candidate/AbstractCandidateView;)I

    move-result v6

    add-int/2addr v5, v6

    # invokes: Lcom/ime/framework/view/candidate/AbstractCandidateView;->updateLeftArrowVisibility(I)V
    invoke-static {v4, v5}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->access$800(Lcom/ime/framework/view/candidate/AbstractCandidateView;I)V

    iget-object v4, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView$7;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateView;

    iget-object v5, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView$7;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateView;

    # getter for: Lcom/ime/framework/view/candidate/AbstractCandidateView;->mStartKnobIndex:I
    invoke-static {v5}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->access$500(Lcom/ime/framework/view/candidate/AbstractCandidateView;)I

    move-result v5

    iget-object v6, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView$7;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateView;

    # getter for: Lcom/ime/framework/view/candidate/AbstractCandidateView;->KNOB_SHOW_CANDIDATES_COUNT:I
    invoke-static {v6}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->access$600(Lcom/ime/framework/view/candidate/AbstractCandidateView;)I

    move-result v6

    add-int/2addr v5, v6

    # invokes: Lcom/ime/framework/view/candidate/AbstractCandidateView;->updateKnobViewVisibility(I)V
    invoke-static {v4, v5}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->access$900(Lcom/ime/framework/view/candidate/AbstractCandidateView;I)V

    iget-object v4, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView$7;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateView;

    # getter for: Lcom/ime/framework/view/candidate/AbstractCandidateView;->mSuggestionViews:[Lcom/ime/framework/view/candidate/CandidateTextView;
    invoke-static {v4}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->access$1000(Lcom/ime/framework/view/candidate/AbstractCandidateView;)[Lcom/ime/framework/view/candidate/CandidateTextView;

    move-result-object v4

    add-int/lit8 v5, v0, 0x1

    aget-object v2, v4, v5

    iput-boolean v7, v2, Lcom/ime/framework/view/candidate/CandidateTextView;->mIsInFocusState:Z

    iget-object v4, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView$7;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateView;

    # invokes: Lcom/ime/framework/view/candidate/AbstractCandidateView;->updateDrawableState(Lcom/ime/framework/view/candidate/CandidateTextView;)V
    invoke-static {v4, v2}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->access$400(Lcom/ime/framework/view/candidate/AbstractCandidateView;Lcom/ime/framework/view/candidate/CandidateTextView;)V

    goto :goto_0

    :pswitch_2
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v4, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView$7;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateView;

    iget-object v5, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView$7;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateView;

    # getter for: Lcom/ime/framework/view/candidate/AbstractCandidateView;->mStartKnobIndex:I
    invoke-static {v5}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->access$500(Lcom/ime/framework/view/candidate/AbstractCandidateView;)I

    move-result v5

    iget-object v6, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView$7;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateView;

    # getter for: Lcom/ime/framework/view/candidate/AbstractCandidateView;->KNOB_SHOW_CANDIDATES_COUNT:I
    invoke-static {v6}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->access$600(Lcom/ime/framework/view/candidate/AbstractCandidateView;)I

    move-result v6

    sub-int/2addr v5, v6

    # invokes: Lcom/ime/framework/view/candidate/AbstractCandidateView;->updateLeftArrowVisibility(I)V
    invoke-static {v4, v5}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->access$800(Lcom/ime/framework/view/candidate/AbstractCandidateView;I)V

    iget-object v4, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView$7;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateView;

    iget-object v5, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView$7;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateView;

    # getter for: Lcom/ime/framework/view/candidate/AbstractCandidateView;->mStartKnobIndex:I
    invoke-static {v5}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->access$500(Lcom/ime/framework/view/candidate/AbstractCandidateView;)I

    move-result v5

    iget-object v6, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView$7;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateView;

    # getter for: Lcom/ime/framework/view/candidate/AbstractCandidateView;->KNOB_SHOW_CANDIDATES_COUNT:I
    invoke-static {v6}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->access$600(Lcom/ime/framework/view/candidate/AbstractCandidateView;)I

    move-result v6

    sub-int/2addr v5, v6

    # invokes: Lcom/ime/framework/view/candidate/AbstractCandidateView;->updateRightArrowVisibility(I)V
    invoke-static {v4, v5}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->access$700(Lcom/ime/framework/view/candidate/AbstractCandidateView;I)V

    iget-object v4, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView$7;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateView;

    iget-object v5, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView$7;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateView;

    # getter for: Lcom/ime/framework/view/candidate/AbstractCandidateView;->mStartKnobIndex:I
    invoke-static {v5}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->access$500(Lcom/ime/framework/view/candidate/AbstractCandidateView;)I

    move-result v5

    iget-object v6, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView$7;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateView;

    # getter for: Lcom/ime/framework/view/candidate/AbstractCandidateView;->KNOB_SHOW_CANDIDATES_COUNT:I
    invoke-static {v6}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->access$600(Lcom/ime/framework/view/candidate/AbstractCandidateView;)I

    move-result v6

    sub-int/2addr v5, v6

    # invokes: Lcom/ime/framework/view/candidate/AbstractCandidateView;->updateKnobViewVisibility(I)V
    invoke-static {v4, v5}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->access$900(Lcom/ime/framework/view/candidate/AbstractCandidateView;I)V

    iget-object v4, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView$7;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateView;

    # getter for: Lcom/ime/framework/view/candidate/AbstractCandidateView;->mSuggestionViews:[Lcom/ime/framework/view/candidate/CandidateTextView;
    invoke-static {v4}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->access$1000(Lcom/ime/framework/view/candidate/AbstractCandidateView;)[Lcom/ime/framework/view/candidate/CandidateTextView;

    move-result-object v4

    add-int/lit8 v5, v1, -0x1

    aget-object v3, v4, v5

    iput-boolean v7, v3, Lcom/ime/framework/view/candidate/CandidateTextView;->mIsInFocusState:Z

    iget-object v4, p0, Lcom/ime/framework/view/candidate/AbstractCandidateView$7;->this$0:Lcom/ime/framework/view/candidate/AbstractCandidateView;

    # invokes: Lcom/ime/framework/view/candidate/AbstractCandidateView;->updateDrawableState(Lcom/ime/framework/view/candidate/CandidateTextView;)V
    invoke-static {v4, v3}, Lcom/ime/framework/view/candidate/AbstractCandidateView;->access$400(Lcom/ime/framework/view/candidate/AbstractCandidateView;Lcom/ime/framework/view/candidate/CandidateTextView;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

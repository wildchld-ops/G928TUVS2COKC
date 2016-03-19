.class Lcom/ime/implement/view/candidate/CandidateWwwComButtonLayout$8;
.super Landroid/os/Handler;
.source "CandidateWwwComButtonLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ime/implement/view/candidate/CandidateWwwComButtonLayout;
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

    iput-object p1, p0, Lcom/ime/implement/view/candidate/CandidateWwwComButtonLayout$8;->this$0:Lcom/ime/implement/view/candidate/CandidateWwwComButtonLayout;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const-string v0, "button_dot_com"

    iget-object v1, p0, Lcom/ime/implement/view/candidate/CandidateWwwComButtonLayout$8;->this$0:Lcom/ime/implement/view/candidate/CandidateWwwComButtonLayout;

    # getter for: Lcom/ime/implement/view/candidate/CandidateWwwComButtonLayout;->mSecondButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/ime/implement/view/candidate/CandidateWwwComButtonLayout;->access$1900(Lcom/ime/implement/view/candidate/CandidateWwwComButtonLayout;)Landroid/widget/Button;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Button;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/implement/view/candidate/CandidateWwwComButtonLayout$8;->this$0:Lcom/ime/implement/view/candidate/CandidateWwwComButtonLayout;

    iget-object v1, p0, Lcom/ime/implement/view/candidate/CandidateWwwComButtonLayout$8;->this$0:Lcom/ime/implement/view/candidate/CandidateWwwComButtonLayout;

    # getter for: Lcom/ime/implement/view/candidate/CandidateWwwComButtonLayout;->mSecondButton:Landroid/widget/Button;
    invoke-static {v1}, Lcom/ime/implement/view/candidate/CandidateWwwComButtonLayout;->access$2000(Lcom/ime/implement/view/candidate/CandidateWwwComButtonLayout;)Landroid/widget/Button;

    move-result-object v1

    # invokes: Lcom/ime/implement/view/candidate/CandidateWwwComButtonLayout;->showPopupWindow(Landroid/view/View;)V
    invoke-static {v0, v1}, Lcom/ime/implement/view/candidate/CandidateWwwComButtonLayout;->access$2100(Lcom/ime/implement/view/candidate/CandidateWwwComButtonLayout;Landroid/view/View;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x27
        :pswitch_0
    .end packed-switch
.end method

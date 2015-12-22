.class Lcom/android/incallui/SecMirrorlinkAnswerButtonFragment$1;
.super Ljava/lang/Object;
.source "SecMirrorlinkAnswerButtonFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/SecMirrorlinkAnswerButtonFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/SecMirrorlinkAnswerButtonFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/SecMirrorlinkAnswerButtonFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/SecMirrorlinkAnswerButtonFragment$1;->this$0:Lcom/android/incallui/SecMirrorlinkAnswerButtonFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick(View "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    packed-switch v0, :pswitch_data_0

    const-string v1, "onClick: unexpected"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->wtf(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_0
    # getter for: Lcom/android/incallui/SecMirrorlinkAnswerButtonFragment;->mAnswerButton:Landroid/widget/ImageButton;
    invoke-static {}, Lcom/android/incallui/SecMirrorlinkAnswerButtonFragment;->access$000()Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/incallui/SecMirrorlinkAnswerButtonFragment$1;->this$0:Lcom/android/incallui/SecMirrorlinkAnswerButtonFragment;

    invoke-virtual {v1}, Lcom/android/incallui/SecMirrorlinkAnswerButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/AnswerPresenter;

    iget-object v2, p0, Lcom/android/incallui/SecMirrorlinkAnswerButtonFragment$1;->this$0:Lcom/android/incallui/SecMirrorlinkAnswerButtonFragment;

    invoke-virtual {v2}, Lcom/android/incallui/SecMirrorlinkAnswerButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/android/incallui/AnswerPresenter;->onAnswer(ILandroid/content/Context;)V

    goto :goto_0

    :pswitch_1
    # getter for: Lcom/android/incallui/SecMirrorlinkAnswerButtonFragment;->mRejectButton:Landroid/widget/ImageButton;
    invoke-static {}, Lcom/android/incallui/SecMirrorlinkAnswerButtonFragment;->access$100()Landroid/widget/ImageButton;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/incallui/SecMirrorlinkAnswerButtonFragment$1;->this$0:Lcom/android/incallui/SecMirrorlinkAnswerButtonFragment;

    invoke-virtual {v1}, Lcom/android/incallui/SecMirrorlinkAnswerButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/AnswerPresenter;

    invoke-virtual {v1}, Lcom/android/incallui/AnswerPresenter;->onDecline()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f100105
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

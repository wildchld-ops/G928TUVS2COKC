.class Lcom/android/incallui/SecDrivelinkAnswerButtonFragment$1;
.super Ljava/lang/Object;
.source "SecDrivelinkAnswerButtonFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/SecDrivelinkAnswerButtonFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/SecDrivelinkAnswerButtonFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/SecDrivelinkAnswerButtonFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/SecDrivelinkAnswerButtonFragment$1;->this$0:Lcom/android/incallui/SecDrivelinkAnswerButtonFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onClick(View "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    packed-switch v0, :pswitch_data_0

    const-string v3, "onClick: unexpected"

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->wtf(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_0
    # getter for: Lcom/android/incallui/SecDrivelinkAnswerButtonFragment;->mAnswerButton:Lcom/android/incallui/SecDrivelinkButton;
    invoke-static {}, Lcom/android/incallui/SecDrivelinkAnswerButtonFragment;->access$000()Lcom/android/incallui/SecDrivelinkButton;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/android/incallui/SecDrivelinkButton;->setChecked(Z)V

    iget-object v3, p0, Lcom/android/incallui/SecDrivelinkAnswerButtonFragment$1;->this$0:Lcom/android/incallui/SecDrivelinkAnswerButtonFragment;

    invoke-virtual {v3}, Lcom/android/incallui/SecDrivelinkAnswerButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/AnswerPresenter;

    iget-object v4, p0, Lcom/android/incallui/SecDrivelinkAnswerButtonFragment$1;->this$0:Lcom/android/incallui/SecDrivelinkAnswerButtonFragment;

    invoke-virtual {v4}, Lcom/android/incallui/SecDrivelinkAnswerButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Lcom/android/incallui/AnswerPresenter;->onAnswer(ILandroid/content/Context;)V

    goto :goto_0

    :pswitch_1
    # getter for: Lcom/android/incallui/SecDrivelinkAnswerButtonFragment;->mRejectButton:Lcom/android/incallui/SecDrivelinkButton;
    invoke-static {}, Lcom/android/incallui/SecDrivelinkAnswerButtonFragment;->access$100()Lcom/android/incallui/SecDrivelinkButton;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/android/incallui/SecDrivelinkButton;->setChecked(Z)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "drivelink_rejectmessage_on"

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "rejectmessage:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-lez v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "drivelink_rejectmessage_body"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "rejectmessage_body:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/incallui/SecDrivelinkAnswerButtonFragment$1;->this$0:Lcom/android/incallui/SecDrivelinkAnswerButtonFragment;

    invoke-virtual {v3}, Lcom/android/incallui/SecDrivelinkAnswerButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/AnswerPresenter;

    invoke-virtual {v3, v2}, Lcom/android/incallui/AnswerPresenter;->rejectCallWithMessage(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/android/incallui/SecDrivelinkAnswerButtonFragment$1;->this$0:Lcom/android/incallui/SecDrivelinkAnswerButtonFragment;

    invoke-virtual {v3}, Lcom/android/incallui/SecDrivelinkAnswerButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/AnswerPresenter;

    invoke-virtual {v3}, Lcom/android/incallui/AnswerPresenter;->onDecline()V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x7f100105
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

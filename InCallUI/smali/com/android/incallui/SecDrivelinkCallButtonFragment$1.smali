.class Lcom/android/incallui/SecDrivelinkCallButtonFragment$1;
.super Ljava/lang/Object;
.source "SecDrivelinkCallButtonFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/SecDrivelinkCallButtonFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/SecDrivelinkCallButtonFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/SecDrivelinkCallButtonFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/SecDrivelinkCallButtonFragment$1;->this$0:Lcom/android/incallui/SecDrivelinkCallButtonFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClick(View "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", id "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")..."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const-string v1, "onClick: unexpected"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->wtf(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void

    :pswitch_1
    iget-object v1, p0, Lcom/android/incallui/SecDrivelinkCallButtonFragment$1;->this$0:Lcom/android/incallui/SecDrivelinkCallButtonFragment;

    invoke-virtual {v1}, Lcom/android/incallui/SecDrivelinkCallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v1}, Lcom/android/incallui/CallButtonPresenter;->endCallClicked()V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/android/incallui/SecDrivelinkCallButtonFragment$1;->this$0:Lcom/android/incallui/SecDrivelinkCallButtonFragment;

    invoke-virtual {v1}, Lcom/android/incallui/SecDrivelinkCallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v1}, Lcom/android/incallui/CallButtonPresenter;->speakerClicked()V

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/android/incallui/SecDrivelinkCallButtonFragment$1;->this$0:Lcom/android/incallui/SecDrivelinkCallButtonFragment;

    invoke-virtual {v1}, Lcom/android/incallui/SecDrivelinkCallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallButtonPresenter;

    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/AudioModeProvider;->getMute()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v1, v2}, Lcom/android/incallui/CallButtonPresenter;->muteClicked(Z)V

    goto :goto_0

    :pswitch_4
    iget-object v1, p0, Lcom/android/incallui/SecDrivelinkCallButtonFragment$1;->this$0:Lcom/android/incallui/SecDrivelinkCallButtonFragment;

    invoke-virtual {v1}, Lcom/android/incallui/SecDrivelinkCallButtonFragment;->bluetoothClicked()V

    goto :goto_0

    :pswitch_5
    iget-object v1, p0, Lcom/android/incallui/SecDrivelinkCallButtonFragment$1;->this$0:Lcom/android/incallui/SecDrivelinkCallButtonFragment;

    invoke-virtual {v1}, Lcom/android/incallui/SecDrivelinkCallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v1, v2}, Lcom/android/incallui/CallButtonPresenter;->holdClicked(Z)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7f10011a
        :pswitch_5
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.class Lcom/android/incallui/SecMirrorlinkCallButtonFragment$1;
.super Ljava/lang/Object;
.source "SecMirrorlinkCallButtonFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/SecMirrorlinkCallButtonFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/SecMirrorlinkCallButtonFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/SecMirrorlinkCallButtonFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/SecMirrorlinkCallButtonFragment$1;->this$0:Lcom/android/incallui/SecMirrorlinkCallButtonFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[MIRRORLINK] onClick(View "

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

    :pswitch_0
    const-string v1, "[MIRRORLINK] onClick: unexpected"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->wtf(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/incallui/SecMirrorlinkCallButtonFragment$1;->this$0:Lcom/android/incallui/SecMirrorlinkCallButtonFragment;

    invoke-virtual {v1}, Lcom/android/incallui/SecMirrorlinkCallButtonFragment;->updateVoiceCallButtons()V

    return-void

    :pswitch_1
    iget-object v1, p0, Lcom/android/incallui/SecMirrorlinkCallButtonFragment$1;->this$0:Lcom/android/incallui/SecMirrorlinkCallButtonFragment;

    # invokes: Lcom/android/incallui/SecMirrorlinkCallButtonFragment;->endClicked()V
    invoke-static {v1}, Lcom/android/incallui/SecMirrorlinkCallButtonFragment;->access$000(Lcom/android/incallui/SecMirrorlinkCallButtonFragment;)V

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/android/incallui/SecMirrorlinkCallButtonFragment$1;->this$0:Lcom/android/incallui/SecMirrorlinkCallButtonFragment;

    # invokes: Lcom/android/incallui/SecMirrorlinkCallButtonFragment;->swapClicked()V
    invoke-static {v1}, Lcom/android/incallui/SecMirrorlinkCallButtonFragment;->access$100(Lcom/android/incallui/SecMirrorlinkCallButtonFragment;)V

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/android/incallui/SecMirrorlinkCallButtonFragment$1;->this$0:Lcom/android/incallui/SecMirrorlinkCallButtonFragment;

    # invokes: Lcom/android/incallui/SecMirrorlinkCallButtonFragment;->holdClicked()V
    invoke-static {v1}, Lcom/android/incallui/SecMirrorlinkCallButtonFragment;->access$200(Lcom/android/incallui/SecMirrorlinkCallButtonFragment;)V

    goto :goto_0

    :pswitch_4
    iget-object v1, p0, Lcom/android/incallui/SecMirrorlinkCallButtonFragment$1;->this$0:Lcom/android/incallui/SecMirrorlinkCallButtonFragment;

    invoke-virtual {v1}, Lcom/android/incallui/SecMirrorlinkCallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallButtonPresenter;

    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/AudioModeProvider;->getMute()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    invoke-virtual {v1, v2}, Lcom/android/incallui/CallButtonPresenter;->muteClicked(Z)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :pswitch_5
    iget-object v1, p0, Lcom/android/incallui/SecMirrorlinkCallButtonFragment$1;->this$0:Lcom/android/incallui/SecMirrorlinkCallButtonFragment;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/incallui/SecMirrorlinkCallButtonFragment;->isSupported(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/SecMirrorlinkCallButtonFragment$1;->this$0:Lcom/android/incallui/SecMirrorlinkCallButtonFragment;

    # invokes: Lcom/android/incallui/SecMirrorlinkCallButtonFragment;->mirrlorbluetoothClicked()V
    invoke-static {v1}, Lcom/android/incallui/SecMirrorlinkCallButtonFragment;->access$300(Lcom/android/incallui/SecMirrorlinkCallButtonFragment;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f10011d
        :pswitch_5
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.class Lcom/android/incallui/SecCallCardFragment$1;
.super Landroid/os/Handler;
.source "SecCallCardFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/SecCallCardFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/SecCallCardFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/SecCallCardFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/SecCallCardFragment$1;->this$0:Lcom/android/incallui/SecCallCardFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const-string v0, "hide wave effect container"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/SecCallCardFragment$1;->this$0:Lcom/android/incallui/SecCallCardFragment;

    invoke-virtual {v0}, Lcom/android/incallui/SecCallCardFragment;->hideWaveEffectContainer()V

    iget-object v0, p0, Lcom/android/incallui/SecCallCardFragment$1;->this$0:Lcom/android/incallui/SecCallCardFragment;

    # invokes: Lcom/android/incallui/SecCallCardFragment;->hideVideoTogglingViews()V
    invoke-static {v0}, Lcom/android/incallui/SecCallCardFragment;->access$000(Lcom/android/incallui/SecCallCardFragment;)V

    goto :goto_0

    :pswitch_1
    const-string v0, "reset swap animation"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/SecCallCardFragment$1;->this$0:Lcom/android/incallui/SecCallCardFragment;

    invoke-virtual {v0}, Lcom/android/incallui/SecCallCardFragment;->resetSwapAnimation()V

    goto :goto_0

    :pswitch_2
    const-string v0, "reset merge animation"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/SecCallCardFragment$1;->this$0:Lcom/android/incallui/SecCallCardFragment;

    invoke-virtual {v0}, Lcom/android/incallui/SecCallCardFragment;->resetMergeAnimation()V

    goto :goto_0

    :pswitch_3
    const-string v0, "reset split animation"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/SecCallCardFragment$1;->this$0:Lcom/android/incallui/SecCallCardFragment;

    invoke-virtual {v0}, Lcom/android/incallui/SecCallCardFragment;->resetSplitAnimation()V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/android/incallui/SecCallCardFragment$1;->this$0:Lcom/android/incallui/SecCallCardFragment;

    # invokes: Lcom/android/incallui/SecCallCardFragment;->stopCallEndTimeBlink()V
    invoke-static {v0}, Lcom/android/incallui/SecCallCardFragment;->access$100(Lcom/android/incallui/SecCallCardFragment;)V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/android/incallui/SecCallCardFragment$1;->this$0:Lcom/android/incallui/SecCallCardFragment;

    invoke-virtual {v0}, Lcom/android/incallui/SecCallCardFragment;->animateForPeriodMarkContainer()V

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/android/incallui/SecCallCardFragment$1;->this$0:Lcom/android/incallui/SecCallCardFragment;

    # invokes: Lcom/android/incallui/SecCallCardFragment;->hideVideoTogglingViews()V
    invoke-static {v0}, Lcom/android/incallui/SecCallCardFragment;->access$000(Lcom/android/incallui/SecCallCardFragment;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

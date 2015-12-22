.class Lcom/android/incallui/SecTabletCallCardView$1;
.super Landroid/os/Handler;
.source "SecTabletCallCardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/SecTabletCallCardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/SecTabletCallCardView;


# direct methods
.method constructor <init>(Lcom/android/incallui/SecTabletCallCardView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/SecTabletCallCardView$1;->this$0:Lcom/android/incallui/SecTabletCallCardView;

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

    iget-object v0, p0, Lcom/android/incallui/SecTabletCallCardView$1;->this$0:Lcom/android/incallui/SecTabletCallCardView;

    invoke-virtual {v0}, Lcom/android/incallui/SecTabletCallCardView;->hideWaveEffectContainer()V

    iget-object v0, p0, Lcom/android/incallui/SecTabletCallCardView$1;->this$0:Lcom/android/incallui/SecTabletCallCardView;

    # invokes: Lcom/android/incallui/SecTabletCallCardView;->hideVideoTogglingViews()V
    invoke-static {v0}, Lcom/android/incallui/SecTabletCallCardView;->access$000(Lcom/android/incallui/SecTabletCallCardView;)V

    goto :goto_0

    :pswitch_1
    const-string v0, "reset swap animation"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/SecTabletCallCardView$1;->this$0:Lcom/android/incallui/SecTabletCallCardView;

    invoke-virtual {v0}, Lcom/android/incallui/SecTabletCallCardView;->resetSwapAnimation()V

    goto :goto_0

    :pswitch_2
    const-string v0, "reset merge animation"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/SecTabletCallCardView$1;->this$0:Lcom/android/incallui/SecTabletCallCardView;

    invoke-virtual {v0}, Lcom/android/incallui/SecTabletCallCardView;->resetMergeAnimation()V

    goto :goto_0

    :pswitch_3
    const-string v0, "reset split animation"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/SecTabletCallCardView$1;->this$0:Lcom/android/incallui/SecTabletCallCardView;

    invoke-virtual {v0}, Lcom/android/incallui/SecTabletCallCardView;->resetSplitAnimation()V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/android/incallui/SecTabletCallCardView$1;->this$0:Lcom/android/incallui/SecTabletCallCardView;

    # invokes: Lcom/android/incallui/SecTabletCallCardView;->stopCallEndTimeBlink()V
    invoke-static {v0}, Lcom/android/incallui/SecTabletCallCardView;->access$100(Lcom/android/incallui/SecTabletCallCardView;)V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/android/incallui/SecTabletCallCardView$1;->this$0:Lcom/android/incallui/SecTabletCallCardView;

    invoke-virtual {v0}, Lcom/android/incallui/SecTabletCallCardView;->animateForPeriodMarkContainer()V

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/android/incallui/SecTabletCallCardView$1;->this$0:Lcom/android/incallui/SecTabletCallCardView;

    # invokes: Lcom/android/incallui/SecTabletCallCardView;->hideVideoTogglingViews()V
    invoke-static {v0}, Lcom/android/incallui/SecTabletCallCardView;->access$000(Lcom/android/incallui/SecTabletCallCardView;)V

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

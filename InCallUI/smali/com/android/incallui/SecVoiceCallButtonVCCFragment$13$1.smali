.class Lcom/android/incallui/SecVoiceCallButtonVCCFragment$13$1;
.super Ljava/lang/Object;
.source "SecVoiceCallButtonVCCFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/SecVoiceCallButtonVCCFragment$13;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/incallui/SecVoiceCallButtonVCCFragment$13;


# direct methods
.method constructor <init>(Lcom/android/incallui/SecVoiceCallButtonVCCFragment$13;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$13$1;->this$1:Lcom/android/incallui/SecVoiceCallButtonVCCFragment$13;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    :goto_0
    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$13$1;->this$1:Lcom/android/incallui/SecVoiceCallButtonVCCFragment$13;

    iget-object v3, v3, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$13;->this$0:Lcom/android/incallui/SecVoiceCallButtonVCCFragment;

    # getter for: Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mRunning:Z
    invoke-static {v3}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->access$2100(Lcom/android/incallui/SecVoiceCallButtonVCCFragment;)Z

    move-result v3

    if-eqz v3, :cond_2

    :try_start_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    const-string v3, "send dtmf:"

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mSendNumber: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$13$1;->this$1:Lcom/android/incallui/SecVoiceCallButtonVCCFragment$13;

    iget-object v4, v4, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$13;->this$0:Lcom/android/incallui/SecVoiceCallButtonVCCFragment;

    # getter for: Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mSendNumber:I
    invoke-static {v4}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->access$2000(Lcom/android/incallui/SecVoiceCallButtonVCCFragment;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$13$1;->this$1:Lcom/android/incallui/SecVoiceCallButtonVCCFragment$13;

    iget-object v3, v3, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$13;->this$0:Lcom/android/incallui/SecVoiceCallButtonVCCFragment;

    # getter for: Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mSendNumber:I
    invoke-static {v3}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->access$2000(Lcom/android/incallui/SecVoiceCallButtonVCCFragment;)I

    move-result v3

    iget-object v4, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$13$1;->this$1:Lcom/android/incallui/SecVoiceCallButtonVCCFragment$13;

    iget-object v4, v4, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$13;->this$0:Lcom/android/incallui/SecVoiceCallButtonVCCFragment;

    # getter for: Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->callPath:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->access$2200(Lcom/android/incallui/SecVoiceCallButtonVCCFragment;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_1

    const/4 v3, 0x0

    iput v3, v1, Landroid/os/Message;->what:I

    const-string v3, "dtmf_char"

    iget-object v4, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$13$1;->this$1:Lcom/android/incallui/SecVoiceCallButtonVCCFragment$13;

    iget-object v4, v4, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$13;->this$0:Lcom/android/incallui/SecVoiceCallButtonVCCFragment;

    # getter for: Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->callPath:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->access$2200(Lcom/android/incallui/SecVoiceCallButtonVCCFragment;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$13$1;->this$1:Lcom/android/incallui/SecVoiceCallButtonVCCFragment$13;

    iget-object v5, v5, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$13;->this$0:Lcom/android/incallui/SecVoiceCallButtonVCCFragment;

    # getter for: Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mSendNumber:I
    invoke-static {v5}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->access$2000(Lcom/android/incallui/SecVoiceCallButtonVCCFragment;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putChar(Ljava/lang/String;C)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "send dtmf_char: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$13$1;->this$1:Lcom/android/incallui/SecVoiceCallButtonVCCFragment$13;

    iget-object v4, v4, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$13;->this$0:Lcom/android/incallui/SecVoiceCallButtonVCCFragment;

    # getter for: Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->callPath:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->access$2200(Lcom/android/incallui/SecVoiceCallButtonVCCFragment;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$13$1;->this$1:Lcom/android/incallui/SecVoiceCallButtonVCCFragment$13;

    iget-object v5, v5, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$13;->this$0:Lcom/android/incallui/SecVoiceCallButtonVCCFragment;

    # getter for: Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mSendNumber:I
    invoke-static {v5}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->access$2000(Lcom/android/incallui/SecVoiceCallButtonVCCFragment;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$13$1;->this$1:Lcom/android/incallui/SecVoiceCallButtonVCCFragment$13;

    iget-object v3, v3, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$13;->this$0:Lcom/android/incallui/SecVoiceCallButtonVCCFragment;

    iget-object v3, v3, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mDtmfHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$13$1;->this$1:Lcom/android/incallui/SecVoiceCallButtonVCCFragment$13;

    iget-object v3, v3, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$13;->this$0:Lcom/android/incallui/SecVoiceCallButtonVCCFragment;

    # getter for: Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mSendNumber:I
    invoke-static {v3}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->access$2000(Lcom/android/incallui/SecVoiceCallButtonVCCFragment;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$13$1;->this$1:Lcom/android/incallui/SecVoiceCallButtonVCCFragment$13;

    iget-object v4, v4, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$13;->this$0:Lcom/android/incallui/SecVoiceCallButtonVCCFragment;

    # getter for: Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->callPath:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->access$2200(Lcom/android/incallui/SecVoiceCallButtonVCCFragment;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_0

    const-wide/16 v4, 0x7d0

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    :cond_0
    :goto_1
    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$13$1;->this$1:Lcom/android/incallui/SecVoiceCallButtonVCCFragment$13;

    iget-object v3, v3, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$13;->this$0:Lcom/android/incallui/SecVoiceCallButtonVCCFragment;

    # operator++ for: Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mSendNumber:I
    invoke-static {v3}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->access$2008(Lcom/android/incallui/SecVoiceCallButtonVCCFragment;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_0

    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$13$1;->this$1:Lcom/android/incallui/SecVoiceCallButtonVCCFragment$13;

    iget-object v3, v3, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$13;->this$0:Lcom/android/incallui/SecVoiceCallButtonVCCFragment;

    const/4 v4, 0x0

    # setter for: Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mRunning:Z
    invoke-static {v3, v4}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->access$2102(Lcom/android/incallui/SecVoiceCallButtonVCCFragment;Z)Z

    const/4 v3, 0x1

    iput v3, v1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$13$1;->this$1:Lcom/android/incallui/SecVoiceCallButtonVCCFragment$13;

    iget-object v3, v3, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$13;->this$0:Lcom/android/incallui/SecVoiceCallButtonVCCFragment;

    iget-object v3, v3, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mDtmfHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    const-wide/16 v4, 0x14

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :cond_2
    return-void
.end method

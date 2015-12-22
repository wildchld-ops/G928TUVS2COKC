.class Lcom/android/incallui/SecModifyCallProcessor$1;
.super Landroid/os/Handler;
.source "SecModifyCallProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/SecModifyCallProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/SecModifyCallProcessor;


# direct methods
.method constructor <init>(Lcom/android/incallui/SecModifyCallProcessor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/SecModifyCallProcessor$1;->this$0:Lcom/android/incallui/SecModifyCallProcessor;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "SecModifyCallProcessor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mHandler: unexpected message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/incallui/SecModifyCallProcessor$1;->this$0:Lcom/android/incallui/SecModifyCallProcessor;

    # getter for: Lcom/android/incallui/SecModifyCallProcessor;->mModifyCallPromptDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/incallui/SecModifyCallProcessor;->access$000(Lcom/android/incallui/SecModifyCallProcessor;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecModifyCallProcessor$1;->this$0:Lcom/android/incallui/SecModifyCallProcessor;

    # getter for: Lcom/android/incallui/SecModifyCallProcessor;->mModifyCallPromptDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/incallui/SecModifyCallProcessor;->access$000(Lcom/android/incallui/SecModifyCallProcessor;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SecModifyCallProcessor"

    const-string v1, "- DISMISSING mModifyCallPromptDialog."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/incallui/SecModifyCallProcessor$1;->this$0:Lcom/android/incallui/SecModifyCallProcessor;

    # getter for: Lcom/android/incallui/SecModifyCallProcessor;->mModifyCallPromptDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/incallui/SecModifyCallProcessor;->access$000(Lcom/android/incallui/SecModifyCallProcessor;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iget-object v0, p0, Lcom/android/incallui/SecModifyCallProcessor$1;->this$0:Lcom/android/incallui/SecModifyCallProcessor;

    const/4 v1, 0x0

    # setter for: Lcom/android/incallui/SecModifyCallProcessor;->mModifyCallPromptDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/android/incallui/SecModifyCallProcessor;->access$002(Lcom/android/incallui/SecModifyCallProcessor;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/android/incallui/SecModifyCallProcessor$1;->this$0:Lcom/android/incallui/SecModifyCallProcessor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/incallui/SecModifyCallProcessor;->setIsShowingModifyCallDialog(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecModifyCallProcessor$1;->this$0:Lcom/android/incallui/SecModifyCallProcessor;

    invoke-virtual {v0}, Lcom/android/incallui/SecModifyCallProcessor;->dismissUpgradeDialog()V

    iget-object v0, p0, Lcom/android/incallui/SecModifyCallProcessor$1;->this$0:Lcom/android/incallui/SecModifyCallProcessor;

    invoke-virtual {v0}, Lcom/android/incallui/SecModifyCallProcessor;->rejectModifyCall()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/incallui/SecModifyCallProcessor$1;->this$0:Lcom/android/incallui/SecModifyCallProcessor;

    iget-object v1, p0, Lcom/android/incallui/SecModifyCallProcessor$1;->this$0:Lcom/android/incallui/SecModifyCallProcessor;

    # getter for: Lcom/android/incallui/SecModifyCallProcessor;->mIncomingCallType:I
    invoke-static {v1}, Lcom/android/incallui/SecModifyCallProcessor;->access$100(Lcom/android/incallui/SecModifyCallProcessor;)I

    move-result v1

    # invokes: Lcom/android/incallui/SecModifyCallProcessor;->updateIncomingModifyCall(I)V
    invoke-static {v0, v1}, Lcom/android/incallui/SecModifyCallProcessor;->access$200(Lcom/android/incallui/SecModifyCallProcessor;I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

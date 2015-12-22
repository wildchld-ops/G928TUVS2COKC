.class Lcom/android/incallui/SecModifyCallProcessor$4;
.super Ljava/lang/Object;
.source "SecModifyCallProcessor.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/SecModifyCallProcessor;->updateIncomingModifyCall(I)V
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

    iput-object p1, p0, Lcom/android/incallui/SecModifyCallProcessor$4;->this$0:Lcom/android/incallui/SecModifyCallProcessor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3

    const/16 v2, 0x65

    const-string v0, "SecModifyCallProcessor"

    const-string v1, "onDismiss EVENT_MODIFYCALL_DIALOG_COMPLETE!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/incallui/SecModifyCallProcessor$4;->this$0:Lcom/android/incallui/SecModifyCallProcessor;

    # getter for: Lcom/android/incallui/SecModifyCallProcessor;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/incallui/SecModifyCallProcessor;->access$300(Lcom/android/incallui/SecModifyCallProcessor;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/SecModifyCallProcessor$4;->this$0:Lcom/android/incallui/SecModifyCallProcessor;

    # getter for: Lcom/android/incallui/SecModifyCallProcessor;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/incallui/SecModifyCallProcessor;->access$300(Lcom/android/incallui/SecModifyCallProcessor;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/SecModifyCallProcessor$4;->this$0:Lcom/android/incallui/SecModifyCallProcessor;

    invoke-virtual {v0}, Lcom/android/incallui/SecModifyCallProcessor;->rejectModifyCall()V

    return-void
.end method

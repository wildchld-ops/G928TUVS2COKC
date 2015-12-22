.class Lcom/android/settings/fingerprint/FingerprintConfirm$1$1;
.super Ljava/lang/Object;
.source "FingerprintConfirm.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/FingerprintConfirm$1;->onFingerprintEvent(Lcom/samsung/android/fingerprint/FingerprintEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/fingerprint/FingerprintConfirm$1;

.field final synthetic val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/FingerprintConfirm$1;Lcom/samsung/android/fingerprint/FingerprintEvent;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintConfirm$1$1;->this$1:Lcom/android/settings/fingerprint/FingerprintConfirm$1;

    iput-object p2, p0, Lcom/android/settings/fingerprint/FingerprintConfirm$1$1;->val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v3, 0x0

    const/4 v2, -0x1

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintConfirm$1$1;->val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v1, v1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventId:I

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    :sswitch_0
    return-void

    :sswitch_1
    if-eqz p0, :cond_0

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintConfirm$1$1;->this$1:Lcom/android/settings/fingerprint/FingerprintConfirm$1;

    iget-object v1, v1, Lcom/android/settings/fingerprint/FingerprintConfirm$1;->this$0:Lcom/android/settings/fingerprint/FingerprintConfirm;

    invoke-virtual {v1, v3}, Lcom/android/settings/fingerprint/FingerprintConfirm;->setResult(I)V

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintConfirm$1$1;->this$1:Lcom/android/settings/fingerprint/FingerprintConfirm$1;

    iget-object v1, v1, Lcom/android/settings/fingerprint/FingerprintConfirm$1;->this$0:Lcom/android/settings/fingerprint/FingerprintConfirm;

    invoke-virtual {v1}, Lcom/android/settings/fingerprint/FingerprintConfirm;->finish()V

    goto :goto_0

    :sswitch_2
    const/4 v0, 0x0

    if-eqz p0, :cond_1

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintConfirm$1$1;->val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v1, v1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventResult:I

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintConfirm$1$1;->this$1:Lcom/android/settings/fingerprint/FingerprintConfirm$1;

    iget-object v1, v1, Lcom/android/settings/fingerprint/FingerprintConfirm$1;->this$0:Lcom/android/settings/fingerprint/FingerprintConfirm;

    invoke-virtual {v1, v2}, Lcom/android/settings/fingerprint/FingerprintConfirm;->setResult(I)V

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintConfirm$1$1;->this$1:Lcom/android/settings/fingerprint/FingerprintConfirm$1;

    iget-object v1, v1, Lcom/android/settings/fingerprint/FingerprintConfirm$1;->this$0:Lcom/android/settings/fingerprint/FingerprintConfirm;

    invoke-virtual {v1}, Lcom/android/settings/fingerprint/FingerprintConfirm;->finish()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintConfirm$1$1;->val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v1, v1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventResult:I

    if-ne v1, v2, :cond_0

    if-eqz p0, :cond_2

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintConfirm$1$1;->this$1:Lcom/android/settings/fingerprint/FingerprintConfirm$1;

    iget-object v1, v1, Lcom/android/settings/fingerprint/FingerprintConfirm$1;->this$0:Lcom/android/settings/fingerprint/FingerprintConfirm;

    invoke-virtual {v1, v3}, Lcom/android/settings/fingerprint/FingerprintConfirm;->setResult(I)V

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintConfirm$1$1;->this$1:Lcom/android/settings/fingerprint/FingerprintConfirm$1;

    iget-object v1, v1, Lcom/android/settings/fingerprint/FingerprintConfirm$1;->this$0:Lcom/android/settings/fingerprint/FingerprintConfirm;

    invoke-virtual {v1}, Lcom/android/settings/fingerprint/FingerprintConfirm;->finish()V

    :cond_2
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintConfirm$1$1;->val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v1, v1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintConfirm$1$1;->this$1:Lcom/android/settings/fingerprint/FingerprintConfirm$1;

    iget-object v1, v1, Lcom/android/settings/fingerprint/FingerprintConfirm$1;->this$0:Lcom/android/settings/fingerprint/FingerprintConfirm;

    const v2, 0x7f0a10a2

    # invokes: Lcom/android/settings/fingerprint/FingerprintConfirm;->showSensorErrorDialog(I)V
    invoke-static {v1, v2}, Lcom/android/settings/fingerprint/FingerprintConfirm;->access$100(Lcom/android/settings/fingerprint/FingerprintConfirm;I)V

    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintConfirm$1$1;->this$1:Lcom/android/settings/fingerprint/FingerprintConfirm$1;

    iget-object v1, v1, Lcom/android/settings/fingerprint/FingerprintConfirm$1;->this$0:Lcom/android/settings/fingerprint/FingerprintConfirm;

    # getter for: Lcom/android/settings/fingerprint/FingerprintConfirm;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;
    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerprintConfirm;->access$300(Lcom/android/settings/fingerprint/FingerprintConfirm;)Lcom/samsung/android/fingerprint/FingerprintManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/fingerprint/FingerprintManager;->isEnrolling()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintConfirm$1$1;->this$1:Lcom/android/settings/fingerprint/FingerprintConfirm$1;

    iget-object v1, v1, Lcom/android/settings/fingerprint/FingerprintConfirm$1;->this$0:Lcom/android/settings/fingerprint/FingerprintConfirm;

    # getter for: Lcom/android/settings/fingerprint/FingerprintConfirm;->mFingerprintManager:Lcom/samsung/android/fingerprint/FingerprintManager;
    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerprintConfirm;->access$300(Lcom/android/settings/fingerprint/FingerprintConfirm;)Lcom/samsung/android/fingerprint/FingerprintManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/fingerprint/FingerprintManager;->notifyEnrollEnd()Z

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintConfirm$1$1;->val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v1, v1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    const/16 v2, 0x79

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintConfirm$1$1;->this$1:Lcom/android/settings/fingerprint/FingerprintConfirm$1;

    iget-object v1, v1, Lcom/android/settings/fingerprint/FingerprintConfirm$1;->this$0:Lcom/android/settings/fingerprint/FingerprintConfirm;

    const v2, 0x7f0a10a5

    # invokes: Lcom/android/settings/fingerprint/FingerprintConfirm;->showSensorErrorDialog(I)V
    invoke-static {v1, v2}, Lcom/android/settings/fingerprint/FingerprintConfirm;->access$100(Lcom/android/settings/fingerprint/FingerprintConfirm;I)V

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintConfirm$1$1;->val$event:Lcom/samsung/android/fingerprint/FingerprintEvent;

    iget v1, v1, Lcom/samsung/android/fingerprint/FingerprintEvent;->eventStatus:I

    const/16 v2, 0x7a

    if-ne v1, v2, :cond_3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintConfirm$1$1;->this$1:Lcom/android/settings/fingerprint/FingerprintConfirm$1;

    iget-object v1, v1, Lcom/android/settings/fingerprint/FingerprintConfirm$1;->this$0:Lcom/android/settings/fingerprint/FingerprintConfirm;

    # getter for: Lcom/android/settings/fingerprint/FingerprintConfirm;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/settings/fingerprint/FingerprintConfirm;->access$000(Lcom/android/settings/fingerprint/FingerprintConfirm;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/settings/fingerprint/FingerprintConfirm$1$1$1;

    invoke-direct {v2, p0}, Lcom/android/settings/fingerprint/FingerprintConfirm$1$1$1;-><init>(Lcom/android/settings/fingerprint/FingerprintConfirm$1$1;)V

    const-wide/16 v4, 0xc8

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0xb -> :sswitch_0
        0xc -> :sswitch_0
        0xd -> :sswitch_2
        0x186a0 -> :sswitch_1
    .end sparse-switch
.end method

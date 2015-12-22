.class Lcom/android/phone/operator/chn/ChnCallNotifier$1;
.super Landroid/os/Handler;
.source "ChnCallNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/operator/chn/ChnCallNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/operator/chn/ChnCallNotifier;


# direct methods
.method constructor <init>(Lcom/android/phone/operator/chn/ChnCallNotifier;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/operator/chn/ChnCallNotifier$1;->this$0:Lcom/android/phone/operator/chn/ChnCallNotifier;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1    # Landroid/os/Message;

    const/4 v2, 0x0

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/operator/chn/ChnCallNotifier$1;->this$0:Lcom/android/phone/operator/chn/ChnCallNotifier;

    # getter for: Lcom/android/phone/operator/chn/ChnCallNotifier;->mRedialProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/phone/operator/chn/ChnCallNotifier;->access$000(Lcom/android/phone/operator/chn/ChnCallNotifier;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/operator/chn/ChnCallNotifier$1;->this$0:Lcom/android/phone/operator/chn/ChnCallNotifier;

    # getter for: Lcom/android/phone/operator/chn/ChnCallNotifier;->mRedialProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/android/phone/operator/chn/ChnCallNotifier;->access$000(Lcom/android/phone/operator/chn/ChnCallNotifier;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    iget-object v0, p0, Lcom/android/phone/operator/chn/ChnCallNotifier$1;->this$0:Lcom/android/phone/operator/chn/ChnCallNotifier;

    const/4 v1, 0x0

    # setter for: Lcom/android/phone/operator/chn/ChnCallNotifier;->mRedialProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0, v1}, Lcom/android/phone/operator/chn/ChnCallNotifier;->access$002(Lcom/android/phone/operator/chn/ChnCallNotifier;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    :cond_0
    iget-object v0, p0, Lcom/android/phone/operator/chn/ChnCallNotifier$1;->this$0:Lcom/android/phone/operator/chn/ChnCallNotifier;

    # getter for: Lcom/android/phone/operator/chn/ChnCallNotifier;->mLastCallNumber:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/phone/operator/chn/ChnCallNotifier;->access$100(Lcom/android/phone/operator/chn/ChnCallNotifier;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/operator/chn/ChnCallNotifier$1;->this$0:Lcom/android/phone/operator/chn/ChnCallNotifier;

    iget-object v1, p0, Lcom/android/phone/operator/chn/ChnCallNotifier$1;->this$0:Lcom/android/phone/operator/chn/ChnCallNotifier;

    # getter for: Lcom/android/phone/operator/chn/ChnCallNotifier;->mLastCallNumber:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/phone/operator/chn/ChnCallNotifier;->access$100(Lcom/android/phone/operator/chn/ChnCallNotifier;)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/phone/operator/chn/ChnCallNotifier;->placeCall(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/operator/chn/ChnCallNotifier;->access$200(Lcom/android/phone/operator/chn/ChnCallNotifier;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/phone/operator/chn/ChnCallNotifier$1;->this$0:Lcom/android/phone/operator/chn/ChnCallNotifier;

    # setter for: Lcom/android/phone/operator/chn/ChnCallNotifier;->mIsGsmRedialCall:Z
    invoke-static {v0, v2}, Lcom/android/phone/operator/chn/ChnCallNotifier;->access$302(Lcom/android/phone/operator/chn/ChnCallNotifier;Z)Z

    iget-object v0, p0, Lcom/android/phone/operator/chn/ChnCallNotifier$1;->this$0:Lcom/android/phone/operator/chn/ChnCallNotifier;

    # getter for: Lcom/android/phone/operator/chn/ChnCallNotifier;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/phone/operator/chn/ChnCallNotifier;->access$400(Lcom/android/phone/operator/chn/ChnCallNotifier;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x1f

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/phone/operator/chn/ChnCallNotifier$1;->this$0:Lcom/android/phone/operator/chn/ChnCallNotifier;

    # setter for: Lcom/android/phone/operator/chn/ChnCallNotifier;->mRedialCallCount:I
    invoke-static {v0, v2}, Lcom/android/phone/operator/chn/ChnCallNotifier;->access$502(Lcom/android/phone/operator/chn/ChnCallNotifier;I)I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1f
        :pswitch_0
    .end packed-switch
.end method

.class Lcom/android/phone/ims/IMSConferenceCallActivity$1;
.super Landroid/os/Handler;
.source "IMSConferenceCallActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/ims/IMSConferenceCallActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/ims/IMSConferenceCallActivity;


# direct methods
.method constructor <init>(Lcom/android/phone/ims/IMSConferenceCallActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/ims/IMSConferenceCallActivity$1;->this$0:Lcom/android/phone/ims/IMSConferenceCallActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1    # Landroid/os/Message;

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "[IMSConferenceCallActivity]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[handleMessage] msg.what : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v0, "[IMSConferenceCallActivity]"

    const-string v1, "inside mHandler : ENABLE_TOAST :  enabling toast."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/phone/ims/IMSConferenceCallActivity$1;->this$0:Lcom/android/phone/ims/IMSConferenceCallActivity;

    const/4 v1, 0x0

    # setter for: Lcom/android/phone/ims/IMSConferenceCallActivity;->bToastShowInProgress:Z
    invoke-static {v0, v1}, Lcom/android/phone/ims/IMSConferenceCallActivity;->access$002(Lcom/android/phone/ims/IMSConferenceCallActivity;Z)Z

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/ims/IMSConferenceCallActivity$1;->this$0:Lcom/android/phone/ims/IMSConferenceCallActivity;

    # getter for: Lcom/android/phone/ims/IMSConferenceCallActivity;->mGenericErrorDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/phone/ims/IMSConferenceCallActivity;->access$100(Lcom/android/phone/ims/IMSConferenceCallActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/ims/IMSConferenceCallActivity$1;->this$0:Lcom/android/phone/ims/IMSConferenceCallActivity;

    # getter for: Lcom/android/phone/ims/IMSConferenceCallActivity;->mGenericErrorDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/phone/ims/IMSConferenceCallActivity;->access$100(Lcom/android/phone/ims/IMSConferenceCallActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iget-object v0, p0, Lcom/android/phone/ims/IMSConferenceCallActivity$1;->this$0:Lcom/android/phone/ims/IMSConferenceCallActivity;

    const/4 v1, 0x0

    # setter for: Lcom/android/phone/ims/IMSConferenceCallActivity;->mGenericErrorDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/android/phone/ims/IMSConferenceCallActivity;->access$102(Lcom/android/phone/ims/IMSConferenceCallActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x67
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

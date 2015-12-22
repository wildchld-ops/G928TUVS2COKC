.class Lcom/android/incallui/SecVoiceCallButtonFragment$3;
.super Landroid/os/Handler;
.source "SecVoiceCallButtonFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/SecVoiceCallButtonFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/SecVoiceCallButtonFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/SecVoiceCallButtonFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/SecVoiceCallButtonFragment$3;->this$0:Lcom/android/incallui/SecVoiceCallButtonFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    const/4 v0, 0x1

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallButtonFragment$3;->this$0:Lcom/android/incallui/SecVoiceCallButtonFragment;

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-ne v2, v0, :cond_0

    :goto_1
    iput-boolean v0, v1, Lcom/android/incallui/SecVoiceCallButtonFragment;->mIsSprWFCRegistered:Z

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonFragment$3;->this$0:Lcom/android/incallui/SecVoiceCallButtonFragment;

    iget-object v1, p0, Lcom/android/incallui/SecVoiceCallButtonFragment$3;->this$0:Lcom/android/incallui/SecVoiceCallButtonFragment;

    iget-boolean v1, v1, Lcom/android/incallui/SecVoiceCallButtonFragment;->mIsSprWFCRegistered:Z

    invoke-virtual {v0, v1}, Lcom/android/incallui/SecVoiceCallButtonFragment;->updateEndCallButton(Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

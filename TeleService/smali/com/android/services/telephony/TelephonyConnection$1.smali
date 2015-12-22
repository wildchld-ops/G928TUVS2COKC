.class Lcom/android/services/telephony/TelephonyConnection$1;
.super Landroid/os/Handler;
.source "TelephonyConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/services/telephony/TelephonyConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/services/telephony/TelephonyConnection;


# direct methods
.method constructor <init>(Lcom/android/services/telephony/TelephonyConnection;)V
    .locals 0

    iput-object p1, p0, Lcom/android/services/telephony/TelephonyConnection$1;->this$0:Lcom/android/services/telephony/TelephonyConnection;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1    # Landroid/os/Message;

    const/4 v5, 0x0

    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iget-object v2, p0, Lcom/android/services/telephony/TelephonyConnection$1;->this$0:Lcom/android/services/telephony/TelephonyConnection;

    const-string v3, "MSG_PRECISE_CALL_STATE_CHANGED"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/android/services/telephony/TelephonyConnection$1;->this$0:Lcom/android/services/telephony/TelephonyConnection;

    invoke-virtual {v2}, Lcom/android/services/telephony/TelephonyConnection;->updateState()V

    goto :goto_0

    :sswitch_1
    iget-object v2, p0, Lcom/android/services/telephony/TelephonyConnection$1;->this$0:Lcom/android/services/telephony/TelephonyConnection;

    const-string v3, "MSG_HANDOVER_STATE_CHANGED"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/Connection;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/services/telephony/TelephonyConnection$1;->this$0:Lcom/android/services/telephony/TelephonyConnection;

    iget-object v2, v2, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/services/telephony/TelephonyConnection$1;->this$0:Lcom/android/services/telephony/TelephonyConnection;

    iget-object v2, v2, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getStateBeforeHandover()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    iget-object v3, p0, Lcom/android/services/telephony/TelephonyConnection$1;->this$0:Lcom/android/services/telephony/TelephonyConnection;

    iget-object v3, v3, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    if-ne v2, v3, :cond_0

    :cond_2
    iget-object v2, p0, Lcom/android/services/telephony/TelephonyConnection$1;->this$0:Lcom/android/services/telephony/TelephonyConnection;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SettingOriginalConnection "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/services/telephony/TelephonyConnection$1;->this$0:Lcom/android/services/telephony/TelephonyConnection;

    iget-object v4, v4, Lcom/android/services/telephony/TelephonyConnection;->mOriginalConnection:Lcom/android/internal/telephony/Connection;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Connection;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/services/telephony/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/android/services/telephony/TelephonyConnection$1;->this$0:Lcom/android/services/telephony/TelephonyConnection;

    invoke-virtual {v2, v1}, Lcom/android/services/telephony/TelephonyConnection;->setOriginalConnection(Lcom/android/internal/telephony/Connection;)V

    goto/16 :goto_0

    :sswitch_2
    iget-object v2, p0, Lcom/android/services/telephony/TelephonyConnection$1;->this$0:Lcom/android/services/telephony/TelephonyConnection;

    const-string v3, "MSG_RINGBACK_TONE"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/android/services/telephony/TelephonyConnection$1;->this$0:Lcom/android/services/telephony/TelephonyConnection;

    invoke-virtual {v2}, Lcom/android/services/telephony/TelephonyConnection;->getOriginalConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v2

    iget-object v3, p0, Lcom/android/services/telephony/TelephonyConnection$1;->this$0:Lcom/android/services/telephony/TelephonyConnection;

    # invokes: Lcom/android/services/telephony/TelephonyConnection;->getForegroundConnection()Lcom/android/internal/telephony/Connection;
    invoke-static {v3}, Lcom/android/services/telephony/TelephonyConnection;->access$000(Lcom/android/services/telephony/TelephonyConnection;)Lcom/android/internal/telephony/Connection;

    move-result-object v3

    if-eq v2, v3, :cond_3

    iget-object v2, p0, Lcom/android/services/telephony/TelephonyConnection$1;->this$0:Lcom/android/services/telephony/TelephonyConnection;

    const-string v3, "handleMessage, original connection is not foreground connection, skipping"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_3
    const-string v2, "hk_local_ringback_tone"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/services/telephony/TelephonyConnection$1;->this$0:Lcom/android/services/telephony/TelephonyConnection;

    const-string v3, "HK_LOCAL_RINGBACK_TONE, play in HktwCallNotifier, skipping"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_4
    const-string v2, "dcm_play_ring_back_tone_sound"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/services/telephony/TelephonyConnection$1;->this$0:Lcom/android/services/telephony/TelephonyConnection;

    const-string v3, "Skipped RBT here and played in JpnCallNotifier"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2, v3, v4}, Lcom/android/services/telephony/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_5
    iget-object v3, p0, Lcom/android/services/telephony/TelephonyConnection$1;->this$0:Lcom/android/services/telephony/TelephonyConnection;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    iget-object v2, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v3, v2}, Lcom/android/services/telephony/TelephonyConnection;->setRingbackRequested(Z)V

    goto/16 :goto_0

    :sswitch_3
    iget-object v2, p0, Lcom/android/services/telephony/TelephonyConnection$1;->this$0:Lcom/android/services/telephony/TelephonyConnection;

    invoke-virtual {v2}, Lcom/android/services/telephony/TelephonyConnection;->updateState()V

    iget-object v3, p0, Lcom/android/services/telephony/TelephonyConnection$1;->this$0:Lcom/android/services/telephony/TelephonyConnection;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    invoke-virtual {v3, v2}, Lcom/android/services/telephony/TelephonyConnection;->onDisconnect(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    :sswitch_4
    iget-object v2, p0, Lcom/android/services/telephony/TelephonyConnection$1;->this$0:Lcom/android/services/telephony/TelephonyConnection;

    # getter for: Lcom/android/services/telephony/TelephonyConnection;->mVoicePrivacyState:Z
    invoke-static {v2}, Lcom/android/services/telephony/TelephonyConnection;->access$100(Lcom/android/services/telephony/TelephonyConnection;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/services/telephony/TelephonyConnection$1;->this$0:Lcom/android/services/telephony/TelephonyConnection;

    const/4 v3, 0x1

    # setter for: Lcom/android/services/telephony/TelephonyConnection;->mVoicePrivacyState:Z
    invoke-static {v2, v3}, Lcom/android/services/telephony/TelephonyConnection;->access$102(Lcom/android/services/telephony/TelephonyConnection;Z)Z

    iget-object v2, p0, Lcom/android/services/telephony/TelephonyConnection$1;->this$0:Lcom/android/services/telephony/TelephonyConnection;

    invoke-virtual {v2}, Lcom/android/services/telephony/TelephonyConnection;->updateState()V

    goto/16 :goto_0

    :sswitch_5
    iget-object v2, p0, Lcom/android/services/telephony/TelephonyConnection$1;->this$0:Lcom/android/services/telephony/TelephonyConnection;

    # getter for: Lcom/android/services/telephony/TelephonyConnection;->mVoicePrivacyState:Z
    invoke-static {v2}, Lcom/android/services/telephony/TelephonyConnection;->access$100(Lcom/android/services/telephony/TelephonyConnection;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/services/telephony/TelephonyConnection$1;->this$0:Lcom/android/services/telephony/TelephonyConnection;

    # setter for: Lcom/android/services/telephony/TelephonyConnection;->mVoicePrivacyState:Z
    invoke-static {v2, v5}, Lcom/android/services/telephony/TelephonyConnection;->access$102(Lcom/android/services/telephony/TelephonyConnection;Z)Z

    iget-object v2, p0, Lcom/android/services/telephony/TelephonyConnection$1;->this$0:Lcom/android/services/telephony/TelephonyConnection;

    invoke-virtual {v2}, Lcom/android/services/telephony/TelephonyConnection;->updateState()V

    goto/16 :goto_0

    :sswitch_6
    iget-object v2, p0, Lcom/android/services/telephony/TelephonyConnection$1;->this$0:Lcom/android/services/telephony/TelephonyConnection;

    invoke-static {v2}, Lcom/android/services/telephony/TelephonyConnectionUtils;->onLineCtrlEvent(Lcom/android/services/telephony/TelephonyConnection;)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_2
        0x3 -> :sswitch_1
        0x4 -> :sswitch_3
        0x6 -> :sswitch_4
        0x7 -> :sswitch_5
        0x64 -> :sswitch_6
    .end sparse-switch
.end method

.class Lcom/android/server/telecom/secutils/TeleBroadcastReceiver$1;
.super Landroid/os/Handler;
.source "TeleBroadcastReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/telecom/secutils/TeleBroadcastReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/telecom/secutils/TeleBroadcastReceiver;


# direct methods
.method constructor <init>(Lcom/android/server/telecom/secutils/TeleBroadcastReceiver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/telecom/secutils/TeleBroadcastReceiver$1;->this$0:Lcom/android/server/telecom/secutils/TeleBroadcastReceiver;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    const/4 v1, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mHandler : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/telecom/secutils/TeleBroadcastReceiver$1;->this$0:Lcom/android/server/telecom/secutils/TeleBroadcastReceiver;

    iget-object v1, p0, Lcom/android/server/telecom/secutils/TeleBroadcastReceiver$1;->this$0:Lcom/android/server/telecom/secutils/TeleBroadcastReceiver;

    # invokes: Lcom/android/server/telecom/secutils/TeleBroadcastReceiver;->getIntent(Landroid/os/Message;)Landroid/content/Intent;
    invoke-static {v1, p1}, Lcom/android/server/telecom/secutils/TeleBroadcastReceiver;->access$000(Lcom/android/server/telecom/secutils/TeleBroadcastReceiver;Landroid/os/Message;)Landroid/content/Intent;

    move-result-object v1

    # invokes: Lcom/android/server/telecom/secutils/TeleBroadcastReceiver;->handleWbAmrChanged(Landroid/content/Intent;)V
    invoke-static {v0, v1}, Lcom/android/server/telecom/secutils/TeleBroadcastReceiver;->access$100(Lcom/android/server/telecom/secutils/TeleBroadcastReceiver;Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/server/telecom/secutils/TeleBroadcastReceiver$1;->this$0:Lcom/android/server/telecom/secutils/TeleBroadcastReceiver;

    iget-object v1, p0, Lcom/android/server/telecom/secutils/TeleBroadcastReceiver$1;->this$0:Lcom/android/server/telecom/secutils/TeleBroadcastReceiver;

    # invokes: Lcom/android/server/telecom/secutils/TeleBroadcastReceiver;->getIntent(Landroid/os/Message;)Landroid/content/Intent;
    invoke-static {v1, p1}, Lcom/android/server/telecom/secutils/TeleBroadcastReceiver;->access$000(Lcom/android/server/telecom/secutils/TeleBroadcastReceiver;Landroid/os/Message;)Landroid/content/Intent;

    move-result-object v1

    # invokes: Lcom/android/server/telecom/secutils/TeleBroadcastReceiver;->handleNotifyMissedCall(Landroid/content/Intent;)V
    invoke-static {v0, v1}, Lcom/android/server/telecom/secutils/TeleBroadcastReceiver;->access$200(Lcom/android/server/telecom/secutils/TeleBroadcastReceiver;Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/server/telecom/secutils/TeleBroadcastReceiver$1;->this$0:Lcom/android/server/telecom/secutils/TeleBroadcastReceiver;

    iget-object v1, p0, Lcom/android/server/telecom/secutils/TeleBroadcastReceiver$1;->this$0:Lcom/android/server/telecom/secutils/TeleBroadcastReceiver;

    # invokes: Lcom/android/server/telecom/secutils/TeleBroadcastReceiver;->getIntent(Landroid/os/Message;)Landroid/content/Intent;
    invoke-static {v1, p1}, Lcom/android/server/telecom/secutils/TeleBroadcastReceiver;->access$000(Lcom/android/server/telecom/secutils/TeleBroadcastReceiver;Landroid/os/Message;)Landroid/content/Intent;

    move-result-object v1

    # invokes: Lcom/android/server/telecom/secutils/TeleBroadcastReceiver;->handleRADSelectForGear(Landroid/content/Intent;)V
    invoke-static {v0, v1}, Lcom/android/server/telecom/secutils/TeleBroadcastReceiver;->access$300(Lcom/android/server/telecom/secutils/TeleBroadcastReceiver;Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_3
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    iget-object v2, v0, Lcom/android/server/telecom/CallsManager;->mCallAudioManager:Lcom/android/server/telecom/CallAudioManager;

    sget v0, Lcom/android/server/telecom/secutils/TeleBroadcastReceiver;->mDockState:I

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isConnectedMirrorLink()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2, v0}, Lcom/android/server/telecom/CallAudioManager;->turnOnSpeaker(Z)V

    :cond_0
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "received EVENT_DOCK_STATE_CHANGED. Phone inDock = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " state="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v2, Lcom/android/server/telecom/secutils/TeleBroadcastReceiver;->mDockState:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/android/server/telecom/secutils/TeleBroadcastReceiver$1;->this$0:Lcom/android/server/telecom/secutils/TeleBroadcastReceiver;

    # invokes: Lcom/android/server/telecom/secutils/TeleBroadcastReceiver;->onEmergencyStateChanged()V
    invoke-static {v0}, Lcom/android/server/telecom/secutils/TeleBroadcastReceiver;->access$400(Lcom/android/server/telecom/secutils/TeleBroadcastReceiver;)V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/android/server/telecom/secutils/TeleBroadcastReceiver$1;->this$0:Lcom/android/server/telecom/secutils/TeleBroadcastReceiver;

    # invokes: Lcom/android/server/telecom/secutils/TeleBroadcastReceiver;->handleBootCompleted()V
    invoke-static {v0}, Lcom/android/server/telecom/secutils/TeleBroadcastReceiver;->access$500(Lcom/android/server/telecom/secutils/TeleBroadcastReceiver;)V

    goto :goto_0

    :pswitch_6
    const-string v0, "drivelink_mode"

    invoke-static {v0, v1}, Lcom/android/services/telephony/common/SystemDBInterface;->setSettingDB(Ljava/lang/String;I)V

    const-string v0, "carmode_home"

    invoke-static {v0, v1}, Lcom/android/services/telephony/common/SystemDBInterface;->setSettingDB(Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.class final Lcom/android/server/telecom/TelecomService$MainThreadHandler;
.super Landroid/os/Handler;
.source "TelecomService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/telecom/TelecomService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MainThreadHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/telecom/TelecomService;


# direct methods
.method private constructor <init>(Lcom/android/server/telecom/TelecomService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/telecom/TelecomService$MainThreadHandler;->this$0:Lcom/android/server/telecom/TelecomService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/telecom/TelecomService;Lcom/android/server/telecom/TelecomService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/telecom/TelecomService$MainThreadHandler;-><init>(Lcom/android/server/telecom/TelecomService;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/server/telecom/TelecomService$MainThreadRequest;

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/telecom/TelecomService$MainThreadRequest;

    const/4 v3, 0x0

    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    :cond_0
    :goto_0
    move-object v1, v3

    :goto_1
    if-eqz v1, :cond_1

    iput-object v1, v0, Lcom/android/server/telecom/TelecomService$MainThreadRequest;->result:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-void

    :pswitch_0
    # getter for: Lcom/android/server/telecom/TelecomService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/telecom/TelecomService;->access$000()Ljava/lang/String;

    move-result-object v4

    const-string v5, "MainThreadHandler - MSG_SILENCE_RINGER"

    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v6, v2

    invoke-static {v4, v5, v6}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/server/telecom/TelecomService$MainThreadHandler;->this$0:Lcom/android/server/telecom/TelecomService;

    # getter for: Lcom/android/server/telecom/TelecomService;->mCallsManager:Lcom/android/server/telecom/CallsManager;
    invoke-static {v1}, Lcom/android/server/telecom/TelecomService;->access$100(Lcom/android/server/telecom/TelecomService;)Lcom/android/server/telecom/CallsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/telecom/CallsManager;->getRinger()Lcom/android/server/telecom/Ringer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/telecom/Ringer;->silence()V

    move-object v1, v3

    goto :goto_1

    :pswitch_1
    # getter for: Lcom/android/server/telecom/TelecomService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/telecom/TelecomService;->access$000()Ljava/lang/String;

    move-result-object v4

    const-string v5, "MainThreadHandler - MSG_SHOW_CALL_SCREEN"

    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {v4, v5, v6}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/android/server/telecom/TelecomService$MainThreadHandler;->this$0:Lcom/android/server/telecom/TelecomService;

    iget v5, p1, Landroid/os/Message;->arg1:I

    if-ne v5, v1, :cond_2

    :goto_2
    # invokes: Lcom/android/server/telecom/TelecomService;->showCallScreenInternal(Z)V
    invoke-static {v4, v1}, Lcom/android/server/telecom/TelecomService;->access$200(Lcom/android/server/telecom/TelecomService;Z)V

    move-object v1, v3

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2

    :pswitch_2
    # getter for: Lcom/android/server/telecom/TelecomService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/telecom/TelecomService;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "MainThreadHandler - MSG_END_CALL"

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v5, v2

    invoke-static {v3, v4, v5}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/server/telecom/TelecomService$MainThreadHandler;->this$0:Lcom/android/server/telecom/TelecomService;

    # invokes: Lcom/android/server/telecom/TelecomService;->endCallInternal()Z
    invoke-static {v1}, Lcom/android/server/telecom/TelecomService;->access$300(Lcom/android/server/telecom/TelecomService;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_1

    :pswitch_3
    # getter for: Lcom/android/server/telecom/TelecomService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/telecom/TelecomService;->access$000()Ljava/lang/String;

    move-result-object v4

    const-string v5, "MainThreadHandler - MSG_ACCEPT_RINGING_CALL"

    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v6, v2

    invoke-static {v4, v5, v6}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/server/telecom/TelecomService$MainThreadHandler;->this$0:Lcom/android/server/telecom/TelecomService;

    # invokes: Lcom/android/server/telecom/TelecomService;->acceptRingingCallInternal()V
    invoke-static {v1}, Lcom/android/server/telecom/TelecomService;->access$400(Lcom/android/server/telecom/TelecomService;)V

    move-object v1, v3

    goto :goto_1

    :pswitch_4
    # getter for: Lcom/android/server/telecom/TelecomService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/telecom/TelecomService;->access$000()Ljava/lang/String;

    move-result-object v4

    const-string v5, "MainThreadHandler - MSG_CANCEL_MISSED_CALLS_NOTIFICATION"

    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v6, v2

    invoke-static {v4, v5, v6}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/server/telecom/TelecomService$MainThreadHandler;->this$0:Lcom/android/server/telecom/TelecomService;

    # getter for: Lcom/android/server/telecom/TelecomService;->mMissedCallNotifier:Lcom/android/server/telecom/MissedCallNotifier;
    invoke-static {v1}, Lcom/android/server/telecom/TelecomService;->access$500(Lcom/android/server/telecom/TelecomService;)Lcom/android/server/telecom/MissedCallNotifier;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/telecom/MissedCallNotifier;->clearMissedCalls()V

    const-string v1, "auto_reject_notification"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/telecom/TelecomService$MainThreadHandler;->this$0:Lcom/android/server/telecom/TelecomService;

    # getter for: Lcom/android/server/telecom/TelecomService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/telecom/TelecomService;->access$600(Lcom/android/server/telecom/TelecomService;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/telecom/operator/usa/AutoRejectedCallNotifier;->getInstance(Landroid/content/Context;)Lcom/android/server/telecom/operator/usa/AutoRejectedCallNotifier;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/telecom/operator/usa/AutoRejectedCallNotifier;->clearAutoRejectedCalls()V

    move-object v1, v3

    goto/16 :goto_1

    :pswitch_5
    iget-object v1, p0, Lcom/android/server/telecom/TelecomService$MainThreadHandler;->this$0:Lcom/android/server/telecom/TelecomService;

    # getter for: Lcom/android/server/telecom/TelecomService;->mCallsManager:Lcom/android/server/telecom/CallsManager;
    invoke-static {v1}, Lcom/android/server/telecom/TelecomService;->access$100(Lcom/android/server/telecom/TelecomService;)Lcom/android/server/telecom/CallsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/telecom/CallsManager;->isTtySupported()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto/16 :goto_1

    :pswitch_6
    iget-object v1, p0, Lcom/android/server/telecom/TelecomService$MainThreadHandler;->this$0:Lcom/android/server/telecom/TelecomService;

    # getter for: Lcom/android/server/telecom/TelecomService;->mCallsManager:Lcom/android/server/telecom/CallsManager;
    invoke-static {v1}, Lcom/android/server/telecom/TelecomService;->access$100(Lcom/android/server/telecom/TelecomService;)Lcom/android/server/telecom/CallsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/telecom/CallsManager;->getCurrentTtyMode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto/16 :goto_1

    :pswitch_7
    iget-object v4, v0, Lcom/android/server/telecom/TelecomService$MainThreadRequest;->arg:Ljava/lang/Object;

    if-eqz v4, :cond_3

    iget-object v4, v0, Lcom/android/server/telecom/TelecomService$MainThreadRequest;->arg:Ljava/lang/Object;

    instance-of v4, v4, Landroid/content/Intent;

    if-nez v4, :cond_4

    :cond_3
    const-string v1, "Invalid new incoming call request"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/android/server/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v1, v3

    goto/16 :goto_1

    :cond_4
    # getter for: Lcom/android/server/telecom/TelecomService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/telecom/TelecomService;->access$000()Ljava/lang/String;

    move-result-object v4

    const-string v5, "MainThreadHandler - MSG_NEW_INCOMING_CALL"

    new-array v6, v1, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v6, v2

    invoke-static {v4, v5, v6}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, v0, Lcom/android/server/telecom/TelecomService$MainThreadRequest;->arg:Ljava/lang/Object;

    check-cast v1, Landroid/content/Intent;

    invoke-static {v1}, Lcom/android/server/telecom/CallReceiver;->processIncomingCallIntent(Landroid/content/Intent;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

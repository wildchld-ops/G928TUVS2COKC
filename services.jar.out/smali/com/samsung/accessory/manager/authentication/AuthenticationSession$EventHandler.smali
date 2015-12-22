.class Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;
.super Landroid/os/Handler;
.source "AuthenticationSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/accessory/manager/authentication/AuthenticationSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;


# direct methods
.method public constructor <init>(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;Landroid/os/Looper;)V
    .locals 2

    iput-object p1, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x3

    const/4 v3, 0x0

    # getter for: Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleMessage : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    # getter for: Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->access$200(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    iget-object v0, v0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mAuthenticator:Lcom/samsung/accessory/manager/authentication/Authenticator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    iget-object v0, v0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mAuthenticator:Lcom/samsung/accessory/manager/authentication/Authenticator;

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/Authenticator;->getConnectivity()Lcom/samsung/accessory/manager/connectivity/Connectivity;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    iget-object v0, v0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mAuthenticator:Lcom/samsung/accessory/manager/authentication/Authenticator;

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/Authenticator;->getConnectivity()Lcom/samsung/accessory/manager/connectivity/Connectivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/connectivity/Connectivity;->isEnabledInternally()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    iget-object v0, v0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mAuthenticator:Lcom/samsung/accessory/manager/authentication/Authenticator;

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/Authenticator;->getConnectivity()Lcom/samsung/accessory/manager/connectivity/Connectivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/connectivity/Connectivity;->disable()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    const/16 v1, 0xc

    # invokes: Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->replayAuthfail(I)V
    invoke-static {v0, v1}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->access$300(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;I)V

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    # invokes: Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->handleTearDown()V
    invoke-static {v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->access$400(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    # setter for: Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mInternalState:I
    invoke-static {v0, v4}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->access$502(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;I)I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    # getter for: Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mConnectAfterEnable:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->access$600(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    # invokes: Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->connect()V
    invoke-static {v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->access$700(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)V

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    # getter for: Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mConnectAfterEnable:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->access$600(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    # getter for: Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->access$200(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    # getter for: Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mTeardownRequested:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->access$200(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    # getter for: Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mSessionHandler:Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;
    invoke-static {v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->access$000(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :cond_3
    # getter for: Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Connectivity is disabled by user"

    invoke-static {v0, v1}, Landroid/util/Slog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    invoke-virtual {v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->getSessionState()I

    move-result v0

    if-ne v0, v4, :cond_0

    # getter for: Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Connectivity is turned off while authentication is running!"

    invoke-static {v0, v1}, Landroid/util/Slog;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    # setter for: Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mTurnedOffWhileRunning:Z
    invoke-static {v0, v5}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->access$802(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;Z)Z

    goto/16 :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    # invokes: Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->handleSetConnection()V
    invoke-static {v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->access$900(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)V

    goto/16 :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    # invokes: Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->connect()V
    invoke-static {v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->access$700(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)V

    goto/16 :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    # getter for: Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mSessionEventListener:Lcom/samsung/accessory/manager/authentication/AuthenticationSession$SessionEventListener;
    invoke-static {v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->access$1000(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)Lcom/samsung/accessory/manager/authentication/AuthenticationSession$SessionEventListener;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    # getter for: Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mSessionEventListener:Lcom/samsung/accessory/manager/authentication/AuthenticationSession$SessionEventListener;
    invoke-static {v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->access$1000(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)Lcom/samsung/accessory/manager/authentication/AuthenticationSession$SessionEventListener;

    move-result-object v0

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    invoke-interface {v0, v1, v2}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$SessionEventListener;->onSessionEvent(ILcom/samsung/accessory/manager/authentication/AuthenticationSession;)V

    :cond_4
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    # setter for: Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mTurnedOffWhileRunning:Z
    invoke-static {v0, v3}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->access$802(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;Z)Z

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    new-instance v1, Ljava/lang/Thread;

    iget-object v2, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    # setter for: Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mSessionThread:Ljava/lang/Thread;
    invoke-static {v0, v1}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->access$1102(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;Ljava/lang/Thread;)Ljava/lang/Thread;

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    # getter for: Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->mSessionThread:Ljava/lang/Thread;
    invoke-static {v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->access$1100(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    # invokes: Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->setState(I)V
    invoke-static {v0, v4}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->access$1200(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;I)V

    goto/16 :goto_0

    :pswitch_7
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    # invokes: Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->handleStartSession()V
    invoke-static {v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->access$1300(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)V

    goto/16 :goto_0

    :pswitch_8
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    # invokes: Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->handleStopSession(Z)V
    invoke-static {v0, v3}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->access$1400(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;Z)V

    goto/16 :goto_0

    :pswitch_9
    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    # invokes: Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->handleTearDown()V
    invoke-static {v0}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->access$400(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;)V

    goto/16 :goto_0

    :pswitch_a
    # getter for: Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "session is timed out!"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    const/16 v1, 0x1f

    # invokes: Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->replayAuthfail(I)V
    invoke-static {v0, v1}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->access$300(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;I)V

    iget-object v0, p0, Lcom/samsung/accessory/manager/authentication/AuthenticationSession$EventHandler;->this$0:Lcom/samsung/accessory/manager/authentication/AuthenticationSession;

    # invokes: Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->handleStopSession(Z)V
    invoke-static {v0, v5}, Lcom/samsung/accessory/manager/authentication/AuthenticationSession;->access$1400(Lcom/samsung/accessory/manager/authentication/AuthenticationSession;Z)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

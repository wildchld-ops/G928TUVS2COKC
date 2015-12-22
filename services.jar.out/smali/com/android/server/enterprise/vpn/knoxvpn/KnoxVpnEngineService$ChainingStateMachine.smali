.class Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$ChainingStateMachine;
.super Ljava/lang/Thread;
.source "KnoxVpnEngineService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ChainingStateMachine"
.end annotation


# instance fields
.field private connectingStateSleepTime:J

.field private idleStateSleepTime:J

.field private profileName:Ljava/lang/String;

.field private requiredState:I

.field final synthetic this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

.field private threadStartTime:J


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;Ljava/lang/String;I)V
    .locals 2

    iput-object p1, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$ChainingStateMachine;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$ChainingStateMachine;->profileName:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$ChainingStateMachine;->requiredState:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$ChainingStateMachine;->threadStartTime:J

    const-wide/16 v0, 0x7d0

    iput-wide v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$ChainingStateMachine;->idleStateSleepTime:J

    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$ChainingStateMachine;->connectingStateSleepTime:J

    iput-object p2, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$ChainingStateMachine;->profileName:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$ChainingStateMachine;->requiredState:I

    return-void
.end method

.method private startChainedConnection(Ljava/lang/String;J)V
    .locals 10

    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$000()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "KnoxVpnEngineService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ChainingStateMachine: startChainedConnection is being called for profile "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    invoke-static {p2, p3}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$ChainingStateMachine;->sleep(J)V

    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$000()Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "KnoxVpnEngineService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ChainingStateMachine: The thread running time after delay is  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v5, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$ChainingStateMachine;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    invoke-virtual {v5, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getBinderInterfaceForProfile(Ljava/lang/String;)Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;

    move-result-object v4

    if-eqz v4, :cond_3

    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$000()Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "KnoxVpnEngineService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ChainingStateMachine: state of the profile after delay is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v4, p1}, Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;->getState(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-interface {v4, p1}, Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;->getState(Ljava/lang/String;)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    :cond_3
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v5, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$ChainingStateMachine;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    # invokes: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->startVpnProfile(Ljava/lang/String;)I
    invoke-static {v5, p1}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$2700(Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;Ljava/lang/String;)I

    move-result v3

    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$000()Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "KnoxVpnEngineService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ChainingStateMachine: the profile is going to be started after the delay and the result is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$000()Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "KnoxVpnEngineService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception at startChainedConnection API "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_2
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$000()Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "KnoxVpnEngineService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ChainingStateMachine: currentTime after the thread has started is  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-wide v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$ChainingStateMachine;->threadStartTime:J

    sub-long v6, v0, v6

    const-wide/32 v8, 0xea60

    cmp-long v5, v6, v8

    if-gtz v5, :cond_6

    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$000()Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v5, "KnoxVpnEngineService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ChainingStateMachine: the profile is going to be delayed again "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-wide v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$ChainingStateMachine;->connectingStateSleepTime:J

    invoke-direct {p0, p1, v6, v7}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$ChainingStateMachine;->startChainedConnection(Ljava/lang/String;J)V

    goto/16 :goto_0

    :cond_6
    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$000()Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "KnoxVpnEngineService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ChainingStateMachine: time out has happened and going to exit "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public exit()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$ChainingStateMachine;->interrupt()V

    return-void
.end method

.method public run()V
    .locals 8

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$ChainingStateMachine;->threadStartTime:J

    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$000()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "KnoxVpnEngineService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ChainingStateMachine: thread start time is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$ChainingStateMachine;->threadStartTime:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$ChainingStateMachine;->this$0:Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;

    iget-object v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$ChainingStateMachine;->profileName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->getBinderInterfaceForProfile(Ljava/lang/String;)Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;

    move-result-object v2

    if-nez v2, :cond_2

    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$000()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "KnoxVpnEngineService"

    const-string v4, "Error occured while ChainingStateMachine: The error code is 110"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$ChainingStateMachine;->profileName:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/sec/enterprise/mdm/services/vpn/knoxvpn/IKnoxVpnService;->getState(Ljava/lang/String;)I

    move-result v0

    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$000()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "KnoxVpnEngineService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ChainingStateMachine: currentState of the profile is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    packed-switch v0, :pswitch_data_0

    :goto_1
    :pswitch_0
    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$000()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "KnoxVpnEngineService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ChainingStateMachine: thread stop time is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    # getter for: Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->DBG:Z
    invoke-static {}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService;->access$000()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "KnoxVpnEngineService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception at ChainingStateMachine API "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_1
    :try_start_1
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$ChainingStateMachine;->profileName:Ljava/lang/String;

    iget-wide v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$ChainingStateMachine;->idleStateSleepTime:J

    invoke-direct {p0, v3, v4, v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$ChainingStateMachine;->startChainedConnection(Ljava/lang/String;J)V

    goto :goto_1

    :pswitch_2
    iget-object v3, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$ChainingStateMachine;->profileName:Ljava/lang/String;

    iget-wide v4, p0, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$ChainingStateMachine;->connectingStateSleepTime:J

    invoke-direct {p0, v3, v4, v5}, Lcom/android/server/enterprise/vpn/knoxvpn/KnoxVpnEngineService$ChainingStateMachine;->startChainedConnection(Ljava/lang/String;J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

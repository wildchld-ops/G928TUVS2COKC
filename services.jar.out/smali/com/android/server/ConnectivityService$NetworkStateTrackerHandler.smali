.class Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;
.super Landroid/os/Handler;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkStateTrackerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ConnectivityService;


# direct methods
.method public constructor <init>(Lcom/android/server/ConnectivityService;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 16

    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v0, p1

    # invokes: Lcom/android/server/ConnectivityService;->handleAsyncChannelHalfConnect(Landroid/os/Message;)V
    invoke-static {v1, v0}, Lcom/android/server/ConnectivityService;->access$1900(Lcom/android/server/ConnectivityService;Landroid/os/Message;)V

    goto :goto_0

    :sswitch_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$2000(Lcom/android/server/ConnectivityService;)Ljava/util/HashMap;

    move-result-object v1

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/connectivity/NetworkAgentInfo;

    if-eqz v10, :cond_0

    iget-object v1, v10, Lcom/android/server/connectivity/NetworkAgentInfo;->asyncChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v1}, Lcom/android/internal/util/AsyncChannel;->disconnect()V

    goto :goto_0

    :sswitch_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v0, p1

    # invokes: Lcom/android/server/ConnectivityService;->handleAsyncChannelDisconnected(Landroid/os/Message;)V
    invoke-static {v1, v0}, Lcom/android/server/ConnectivityService;->access$2100(Lcom/android/server/ConnectivityService;Landroid/os/Message;)V

    goto :goto_0

    :sswitch_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$2000(Lcom/android/server/ConnectivityService;)Ljava/util/HashMap;

    move-result-object v1

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/connectivity/NetworkAgentInfo;

    if-nez v10, :cond_1

    const-string v1, "EVENT_NETWORK_CAPABILITIES_CHANGED from unknown NetworkAgent"

    # invokes: Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$200(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/NetworkCapabilities;

    # invokes: Lcom/android/server/ConnectivityService;->updateCapabilities(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkCapabilities;)V
    invoke-static {v2, v10, v1}, Lcom/android/server/ConnectivityService;->access$2200(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkCapabilities;)V

    goto :goto_0

    :sswitch_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    # invokes: Lcom/android/server/ConnectivityService;->handleDefaultNetworkSwitch()V
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$2300(Lcom/android/server/ConnectivityService;)V

    goto :goto_0

    :sswitch_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$2000(Lcom/android/server/ConnectivityService;)Ljava/util/HashMap;

    move-result-object v1

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/connectivity/NetworkAgentInfo;

    if-nez v10, :cond_2

    const-string v1, "NetworkAgent not found for EVENT_NETWORK_PROPERTIES_CHANGED"

    # invokes: Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$200(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v11, v10, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    monitor-enter v10

    :try_start_0
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/LinkProperties;

    iput-object v1, v10, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean v1, v10, Lcom/android/server/connectivity/NetworkAgentInfo;->created:Z

    if-nez v1, :cond_3

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->bLPUpdatedBeforeConnected:Z
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$2400(Lcom/android/server/ConnectivityService;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    # invokes: Lcom/android/server/ConnectivityService;->updateLinkProperties(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/LinkProperties;)V
    invoke-static {v1, v10, v11}, Lcom/android/server/ConnectivityService;->access$2500(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/LinkProperties;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    const v2, 0x80007

    invoke-virtual {v1, v10, v2}, Lcom/android/server/ConnectivityService;->notifyNetworkCallbacks(Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :sswitch_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$2000(Lcom/android/server/ConnectivityService;)Ljava/util/HashMap;

    move-result-object v1

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/connectivity/NetworkAgentInfo;

    if-nez v10, :cond_4

    const-string v1, "EVENT_NETWORK_INFO_CHANGED from unknown NetworkAgent"

    # invokes: Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$200(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/net/NetworkInfo;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    # invokes: Lcom/android/server/ConnectivityService;->updateNetworkInfo(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkInfo;)V
    invoke-static {v1, v10, v8}, Lcom/android/server/ConnectivityService;->access$2600(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkInfo;)V

    goto/16 :goto_0

    :sswitch_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$2000(Lcom/android/server/ConnectivityService;)Ljava/util/HashMap;

    move-result-object v1

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/connectivity/NetworkAgentInfo;

    if-nez v10, :cond_5

    const-string v1, "EVENT_REPLACE_NETWORK_INFO from unknown NetworkAgent"

    # invokes: Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$200(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/net/NetworkInfo;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    # invokes: Lcom/android/server/ConnectivityService;->replaceNetworkInfo(Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkInfo;)V
    invoke-static {v1, v10, v8}, Lcom/android/server/ConnectivityService;->access$2700(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;Landroid/net/NetworkInfo;)V

    goto/16 :goto_0

    :sswitch_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$2000(Lcom/android/server/ConnectivityService;)Ljava/util/HashMap;

    move-result-object v1

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/connectivity/NetworkAgentInfo;

    if-nez v10, :cond_6

    const-string v1, "EVENT_NETWORK_SCORE_CHANGED from unknown NetworkAgent"

    # invokes: Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$200(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Integer;

    if-eqz v12, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v2

    # invokes: Lcom/android/server/ConnectivityService;->updateNetworkScore(Lcom/android/server/connectivity/NetworkAgentInfo;I)V
    invoke-static {v1, v10, v2}, Lcom/android/server/ConnectivityService;->access$2800(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;I)V

    goto/16 :goto_0

    :sswitch_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$2000(Lcom/android/server/ConnectivityService;)Ljava/util/HashMap;

    move-result-object v1

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/connectivity/NetworkAgentInfo;

    if-nez v10, :cond_7

    const-string v1, "EVENT_UID_RANGES_ADDED from unknown NetworkAgent"

    # invokes: Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$200(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    :try_start_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$2900(Lcom/android/server/ConnectivityService;)Landroid/os/INetworkManagementService;

    move-result-object v2

    iget-object v1, v10, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v3, v1, Landroid/net/Network;->netId:I

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [Landroid/net/UidRange;

    check-cast v1, [Landroid/net/UidRange;

    invoke-interface {v2, v3, v1}, Landroid/os/INetworkManagementService;->addVpnUidRanges(I[Landroid/net/UidRange;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in addVpnUidRanges: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$200(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$2000(Lcom/android/server/ConnectivityService;)Ljava/util/HashMap;

    move-result-object v1

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/connectivity/NetworkAgentInfo;

    if-nez v10, :cond_8

    const-string v1, "EVENT_UID_RANGES_REMOVED from unknown NetworkAgent"

    # invokes: Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$200(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    :try_start_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mNetd:Landroid/os/INetworkManagementService;
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$2900(Lcom/android/server/ConnectivityService;)Landroid/os/INetworkManagementService;

    move-result-object v2

    iget-object v1, v10, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget v3, v1, Landroid/net/Network;->netId:I

    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, [Landroid/net/UidRange;

    check-cast v1, [Landroid/net/UidRange;

    invoke-interface {v2, v3, v1}, Landroid/os/INetworkManagementService;->removeVpnUidRanges(I[Landroid/net/UidRange;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    :catch_1
    move-exception v7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in removeVpnUidRanges: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$200(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mNetworkAgentInfos:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$2000(Lcom/android/server/ConnectivityService;)Ljava/util/HashMap;

    move-result-object v1

    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/connectivity/NetworkAgentInfo;

    if-nez v10, :cond_9

    const-string v1, "EVENT_SET_EXPLICITLY_SELECTED from unknown NetworkAgent"

    # invokes: Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$200(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    iget-boolean v1, v10, Lcom/android/server/connectivity/NetworkAgentInfo;->created:Z

    if-eqz v1, :cond_a

    iget-object v1, v10, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    iget-boolean v1, v1, Landroid/net/NetworkMisc;->explicitlySelected:Z

    if-nez v1, :cond_a

    const-string v1, "ERROR: created network explicitly selected."

    # invokes: Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$200(Ljava/lang/String;)V

    :cond_a
    iget-object v1, v10, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMisc:Landroid/net/NetworkMisc;

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/net/NetworkMisc;->explicitlySelected:Z

    goto/16 :goto_0

    :sswitch_c
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Lcom/android/server/connectivity/NetworkAgentInfo;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    const-string v2, "EVENT_NETWORK_VALIDATED"

    # invokes: Lcom/android/server/ConnectivityService;->isLiveNetworkAgent(Lcom/android/server/connectivity/NetworkAgentInfo;Ljava/lang/String;)Z
    invoke-static {v1, v10, v2}, Lcom/android/server/ConnectivityService;->access$3000(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->arg1:I

    if-nez v1, :cond_d

    const/4 v15, 0x1

    :goto_1
    iput-boolean v15, v10, Lcom/android/server/connectivity/NetworkAgentInfo;->lastValidated:Z

    if-eqz v15, :cond_e

    const/4 v14, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Validated "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10}, Lcom/android/server/connectivity/NetworkAgentInfo;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$3100(Ljava/lang/String;)V

    iget-boolean v1, v10, Lcom/android/server/connectivity/NetworkAgentInfo;->everValidated:Z

    if-nez v1, :cond_c

    const/4 v1, 0x1

    iput-boolean v1, v10, Lcom/android/server/connectivity/NetworkAgentInfo;->everValidated:Z

    invoke-static {}, Landroid/net/wifi/WifiManager;->showWebBrowserAtCaptivePortal()Z

    move-result v1

    if-nez v1, :cond_b

    iget-object v1, v10, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_b

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg2:I

    const/4 v1, 0x0

    # setter for: Lcom/android/server/ConnectivityService;->mInCaptivePortal:Z
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$3202(Z)Z

    :cond_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    sget-object v2, Lcom/android/server/ConnectivityService$NascentState;->JUST_VALIDATED:Lcom/android/server/ConnectivityService$NascentState;

    sget-object v3, Lcom/android/server/ConnectivityService$ReapUnvalidatedNetworks;->REAP:Lcom/android/server/ConnectivityService$ReapUnvalidatedNetworks;

    # invokes: Lcom/android/server/ConnectivityService;->rematchNetworkAndRequests(Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/ConnectivityService$NascentState;Lcom/android/server/ConnectivityService$ReapUnvalidatedNetworks;)V
    invoke-static {v1, v10, v2, v3}, Lcom/android/server/ConnectivityService;->access$3300(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/ConnectivityService$NascentState;Lcom/android/server/ConnectivityService$ReapUnvalidatedNetworks;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    # invokes: Lcom/android/server/ConnectivityService;->sendUpdatedScoreToFactories(Lcom/android/server/connectivity/NetworkAgentInfo;)V
    invoke-static {v1, v10}, Lcom/android/server/ConnectivityService;->access$3400(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)V

    :cond_c
    :goto_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    # invokes: Lcom/android/server/ConnectivityService;->updateInetCondition(Lcom/android/server/connectivity/NetworkAgentInfo;)V
    invoke-static {v1, v10}, Lcom/android/server/ConnectivityService;->access$3500(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)V

    iget-object v1, v10, Lcom/android/server/connectivity/NetworkAgentInfo;->asyncChannel:Lcom/android/internal/util/AsyncChannel;

    const v2, 0x81007

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v14, v3, v4}, Lcom/android/internal/util/AsyncChannel;->sendMessage(IIILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_d
    const/4 v15, 0x0

    goto :goto_1

    :cond_e
    const/4 v14, 0x2

    invoke-static {}, Landroid/net/wifi/WifiManager;->showWebBrowserAtCaptivePortal()Z

    move-result v1

    if-nez v1, :cond_c

    iget-object v1, v10, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_c

    move-object/from16 v0, p1

    iget v14, v0, Landroid/os/Message;->arg2:I

    const/4 v1, 0x3

    if-le v14, v1, :cond_f

    const/4 v1, 0x1

    # setter for: Lcom/android/server/ConnectivityService;->mInCaptivePortal:Z
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$3202(Z)Z

    goto :goto_2

    :cond_f
    const/4 v1, 0x0

    # setter for: Lcom/android/server/ConnectivityService;->mInCaptivePortal:Z
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$3202(Z)Z

    goto :goto_2

    :sswitch_d
    move-object/from16 v0, p1

    iget-object v10, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v10, Lcom/android/server/connectivity/NetworkAgentInfo;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    const-string v2, "EVENT_NETWORK_LINGER_COMPLETE"

    # invokes: Lcom/android/server/ConnectivityService;->isLiveNetworkAgent(Lcom/android/server/connectivity/NetworkAgentInfo;Ljava/lang/String;)Z
    invoke-static {v1, v10, v2}, Lcom/android/server/ConnectivityService;->access$3000(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    # invokes: Lcom/android/server/ConnectivityService;->handleLingerComplete(Lcom/android/server/connectivity/NetworkAgentInfo;)V
    invoke-static {v1, v10}, Lcom/android/server/ConnectivityService;->access$3600(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)V

    goto/16 :goto_0

    :sswitch_e
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->arg1:I

    if-nez v1, :cond_10

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    const/4 v2, 0x0

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg2:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    # invokes: Lcom/android/server/ConnectivityService;->setProvNotificationVisibleIntent(ZIILjava/lang/String;Landroid/app/PendingIntent;)V
    invoke-static/range {v1 .. v6}, Lcom/android/server/ConnectivityService;->access$900(Lcom/android/server/ConnectivityService;ZIILjava/lang/String;Landroid/app/PendingIntent;)V

    goto/16 :goto_0

    :cond_10
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mNetworkForNetId:Landroid/util/SparseArray;
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$3700(Lcom/android/server/ConnectivityService;)Landroid/util/SparseArray;

    move-result-object v2

    monitor-enter v2

    :try_start_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    # getter for: Lcom/android/server/ConnectivityService;->mNetworkForNetId:Landroid/util/SparseArray;
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$3700(Lcom/android/server/ConnectivityService;)Landroid/util/SparseArray;

    move-result-object v1

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/android/server/connectivity/NetworkAgentInfo;

    move-object v10, v0

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-nez v10, :cond_11

    const-string v1, "EVENT_PROVISIONING_NOTIFICATION from unknown NetworkMonitor"

    # invokes: Lcom/android/server/ConnectivityService;->loge(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$200(Ljava/lang/String;)V

    goto/16 :goto_0

    :catchall_1
    move-exception v1

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v1

    :cond_11
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    const/4 v2, 0x1

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg2:I

    iget-object v4, v10, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    iget-object v5, v10, Lcom/android/server/connectivity/NetworkAgentInfo;->networkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v5}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v6, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/app/PendingIntent;

    # invokes: Lcom/android/server/ConnectivityService;->setProvNotificationVisibleIntent(ZIILjava/lang/String;Landroid/app/PendingIntent;)V
    invoke-static/range {v1 .. v6}, Lcom/android/server/ConnectivityService;->access$900(Lcom/android/server/ConnectivityService;ZIILjava/lang/String;Landroid/app/PendingIntent;)V

    goto/16 :goto_0

    :sswitch_f
    move-object/from16 v0, p1

    iget-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Landroid/net/NetworkInfo;

    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v13

    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v13, v1, :cond_12

    sget-object v1, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v13, v1, :cond_12

    sget-object v1, Landroid/net/NetworkInfo$State;->SUSPENDED:Landroid/net/NetworkInfo$State;

    if-ne v13, v1, :cond_13

    :cond_12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ConnectivityChange for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$3100(Ljava/lang/String;)V

    :cond_13
    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v2

    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/android/server/EventLogTags;->writeConnectivityStateChanged(III)V

    invoke-virtual {v8}, Landroid/net/NetworkInfo;->isConnectedToProvisioningNetwork()Z

    move-result v1

    if-eqz v1, :cond_15

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    invoke-virtual {v8}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/ConnectivityService;->getLinkPropertiesForType(I)Landroid/net/LinkProperties;

    move-result-object v9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EVENT_STATE_CHANGED: connected to provisioning network, lp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/ConnectivityService;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$3100(Ljava/lang/String;)V

    :cond_14
    :goto_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->this$0:Lcom/android/server/ConnectivityService;

    const/4 v2, 0x0

    # invokes: Lcom/android/server/ConnectivityService;->notifyLockdownVpn(Lcom/android/server/connectivity/NetworkAgentInfo;)V
    invoke-static {v1, v2}, Lcom/android/server/ConnectivityService;->access$3800(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)V

    goto/16 :goto_0

    :cond_15
    sget-object v1, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v13, v1, :cond_14

    sget-object v1, Landroid/net/NetworkInfo$State;->SUSPENDED:Landroid/net/NetworkInfo$State;

    if-eq v13, v1, :cond_14

    sget-object v1, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v13, v1, :cond_14

    goto :goto_3

    :sswitch_10
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/NetworkInfo;

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x11000 -> :sswitch_0
        0x11003 -> :sswitch_1
        0x11004 -> :sswitch_2
        0x70000 -> :sswitch_f
        0x70001 -> :sswitch_10
        0x81001 -> :sswitch_6
        0x81002 -> :sswitch_3
        0x81003 -> :sswitch_5
        0x81004 -> :sswitch_8
        0x81005 -> :sswitch_9
        0x81006 -> :sswitch_a
        0x81008 -> :sswitch_b
        0x8100f -> :sswitch_7
        0x82002 -> :sswitch_c
        0x82005 -> :sswitch_d
        0x8200a -> :sswitch_e
        0x83ffe -> :sswitch_4
    .end sparse-switch
.end method

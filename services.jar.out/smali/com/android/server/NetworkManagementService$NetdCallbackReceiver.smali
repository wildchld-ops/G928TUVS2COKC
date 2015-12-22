.class Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;
.super Ljava/lang/Object;
.source "NetworkManagementService.java"

# interfaces
.implements Lcom/android/server/INativeDaemonConnectorCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NetworkManagementService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetdCallbackReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NetworkManagementService;


# direct methods
.method private constructor <init>(Lcom/android/server/NetworkManagementService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/NetworkManagementService;Lcom/android/server/NetworkManagementService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;-><init>(Lcom/android/server/NetworkManagementService;)V

    return-void
.end method


# virtual methods
.method public onCheckHoldWakeLock(I)Z
    .locals 1

    const/16 v0, 0x265

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDaemonConnected()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    # getter for: Lcom/android/server/NetworkManagementService;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v0}, Lcom/android/server/NetworkManagementService;->access$200(Lcom/android/server/NetworkManagementService;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    # getter for: Lcom/android/server/NetworkManagementService;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v0}, Lcom/android/server/NetworkManagementService;->access$200(Lcom/android/server/NetworkManagementService;)Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    iget-object v0, p0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/NetworkManagementService;->mConnectedSignal:Ljava/util/concurrent/CountDownLatch;
    invoke-static {v0, v1}, Lcom/android/server/NetworkManagementService;->access$202(Lcom/android/server/NetworkManagementService;Ljava/util/concurrent/CountDownLatch;)Ljava/util/concurrent/CountDownLatch;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    # getter for: Lcom/android/server/NetworkManagementService;->mFgHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/NetworkManagementService;->access$400(Lcom/android/server/NetworkManagementService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver$1;

    invoke-direct {v1, p0}, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver$1;-><init>(Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onEvent(ILjava/lang/String;[Ljava/lang/String;)Z
    .locals 33

    const-string v4, "Invalid event from daemon (%s)"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    sparse-switch p1, :sswitch_data_0

    const/4 v4, 0x0

    :goto_0
    return v4

    :sswitch_0
    move-object/from16 v0, p3

    array-length v4, v0

    const/4 v5, 0x4

    if-lt v4, v5, :cond_0

    const/4 v4, 0x1

    aget-object v4, p3, v4

    const-string v5, "Iface"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    new-instance v4, Ljava/lang/IllegalStateException;

    move-object/from16 v0, v19

    invoke-direct {v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    const/4 v4, 0x2

    aget-object v4, p3, v4

    const-string v5, "added"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    const/4 v5, 0x3

    aget-object v5, p3, v5

    # invokes: Lcom/android/server/NetworkManagementService;->notifyInterfaceAdded(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/server/NetworkManagementService;->access$500(Lcom/android/server/NetworkManagementService;Ljava/lang/String;)V

    const/4 v4, 0x5

    const/4 v5, 0x4

    const/4 v6, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "Added Wi-Fi hotspot "

    invoke-static/range {v4 .. v9}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x2

    aget-object v4, p3, v4

    const-string/jumbo v5, "removed"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    const/4 v5, 0x3

    aget-object v5, p3, v5

    # invokes: Lcom/android/server/NetworkManagementService;->notifyInterfaceRemoved(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/server/NetworkManagementService;->access$600(Lcom/android/server/NetworkManagementService;Ljava/lang/String;)V

    const/4 v4, 0x5

    const/4 v5, 0x4

    const/4 v6, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "Removed Wi-Fi hotspot"

    invoke-static/range {v4 .. v9}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x1

    goto :goto_0

    :cond_3
    const/4 v4, 0x2

    aget-object v4, p3, v4

    const-string v5, "changed"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    move-object/from16 v0, p3

    array-length v4, v0

    const/4 v5, 0x5

    if-ne v4, v5, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    const/4 v5, 0x3

    aget-object v5, p3, v5

    const/4 v6, 0x4

    aget-object v6, p3, v6

    const-string/jumbo v7, "up"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    # invokes: Lcom/android/server/NetworkManagementService;->notifyInterfaceStatusChanged(Ljava/lang/String;Z)V
    invoke-static {v4, v5, v6}, Lcom/android/server/NetworkManagementService;->access$700(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Z)V

    const/4 v4, 0x5

    const/4 v5, 0x4

    const/4 v6, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "Changed Wi-Fi hotspot"

    invoke-static/range {v4 .. v9}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_4
    const/4 v4, 0x2

    aget-object v4, p3, v4

    const-string/jumbo v5, "linkstate"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    move-object/from16 v0, p3

    array-length v4, v0

    const/4 v5, 0x5

    if-ne v4, v5, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    const/4 v5, 0x3

    aget-object v5, p3, v5

    const/4 v6, 0x4

    aget-object v6, p3, v6

    const-string/jumbo v7, "up"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    # invokes: Lcom/android/server/NetworkManagementService;->notifyInterfaceLinkStateChanged(Ljava/lang/String;Z)V
    invoke-static {v4, v5, v6}, Lcom/android/server/NetworkManagementService;->access$800(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Z)V

    const/4 v4, 0x5

    const/4 v5, 0x4

    const/4 v6, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "Linkstate Wi-Fi hotspot"

    invoke-static/range {v4 .. v9}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_5
    new-instance v4, Ljava/lang/IllegalStateException;

    move-object/from16 v0, v19

    invoke-direct {v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    :sswitch_1
    move-object/from16 v0, p3

    array-length v4, v0

    const/4 v5, 0x5

    if-lt v4, v5, :cond_6

    const/4 v4, 0x1

    aget-object v4, p3, v4

    const-string/jumbo v5, "limit"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    :cond_6
    new-instance v4, Ljava/lang/IllegalStateException;

    move-object/from16 v0, v19

    invoke-direct {v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_7
    const/4 v4, 0x2

    aget-object v4, p3, v4

    const-string v5, "alert"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    const/4 v5, 0x3

    aget-object v5, p3, v5

    const/4 v6, 0x4

    aget-object v6, p3, v6

    # invokes: Lcom/android/server/NetworkManagementService;->notifyLimitReached(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v4, v5, v6}, Lcom/android/server/NetworkManagementService;->access$900(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_8
    new-instance v4, Ljava/lang/IllegalStateException;

    move-object/from16 v0, v19

    invoke-direct {v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    :sswitch_2
    move-object/from16 v0, p3

    array-length v4, v0

    const/4 v5, 0x4

    if-lt v4, v5, :cond_9

    const/4 v4, 0x1

    aget-object v4, p3, v4

    const-string v5, "IfaceClass"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_a

    :cond_9
    new-instance v4, Ljava/lang/IllegalStateException;

    move-object/from16 v0, v19

    invoke-direct {v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_a
    const-wide/16 v8, 0x0

    move-object/from16 v0, p3

    array-length v4, v0

    const/4 v5, 0x5

    if-ne v4, v5, :cond_b

    const/4 v4, 0x4

    :try_start_0
    aget-object v4, p3, v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_4

    move-result-wide v8

    :goto_1
    const/4 v4, 0x2

    aget-object v4, p3, v4

    const-string v5, "active"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v25

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    const/4 v4, 0x3

    aget-object v4, p3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-eqz v25, :cond_c

    sget v7, Landroid/telephony/DataConnectionRealTimeInfo;->DC_POWER_STATE_HIGH:I

    :goto_2
    const/4 v10, 0x0

    # invokes: Lcom/android/server/NetworkManagementService;->notifyInterfaceClassActivity(IIJZ)V
    invoke-static/range {v5 .. v10}, Lcom/android/server/NetworkManagementService;->access$100(Lcom/android/server/NetworkManagementService;IIJZ)V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_b
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v8

    goto :goto_1

    :cond_c
    sget v7, Landroid/telephony/DataConnectionRealTimeInfo;->DC_POWER_STATE_LOW:I

    goto :goto_2

    :sswitch_3
    move-object/from16 v0, p3

    array-length v4, v0

    const/4 v5, 0x7

    if-lt v4, v5, :cond_d

    const/4 v4, 0x1

    aget-object v4, p3, v4

    const-string v5, "Address"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    :cond_d
    new-instance v4, Ljava/lang/IllegalStateException;

    move-object/from16 v0, v19

    invoke-direct {v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_e
    const/4 v4, 0x4

    aget-object v23, p3, v4

    const/4 v4, 0x5

    :try_start_1
    aget-object v4, p3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    const/4 v4, 0x6

    aget-object v4, p3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v29

    new-instance v16, Landroid/net/LinkAddress;

    const/4 v4, 0x3

    aget-object v4, p3, v4

    move-object/from16 v0, v16

    move/from16 v1, v20

    move/from16 v2, v29

    invoke-direct {v0, v4, v1, v2}, Landroid/net/LinkAddress;-><init>(Ljava/lang/String;II)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v4, 0x2

    aget-object v4, p3, v4

    const-string/jumbo v5, "updated"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    # invokes: Lcom/android/server/NetworkManagementService;->notifyAddressUpdated(Ljava/lang/String;Landroid/net/LinkAddress;)V
    invoke-static {v4, v0, v1}, Lcom/android/server/NetworkManagementService;->access$1000(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Landroid/net/LinkAddress;)V

    :goto_3
    const/4 v4, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v18

    new-instance v4, Ljava/lang/IllegalStateException;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-direct {v4, v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :catch_1
    move-exception v18

    new-instance v4, Ljava/lang/IllegalStateException;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-direct {v4, v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :cond_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    move-object/from16 v0, v23

    move-object/from16 v1, v16

    # invokes: Lcom/android/server/NetworkManagementService;->notifyAddressRemoved(Ljava/lang/String;Landroid/net/LinkAddress;)V
    invoke-static {v4, v0, v1}, Lcom/android/server/NetworkManagementService;->access$1100(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Landroid/net/LinkAddress;)V

    goto :goto_3

    :sswitch_4
    move-object/from16 v0, p3

    array-length v4, v0

    const/4 v5, 0x6

    if-ne v4, v5, :cond_10

    const/4 v4, 0x1

    aget-object v4, p3, v4

    const-string v5, "DnsInfo"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    const/4 v4, 0x2

    aget-object v4, p3, v4

    const-string/jumbo v5, "servers"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    const/4 v4, 0x4

    :try_start_2
    aget-object v4, p3, v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-wide v26

    const/4 v4, 0x5

    aget-object v4, p3, v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    const/4 v5, 0x3

    aget-object v5, p3, v5

    move-wide/from16 v0, v26

    move-object/from16 v2, v30

    # invokes: Lcom/android/server/NetworkManagementService;->notifyInterfaceDnsServerInfo(Ljava/lang/String;J[Ljava/lang/String;)V
    invoke-static {v4, v5, v0, v1, v2}, Lcom/android/server/NetworkManagementService;->access$1200(Lcom/android/server/NetworkManagementService;Ljava/lang/String;J[Ljava/lang/String;)V

    :cond_10
    const/4 v4, 0x1

    goto/16 :goto_0

    :catch_2
    move-exception v18

    new-instance v4, Ljava/lang/IllegalStateException;

    move-object/from16 v0, v19

    invoke-direct {v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    :sswitch_5
    const/4 v4, 0x1

    aget-object v4, p3, v4

    const-string v5, "Route"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    move-object/from16 v0, p3

    array-length v4, v0

    const/4 v5, 0x6

    if-ge v4, v5, :cond_12

    :cond_11
    new-instance v4, Ljava/lang/IllegalStateException;

    move-object/from16 v0, v19

    invoke-direct {v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_12
    const/16 v32, 0x0

    const/16 v17, 0x0

    const/16 v31, 0x1

    const/16 v22, 0x4

    :goto_4
    add-int/lit8 v4, v22, 0x1

    move-object/from16 v0, p3

    array-length v5, v0

    if-ge v4, v5, :cond_17

    if-eqz v31, :cond_17

    aget-object v4, p3, v22

    const-string v5, "dev"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    if-nez v17, :cond_13

    add-int/lit8 v4, v22, 0x1

    aget-object v17, p3, v4

    :goto_5
    add-int/lit8 v22, v22, 0x2

    goto :goto_4

    :cond_13
    const/16 v31, 0x0

    goto :goto_5

    :cond_14
    aget-object v4, p3, v22

    const-string/jumbo v5, "via"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    if-nez v32, :cond_15

    add-int/lit8 v4, v22, 0x1

    aget-object v32, p3, v4

    goto :goto_5

    :cond_15
    const/16 v31, 0x0

    goto :goto_5

    :cond_16
    const/16 v31, 0x0

    goto :goto_5

    :cond_17
    if-eqz v31, :cond_19

    const/16 v21, 0x0

    if-eqz v32, :cond_18

    :try_start_3
    invoke-static/range {v32 .. v32}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v21

    :cond_18
    new-instance v28, Landroid/net/RouteInfo;

    new-instance v4, Landroid/net/IpPrefix;

    const/4 v5, 0x3

    aget-object v5, p3, v5

    invoke-direct {v4, v5}, Landroid/net/IpPrefix;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v28

    move-object/from16 v1, v21

    move-object/from16 v2, v17

    invoke-direct {v0, v4, v1, v2}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;Ljava/net/InetAddress;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    const/4 v5, 0x2

    aget-object v5, p3, v5

    move-object/from16 v0, v28

    # invokes: Lcom/android/server/NetworkManagementService;->notifyRouteChange(Ljava/lang/String;Landroid/net/RouteInfo;)V
    invoke-static {v4, v5, v0}, Lcom/android/server/NetworkManagementService;->access$1300(Lcom/android/server/NetworkManagementService;Ljava/lang/String;Landroid/net/RouteInfo;)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3

    const/4 v4, 0x1

    goto/16 :goto_0

    :catch_3
    move-exception v4

    :cond_19
    new-instance v4, Ljava/lang/IllegalStateException;

    move-object/from16 v0, v19

    invoke-direct {v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    :sswitch_6
    const/4 v4, 0x2

    aget-object v4, p3, v4

    const-string/jumbo v5, "sta_join"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1a

    const/4 v4, 0x2

    aget-object v4, p3, v4

    const-string/jumbo v5, "sta_leave"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1f

    :cond_1a
    const/4 v4, 0x2

    aget-object v4, p3, v4

    const-string/jumbo v5, "sta_join"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1e

    const/4 v10, 0x5

    const/4 v11, 0x4

    const/4 v12, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v14

    const-string v15, "Client device connected to Wi-Fi hotspot"

    invoke-static/range {v10 .. v15}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    :cond_1b
    :goto_6
    new-instance v24, Landroid/content/Intent;

    const-string v4, "com.samsung.android.net.wifi.WIFI_AP_STA_STATUS_CHANGED"

    move-object/from16 v0, v24

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "EVENT"

    const/4 v5, 0x2

    aget-object v5, p3, v5

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "NetworkManagementService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WifiAp Sta Event, EVENT = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x2

    aget-object v6, p3, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p3

    array-length v4, v0

    const/4 v5, 0x3

    if-le v4, v5, :cond_1c

    const-string v4, "NUM"

    const/4 v5, 0x3

    aget-object v5, p3, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "NetworkManagementService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NUM = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x3

    aget-object v6, p3, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c
    const/4 v4, 0x2

    aget-object v4, p3, v4

    const-string/jumbo v5, "sta_leave"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    move-object/from16 v0, p3

    array-length v4, v0

    const/4 v5, 0x4

    if-le v4, v5, :cond_1d

    const-string v4, "MAC"

    const/4 v5, 0x4

    aget-object v5, p3, v5

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    # getter for: Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/NetworkManagementService;->access$1400(Lcom/android/server/NetworkManagementService;)Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_1e
    const/4 v4, 0x2

    aget-object v4, p3, v4

    const-string/jumbo v5, "sta_leave"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    const/4 v10, 0x5

    const/4 v11, 0x4

    const/4 v12, 0x1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v14

    const-string v15, "Client device disconnected from Wi-Fi hotspot"

    invoke-static/range {v10 .. v15}, Landroid/sec/enterprise/auditlog/AuditLog;->log(IIZILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_1f
    const/4 v4, 0x2

    aget-object v4, p3, v4

    const-string/jumbo v5, "sta_assoc"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_21

    new-instance v24, Landroid/content/Intent;

    const-string v4, "android.net.wifi.WIFI_AP_STA_ASSOCIATED_ACTION"

    move-object/from16 v0, v24

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "EVENT"

    const/4 v5, 0x2

    aget-object v5, p3, v5

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "NetworkManagementService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WifiAp Sta Event, EVENT = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x2

    aget-object v6, p3, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p3

    array-length v4, v0

    const/4 v5, 0x3

    if-le v4, v5, :cond_20

    const-string v4, "MAC"

    const/4 v5, 0x3

    aget-object v5, p3, v5

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_20
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    # getter for: Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/NetworkManagementService;->access$1400(Lcom/android/server/NetworkManagementService;)Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_21
    const/4 v4, 0x2

    aget-object v4, p3, v4

    const-string/jumbo v5, "wps_success"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_22

    const/4 v4, 0x2

    aget-object v4, p3, v4

    const-string/jumbo v5, "wps_fail"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_22

    const/4 v4, 0x2

    aget-object v4, p3, v4

    const-string/jumbo v5, "wps_timeout"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_22

    const/4 v4, 0x2

    aget-object v4, p3, v4

    const-string/jumbo v5, "wps_overlap"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_22

    const/4 v4, 0x2

    aget-object v4, p3, v4

    const-string/jumbo v5, "wps_pin_needed"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_23

    :cond_22
    const-string v4, "NetworkManagementService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Wps State Action : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x2

    aget-object v6, p3, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v24, Landroid/content/Intent;

    const-string v4, "android.net.wifi.WIFI_AP_WPS_STATE_ACTION"

    move-object/from16 v0, v24

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "EVENT"

    const/4 v5, 0x2

    aget-object v5, p3, v5

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    # getter for: Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/NetworkManagementService;->access$1400(Lcom/android/server/NetworkManagementService;)Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_23
    const/4 v4, 0x2

    aget-object v4, p3, v4

    const-string v5, "driver_state"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24

    const/4 v4, 0x3

    aget-object v4, p3, v4

    const-string v5, "HANGED"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24

    new-instance v24, Landroid/content/Intent;

    const-string v4, "com.samsung.android.net.wifi.WIFI_AP_DRIVER_STATE_HANGED"

    move-object/from16 v0, v24

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/NetworkManagementService$NetdCallbackReceiver;->this$0:Lcom/android/server/NetworkManagementService;

    # getter for: Lcom/android/server/NetworkManagementService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/NetworkManagementService;->access$1400(Lcom/android/server/NetworkManagementService;)Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_24
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Invalid event from daemon (%s)"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p2, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    :catch_4
    move-exception v4

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x258 -> :sswitch_0
        0x259 -> :sswitch_1
        0x265 -> :sswitch_2
        0x266 -> :sswitch_3
        0x267 -> :sswitch_4
        0x268 -> :sswitch_5
        0x28b -> :sswitch_6
    .end sparse-switch
.end method

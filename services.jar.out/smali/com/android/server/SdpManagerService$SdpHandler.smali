.class Lcom/android/server/SdpManagerService$SdpHandler;
.super Landroid/os/Handler;
.source "SdpManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SdpManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SdpHandler"
.end annotation


# static fields
.field private static final HANDLER_TAG:Ljava/lang/String; = "SdpManagerServiceHandler"


# instance fields
.field final synthetic this$0:Lcom/android/server/SdpManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/SdpManagerService;Landroid/os/Looper;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const-string v0, "SdpHandler"

    # invokes: Lcom/android/server/SdpManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I
    invoke-static {v0}, Lcom/android/server/SdpManagerService;->access$2800(Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 17

    const-string v3, "SdpHandler"

    # invokes: Lcom/android/server/SdpManagerService;->checkCallerPermissionFor(Ljava/lang/String;)I
    invoke-static {v3}, Lcom/android/server/SdpManagerService;->access$2800(Ljava/lang/String;)I

    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    const-string v3, "SdpManagerServiceHandler"

    const-string/jumbo v4, "received MSG_SYSTEM_READY. "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    new-instance v4, Lcom/android/server/SdpServiceKeeper;

    # getter for: Lcom/android/server/SdpManagerService;->sContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/SdpManagerService;->access$3000()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/server/SdpServiceKeeper;-><init>(Landroid/content/Context;)V

    # setter for: Lcom/android/server/SdpManagerService;->mServiceKeeper:Lcom/android/server/SdpServiceKeeper;
    invoke-static {v3, v4}, Lcom/android/server/SdpManagerService;->access$2902(Lcom/android/server/SdpManagerService;Lcom/android/server/SdpServiceKeeper;)Lcom/android/server/SdpServiceKeeper;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    # getter for: Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/server/SdpManagerService;->access$3100(Lcom/android/server/SdpManagerService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    # getter for: Lcom/android/server/SdpManagerService;->mSdpEngineDb:Lcom/android/server/SdpManagerService$SdpEngineDatabase;
    invoke-static {v3}, Lcom/android/server/SdpManagerService;->access$3200(Lcom/android/server/SdpManagerService;)Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    move-result-object v3

    # invokes: Lcom/android/server/SdpManagerService$SdpEngineDatabase;->getEngineListLocked()Landroid/util/SparseArray;
    invoke-static {v3}, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->access$2200(Lcom/android/server/SdpManagerService$SdpEngineDatabase;)Landroid/util/SparseArray;

    move-result-object v9

    if-eqz v9, :cond_2

    const/4 v11, 0x0

    :goto_1
    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v11, v3, :cond_2

    invoke-virtual {v9, v11}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v12

    invoke-virtual {v9, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "SdpManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SDP_USER_0 getEngineListLocked :: engine found : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "[id:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    # getter for: Lcom/android/server/SdpManagerService;->mSdpEngineDb:Lcom/android/server/SdpManagerService$SdpEngineDatabase;
    invoke-static {v3}, Lcom/android/server/SdpManagerService;->access$3200(Lcom/android/server/SdpManagerService;)Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    move-result-object v3

    # invokes: Lcom/android/server/SdpManagerService$SdpEngineDatabase;->getEngineInfoLocked(I)Lcom/sec/sdp/engine/SdpEngineInfo;
    invoke-static {v3, v12}, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->access$1700(Lcom/android/server/SdpManagerService$SdpEngineDatabase;I)Lcom/sec/sdp/engine/SdpEngineInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v3, "SdpManagerService"

    invoke-virtual {v1}, Lcom/sec/sdp/engine/SdpEngineInfo;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    # getter for: Lcom/android/server/SdpManagerService;->mSdpEngineMap:Landroid/util/SparseArray;
    invoke-static {v3}, Lcom/android/server/SdpManagerService;->access$1300(Lcom/android/server/SdpManagerService;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v12, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    # getter for: Lcom/android/server/SdpManagerService;->mServiceKeeper:Lcom/android/server/SdpServiceKeeper;
    invoke-static {v3}, Lcom/android/server/SdpManagerService;->access$2900(Lcom/android/server/SdpManagerService;)Lcom/android/server/SdpServiceKeeper;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/android/server/SdpServiceKeeper;->loadPolicy(Lcom/sec/sdp/engine/SdpEngineInfo;)Lcom/android/server/sdp/engine/SdpPolicy;

    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_1
    const-string v5, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Can\'t find engine info ["

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v9, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "]"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_2
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    invoke-static {}, Lcom/android/server/pm/TimaHelper;->getInstance()Lcom/android/server/pm/TimaHelper;

    move-result-object v4

    # setter for: Lcom/android/server/SdpManagerService;->mTimaHelper:Lcom/android/server/pm/TimaHelper;
    invoke-static {v3, v4}, Lcom/android/server/SdpManagerService;->access$3302(Lcom/android/server/SdpManagerService;Lcom/android/server/pm/TimaHelper;)Lcom/android/server/pm/TimaHelper;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    # getter for: Lcom/android/server/SdpManagerService;->sContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/SdpManagerService;->access$3000()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/knox/container/util/EnterprisePartitionManager;->getInstance(Landroid/content/Context;)Lcom/sec/knox/container/util/EnterprisePartitionManager;

    move-result-object v4

    # setter for: Lcom/android/server/SdpManagerService;->mEPM:Lcom/sec/knox/container/util/EnterprisePartitionManager;
    invoke-static {v3, v4}, Lcom/android/server/SdpManagerService;->access$3402(Lcom/android/server/SdpManagerService;Lcom/sec/knox/container/util/EnterprisePartitionManager;)Lcom/sec/knox/container/util/EnterprisePartitionManager;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    move-object/from16 v16, v0

    new-instance v1, Lcom/android/server/SdpManagerService$SecureFileSystemManager;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    # getter for: Lcom/android/server/SdpManagerService;->sContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/SdpManagerService;->access$3000()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    # getter for: Lcom/android/server/SdpManagerService;->mTimaHelper:Lcom/android/server/pm/TimaHelper;
    invoke-static {v4}, Lcom/android/server/SdpManagerService;->access$3300(Lcom/android/server/SdpManagerService;)Lcom/android/server/pm/TimaHelper;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    # getter for: Lcom/android/server/SdpManagerService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;
    invoke-static {v5}, Lcom/android/server/SdpManagerService;->access$3600(Lcom/android/server/SdpManagerService;)Lcom/sec/knox/container/util/KeyManagementUtil;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    # getter for: Lcom/android/server/SdpManagerService;->mEPM:Lcom/sec/knox/container/util/EnterprisePartitionManager;
    invoke-static {v6}, Lcom/android/server/SdpManagerService;->access$3400(Lcom/android/server/SdpManagerService;)Lcom/sec/knox/container/util/EnterprisePartitionManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/SdpManagerService$SecureFileSystemManager;-><init>(Lcom/android/server/SdpManagerService;Landroid/content/Context;Lcom/android/server/pm/TimaHelper;Lcom/sec/knox/container/util/KeyManagementUtil;Lcom/sec/knox/container/util/EnterprisePartitionManager;Lcom/android/server/SdpManagerService$1;)V

    move-object/from16 v0, v16

    # setter for: Lcom/android/server/SdpManagerService;->mSecureFileSystemManager:Lcom/android/server/SdpManagerService$SecureFileSystemManager;
    invoke-static {v0, v1}, Lcom/android/server/SdpManagerService;->access$3502(Lcom/android/server/SdpManagerService;Lcom/android/server/SdpManagerService$SecureFileSystemManager;)Lcom/android/server/SdpManagerService$SecureFileSystemManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    # getter for: Lcom/android/server/SdpManagerService;->mSecureFileSystemManager:Lcom/android/server/SdpManagerService$SecureFileSystemManager;
    invoke-static {v3}, Lcom/android/server/SdpManagerService;->access$3500(Lcom/android/server/SdpManagerService;)Lcom/android/server/SdpManagerService$SecureFileSystemManager;

    move-result-object v3

    # invokes: Lcom/android/server/SdpManagerService$SecureFileSystemManager;->mount()Z
    invoke-static {v3}, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->access$3800(Lcom/android/server/SdpManagerService$SecureFileSystemManager;)Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    # getter for: Lcom/android/server/SdpManagerService;->mSecureFileSystemManager:Lcom/android/server/SdpManagerService$SecureFileSystemManager;
    invoke-static {v3}, Lcom/android/server/SdpManagerService;->access$3500(Lcom/android/server/SdpManagerService;)Lcom/android/server/SdpManagerService$SecureFileSystemManager;

    move-result-object v3

    # invokes: Lcom/android/server/SdpManagerService$SecureFileSystemManager;->isActivated()Z
    invoke-static {v3}, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->access$3900(Lcom/android/server/SdpManagerService$SecureFileSystemManager;)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    # getter for: Lcom/android/server/SdpManagerService;->mSecureFileSystemManager:Lcom/android/server/SdpManagerService$SecureFileSystemManager;
    invoke-static {v3}, Lcom/android/server/SdpManagerService;->access$3500(Lcom/android/server/SdpManagerService;)Lcom/android/server/SdpManagerService$SecureFileSystemManager;

    move-result-object v3

    # invokes: Lcom/android/server/SdpManagerService$SecureFileSystemManager;->systemReady()Z
    invoke-static {v3}, Lcom/android/server/SdpManagerService$SecureFileSystemManager;->access$4000(Lcom/android/server/SdpManagerService$SecureFileSystemManager;)Z

    :cond_3
    new-instance v10, Landroid/content/IntentFilter;

    invoke-direct {v10}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "android.intent.action.USER_ADDED"

    invoke-virtual {v10, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.USER_REMOVED"

    invoke-virtual {v10, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    # getter for: Lcom/android/server/SdpManagerService;->sContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/SdpManagerService;->access$3000()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Lcom/android/server/SdpManagerService$ActionReceiver;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/android/server/SdpManagerService$ActionReceiver;-><init>(Lcom/android/server/SdpManagerService;Lcom/android/server/SdpManagerService$1;)V

    invoke-virtual {v3, v4, v10}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-string v3, "SdpManagerServiceHandler"

    const-string/jumbo v4, "registered boradcast receiver for SDP.. "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v10, Landroid/content/IntentFilter;

    invoke-direct {v10}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v10, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v3, "package"

    invoke-virtual {v10, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    # getter for: Lcom/android/server/SdpManagerService;->sContext:Landroid/content/Context;
    invoke-static {}, Lcom/android/server/SdpManagerService;->access$3000()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Lcom/android/server/SdpManagerService$ActionReceiver;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/android/server/SdpManagerService$ActionReceiver;-><init>(Lcom/android/server/SdpManagerService;Lcom/android/server/SdpManagerService$1;)V

    const-string v5, "com.samsung.container.ACCESS_RECEIVER"

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v10, v5, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    # getter for: Lcom/android/server/SdpManagerService;->mSdpEngineMap:Landroid/util/SparseArray;
    invoke-static {v3}, Lcom/android/server/SdpManagerService;->access$1300(Lcom/android/server/SdpManagerService;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v13

    :goto_3
    if-ge v11, v13, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    # getter for: Lcom/android/server/SdpManagerService;->mSdpEngineMap:Landroid/util/SparseArray;
    invoke-static {v3}, Lcom/android/server/SdpManagerService;->access$1300(Lcom/android/server/SdpManagerService;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/sdp/engine/SdpEngineInfo;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    invoke-virtual {v1}, Lcom/sec/sdp/engine/SdpEngineInfo;->getId()I

    move-result v4

    # invokes: Lcom/android/server/SdpManagerService;->bootInternal(I)I
    invoke-static {v3, v4}, Lcom/android/server/SdpManagerService;->access$4200(Lcom/android/server/SdpManagerService;I)I

    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    # getter for: Lcom/android/server/SdpManagerService;->mSdpEngineMap:Landroid/util/SparseArray;
    invoke-static {v3}, Lcom/android/server/SdpManagerService;->access$1300(Lcom/android/server/SdpManagerService;)Landroid/util/SparseArray;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    const-string v3, "SdpManagerServiceHandler"

    const-string v4, "Creating default engine."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    invoke-static {v3}, Lcom/sec/sdp/SdpUtil;->getAndroidDefaultAlias(I)Ljava/lang/String;

    move-result-object v2

    new-instance v1, Lcom/sec/sdp/engine/SdpEngineInfo;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x3

    const/4 v7, 0x4

    const/4 v8, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/sec/sdp/engine/SdpEngineInfo;-><init>(Ljava/lang/String;IIIIIZ)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    # getter for: Lcom/android/server/SdpManagerService;->mKeyManagementUtil:Lcom/sec/knox/container/util/KeyManagementUtil;
    invoke-static {v3}, Lcom/android/server/SdpManagerService;->access$3600(Lcom/android/server/SdpManagerService;)Lcom/sec/knox/container/util/KeyManagementUtil;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sec/knox/container/util/KeyManagementUtil;->generatePasswordResetToken()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    const/4 v4, 0x0

    # invokes: Lcom/android/server/SdpManagerService;->createKeys(Lcom/sec/sdp/engine/SdpEngineInfo;Ljava/lang/String;Ljava/lang/String;)[B
    invoke-static {v3, v1, v4, v15}, Lcom/android/server/SdpManagerService;->access$4300(Lcom/android/server/SdpManagerService;Lcom/sec/sdp/engine/SdpEngineInfo;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v8

    if-nez v8, :cond_5

    const-string v3, "SdpManagerServiceHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "failed to create keys for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lcom/sec/sdp/engine/SdpEngineInfo;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    # getter for: Lcom/android/server/SdpManagerService;->mSdpEngineDbLock:Ljava/lang/Object;
    invoke-static {v3}, Lcom/android/server/SdpManagerService;->access$3100(Lcom/android/server/SdpManagerService;)Ljava/lang/Object;

    move-result-object v16

    monitor-enter v16

    :try_start_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    const/4 v7, 0x0

    move-object v4, v1

    # invokes: Lcom/android/server/SdpManagerService;->addEngineInternalLocked(Lcom/sec/sdp/engine/SdpEngineInfo;IILcom/sec/sdp/engine/SdpCreationParam;[B)I
    invoke-static/range {v3 .. v8}, Lcom/android/server/SdpManagerService;->access$4400(Lcom/android/server/SdpManagerService;Lcom/sec/sdp/engine/SdpEngineInfo;IILcom/sec/sdp/engine/SdpCreationParam;[B)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    # invokes: Lcom/android/server/SdpManagerService;->zeroOut([B)V
    invoke-static {v3, v8}, Lcom/android/server/SdpManagerService;->access$4500(Lcom/android/server/SdpManagerService;[B)V

    if-eqz v14, :cond_6

    const-string v3, "SdpManagerServiceHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to add default engine. ret:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/SdpManagerService$SdpHandler;->this$0:Lcom/android/server/SdpManagerService;

    invoke-virtual {v3, v1}, Lcom/android/server/SdpManagerService;->removeKeys(Lcom/sec/sdp/engine/SdpEngineInfo;)V

    :goto_4
    monitor-exit v16

    goto/16 :goto_0

    :catchall_1
    move-exception v3

    monitor-exit v16
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3

    :cond_6
    :try_start_3
    const-string v3, "SdpManagerServiceHandler"

    const-string v4, "Default engine has been created successfully."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

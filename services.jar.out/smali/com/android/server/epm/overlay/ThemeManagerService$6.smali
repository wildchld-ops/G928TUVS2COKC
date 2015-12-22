.class Lcom/android/server/epm/overlay/ThemeManagerService$6;
.super Landroid/os/Handler;
.source "ThemeManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/epm/overlay/ThemeManagerService;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/epm/overlay/ThemeManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/epm/overlay/ThemeManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/epm/overlay/ThemeManagerService$6;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 34

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v4, :cond_0

    # getter for: Lcom/android/server/epm/overlay/ThemeManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$700()Ljava/lang/String;

    move-result-object v4

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "MESSAGE_INSTALL"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService$6;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-boolean v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->inProgress:Z

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/epm/overlay/ThemeManagerService$6;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    iget-boolean v4, v4, Lcom/android/server/epm/overlay/ThemeManagerService;->inProgress:Z

    if-nez v4, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/epm/overlay/ThemeManagerService$6;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    const/16 v28, 0x1

    move/from16 v0, v28

    iput-boolean v0, v4, Lcom/android/server/epm/overlay/ThemeManagerService;->inProgress:Z

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/Bundle;

    const-string/jumbo v4, "path"

    invoke-virtual {v11, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v23

    check-cast v23, Landroid/net/Uri;

    const-string/jumbo v4, "isTrial"

    invoke-virtual {v11, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v17

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/epm/overlay/ThemeManagerService$6;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    move-object/from16 v0, v23

    move/from16 v1, v17

    invoke-virtual {v4, v0, v1}, Lcom/android/server/epm/overlay/ThemeManagerService;->installThemePackage(Landroid/net/Uri;Z)V

    goto :goto_0

    :cond_1
    new-instance v20, Landroid/os/Message;

    invoke-direct/range {v20 .. v20}, Landroid/os/Message;-><init>()V

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    move-object/from16 v0, v20

    iput v4, v0, Landroid/os/Message;->what:I

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v0, v20

    iput-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/epm/overlay/ThemeManagerService$6;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    # getter for: Lcom/android/server/epm/overlay/ThemeManagerService;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$600(Lcom/android/server/epm/overlay/ThemeManagerService;)Landroid/os/Handler;

    move-result-object v4

    const-wide/16 v28, 0x7d0

    move-object/from16 v0, v20

    move-wide/from16 v1, v28

    invoke-virtual {v4, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    :pswitch_2
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v4, :cond_0

    # getter for: Lcom/android/server/epm/overlay/ThemeManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$700()Ljava/lang/String;

    move-result-object v4

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "MESSAGE_PRELOADED_INSTALL"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService$6;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-boolean v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->inProgress:Z

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/epm/overlay/ThemeManagerService$6;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    iget-boolean v4, v4, Lcom/android/server/epm/overlay/ThemeManagerService;->inProgress:Z

    if-nez v4, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/epm/overlay/ThemeManagerService$6;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    const/16 v28, 0x1

    move/from16 v0, v28

    iput-boolean v0, v4, Lcom/android/server/epm/overlay/ThemeManagerService;->inProgress:Z

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/Bundle;

    const-string/jumbo v4, "packageName"

    invoke-virtual {v11, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/epm/overlay/ThemeManagerService$6;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    const/16 v28, 0x0

    move/from16 v0, v28

    # invokes: Lcom/android/server/epm/overlay/ThemeManagerService;->onMasterInstalled(Ljava/lang/String;Z)V
    invoke-static {v4, v6, v0}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$1700(Lcom/android/server/epm/overlay/ThemeManagerService;Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_2
    new-instance v20, Landroid/os/Message;

    invoke-direct/range {v20 .. v20}, Landroid/os/Message;-><init>()V

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    move-object/from16 v0, v20

    iput v4, v0, Landroid/os/Message;->what:I

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v0, v20

    iput-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/epm/overlay/ThemeManagerService$6;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    # getter for: Lcom/android/server/epm/overlay/ThemeManagerService;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$600(Lcom/android/server/epm/overlay/ThemeManagerService;)Landroid/os/Handler;

    move-result-object v4

    const-wide/16 v28, 0x7d0

    move-object/from16 v0, v20

    move-wide/from16 v1, v28

    invoke-virtual {v4, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    :pswitch_3
    # getter for: Lcom/android/server/epm/overlay/ThemeManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$700()Ljava/lang/String;

    move-result-object v4

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "MESSAGE_NORMAL_INSTALL"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService$6;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-boolean v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->inProgress:Z

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " ,currentPackageToBeInstalled ="

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService$6;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    move-object/from16 v29, v0

    # getter for: Lcom/android/server/epm/overlay/ThemeManagerService;->currentPackageToBeInstalled:Ljava/lang/String;
    invoke-static/range {v29 .. v29}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$1300(Lcom/android/server/epm/overlay/ThemeManagerService;)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/epm/overlay/ThemeManagerService$6;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    iget-boolean v4, v4, Lcom/android/server/epm/overlay/ThemeManagerService;->inProgress:Z

    if-nez v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/epm/overlay/ThemeManagerService$6;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    # getter for: Lcom/android/server/epm/overlay/ThemeManagerService;->currentPackageToBeInstalled:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$1300(Lcom/android/server/epm/overlay/ThemeManagerService;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/epm/overlay/ThemeManagerService$6;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    const/16 v28, 0x1

    move/from16 v0, v28

    iput-boolean v0, v4, Lcom/android/server/epm/overlay/ThemeManagerService;->inProgress:Z

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/Bundle;

    const-string/jumbo v4, "packageName"

    invoke-virtual {v11, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    # getter for: Lcom/android/server/epm/overlay/ThemeManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$700()Ljava/lang/String;

    move-result-object v4

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "MESSAGE_NORMAL_INSTALL packageName"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/epm/overlay/ThemeManagerService$6;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    invoke-virtual {v4, v6}, Lcom/android/server/epm/overlay/ThemeManagerService;->normalMasterInstallation(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_4
    # getter for: Lcom/android/server/epm/overlay/ThemeManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$700()Ljava/lang/String;

    move-result-object v4

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "MESSAGE_CHANGE_STATE"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/epm/overlay/ThemeManagerService$6;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    iget-boolean v4, v4, Lcom/android/server/epm/overlay/ThemeManagerService;->applyInProgress:Z

    if-nez v4, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/epm/overlay/ThemeManagerService$6;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    const/16 v28, 0x1

    move/from16 v0, v28

    iput-boolean v0, v4, Lcom/android/server/epm/overlay/ThemeManagerService;->applyInProgress:Z

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/Bundle;

    const-string/jumbo v4, "packageName"

    invoke-virtual {v11, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v4, "order"

    invoke-virtual {v11, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v22

    const-string/jumbo v4, "isTrial"

    invoke-virtual {v11, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v17

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/epm/overlay/ThemeManagerService$6;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    move/from16 v0, v22

    move/from16 v1, v17

    invoke-virtual {v4, v6, v0, v1}, Lcom/android/server/epm/overlay/ThemeManagerService;->changeThemeState(Ljava/lang/String;IZ)V

    goto/16 :goto_0

    :cond_3
    new-instance v20, Landroid/os/Message;

    invoke-direct/range {v20 .. v20}, Landroid/os/Message;-><init>()V

    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->what:I

    move-object/from16 v0, v20

    iput v4, v0, Landroid/os/Message;->what:I

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v0, v20

    iput-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/epm/overlay/ThemeManagerService$6;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    # getter for: Lcom/android/server/epm/overlay/ThemeManagerService;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$600(Lcom/android/server/epm/overlay/ThemeManagerService;)Landroid/os/Handler;

    move-result-object v4

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v28, v0

    move/from16 v0, v28

    invoke-virtual {v4, v0}, Landroid/os/Handler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/epm/overlay/ThemeManagerService$6;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    # getter for: Lcom/android/server/epm/overlay/ThemeManagerService;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$600(Lcom/android/server/epm/overlay/ThemeManagerService;)Landroid/os/Handler;

    move-result-object v4

    const-wide/16 v28, 0x7d0

    move-object/from16 v0, v20

    move-wide/from16 v1, v28

    invoke-virtual {v4, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    :pswitch_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/epm/overlay/ThemeManagerService$6;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    # operator-- for: Lcom/android/server/epm/overlay/ThemeManagerService;->mComponentCount:I
    invoke-static {v4}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$3210(Lcom/android/server/epm/overlay/ThemeManagerService;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/epm/overlay/ThemeManagerService$6;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    # getter for: Lcom/android/server/epm/overlay/ThemeManagerService;->mComponentCount:I
    invoke-static {v4}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$3200(Lcom/android/server/epm/overlay/ThemeManagerService;)I

    move-result v4

    if-ltz v4, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/epm/overlay/ThemeManagerService$6;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    const/16 v28, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService$6;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    move-object/from16 v29, v0

    # getter for: Lcom/android/server/epm/overlay/ThemeManagerService;->currentPackageToBeInstalled:Ljava/lang/String;
    invoke-static/range {v29 .. v29}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$1300(Lcom/android/server/epm/overlay/ThemeManagerService;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService$6;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    move-object/from16 v30, v0

    # getter for: Lcom/android/server/epm/overlay/ThemeManagerService;->mTotalComponentCount:I
    invoke-static/range {v30 .. v30}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$3300(Lcom/android/server/epm/overlay/ThemeManagerService;)I

    move-result v30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService$6;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    move-object/from16 v31, v0

    # getter for: Lcom/android/server/epm/overlay/ThemeManagerService;->mComponentCount:I
    invoke-static/range {v31 .. v31}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$3200(Lcom/android/server/epm/overlay/ThemeManagerService;)I

    move-result v31

    sub-int v30, v30, v31

    move/from16 v0, v30

    int-to-double v0, v0

    move-wide/from16 v30, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService$6;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    move-object/from16 v32, v0

    # getter for: Lcom/android/server/epm/overlay/ThemeManagerService;->mTotalComponentCount:I
    invoke-static/range {v32 .. v32}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$3300(Lcom/android/server/epm/overlay/ThemeManagerService;)I

    move-result v32

    move/from16 v0, v32

    int-to-double v0, v0

    move-wide/from16 v32, v0

    div-double v30, v30, v32

    const-wide/high16 v32, 0x4059000000000000L    # 100.0

    mul-double v30, v30, v32

    move-wide/from16 v0, v30

    double-to-int v0, v0

    move/from16 v30, v0

    move/from16 v0, v28

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v4, v0, v1, v2}, Lcom/android/server/epm/overlay/ThemeManagerService;->sendCallBack(ILjava/lang/String;I)V

    :cond_4
    # getter for: Lcom/android/server/epm/overlay/ThemeManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$700()Ljava/lang/String;

    move-result-object v4

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "MESSAGE_UNINSTALL_MASTER - "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService$6;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    move-object/from16 v29, v0

    # getter for: Lcom/android/server/epm/overlay/ThemeManagerService;->mComponentCount:I
    invoke-static/range {v29 .. v29}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$3200(Lcom/android/server/epm/overlay/ThemeManagerService;)I

    move-result v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " - "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService$6;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-boolean v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->inProgress:Z

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " - "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService$6;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    move-object/from16 v29, v0

    # getter for: Lcom/android/server/epm/overlay/ThemeManagerService;->currentPackageToBeInstalled:Ljava/lang/String;
    invoke-static/range {v29 .. v29}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$1300(Lcom/android/server/epm/overlay/ThemeManagerService;)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/epm/overlay/ThemeManagerService$6;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    iget-boolean v4, v4, Lcom/android/server/epm/overlay/ThemeManagerService;->inProgress:Z

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/epm/overlay/ThemeManagerService$6;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    # getter for: Lcom/android/server/epm/overlay/ThemeManagerService;->mComponentCount:I
    invoke-static {v4}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$3200(Lcom/android/server/epm/overlay/ThemeManagerService;)I

    move-result v4

    if-gtz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/epm/overlay/ThemeManagerService$6;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    const/16 v28, 0x0

    move/from16 v0, v28

    iput-boolean v0, v4, Lcom/android/server/epm/overlay/ThemeManagerService;->inProgress:Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/epm/overlay/ThemeManagerService$6;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    # getter for: Lcom/android/server/epm/overlay/ThemeManagerService;->mCurrentCategory:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$1400(Lcom/android/server/epm/overlay/ThemeManagerService;)Ljava/lang/String;

    move-result-object v4

    const-string v28, "MyEvent"

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/epm/overlay/ThemeManagerService$6;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    # getter for: Lcom/android/server/epm/overlay/ThemeManagerService;->mCurrentCategory:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$1400(Lcom/android/server/epm/overlay/ThemeManagerService;)Ljava/lang/String;

    move-result-object v4

    const-string v28, "Festival"

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/epm/overlay/ThemeManagerService$6;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    iget-object v4, v4, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    const-string/jumbo v28, "themes"

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/epm/overlay/ThemeManagerService$6;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    iget-object v4, v4, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    const-string/jumbo v28, "themes"

    new-instance v29, Ljava/util/ArrayList;

    invoke-direct/range {v29 .. v29}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    # getter for: Lcom/android/server/epm/overlay/ThemeManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$700()Ljava/lang/String;

    move-result-object v4

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "category = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService$6;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    move-object/from16 v29, v0

    # getter for: Lcom/android/server/epm/overlay/ThemeManagerService;->mCurrentCategory:Ljava/lang/String;
    invoke-static/range {v29 .. v29}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$1400(Lcom/android/server/epm/overlay/ThemeManagerService;)Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/epm/overlay/ThemeManagerService$6;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    # getter for: Lcom/android/server/epm/overlay/ThemeManagerService;->mCurrentCategory:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$1400(Lcom/android/server/epm/overlay/ThemeManagerService;)Ljava/lang/String;

    move-result-object v4

    const-string v28, "MyEvent"

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/epm/overlay/ThemeManagerService$6;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    # getter for: Lcom/android/server/epm/overlay/ThemeManagerService;->mCurrentCategory:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$1400(Lcom/android/server/epm/overlay/ThemeManagerService;)Ljava/lang/String;

    move-result-object v4

    const-string v28, "Festival"

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/epm/overlay/ThemeManagerService$6;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    iget-object v4, v4, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    const-string/jumbo v28, "themes"

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService$6;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    move-object/from16 v28, v0

    # getter for: Lcom/android/server/epm/overlay/ThemeManagerService;->currentPackageToBeInstalled:Ljava/lang/String;
    invoke-static/range {v28 .. v28}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$1300(Lcom/android/server/epm/overlay/ThemeManagerService;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-interface {v4, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/epm/overlay/ThemeManagerService$6;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    iget-object v4, v4, Lcom/android/server/epm/overlay/ThemeManagerService;->componentPackageMap:Ljava/util/HashMap;

    const-string/jumbo v28, "themes"

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService$6;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    move-object/from16 v28, v0

    # getter for: Lcom/android/server/epm/overlay/ThemeManagerService;->currentPackageToBeInstalled:Ljava/lang/String;
    invoke-static/range {v28 .. v28}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$1300(Lcom/android/server/epm/overlay/ThemeManagerService;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    new-instance v13, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v13, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/epm/overlay/ThemeManagerService$6;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    iget-boolean v4, v4, Lcom/android/server/epm/overlay/ThemeManagerService;->buggy:Z

    if-eqz v4, :cond_7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/epm/overlay/ThemeManagerService$6;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    const/16 v28, 0x0

    move/from16 v0, v28

    iput-boolean v0, v4, Lcom/android/server/epm/overlay/ThemeManagerService;->buggy:Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/epm/overlay/ThemeManagerService$6;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService$6;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    move-object/from16 v28, v0

    # getter for: Lcom/android/server/epm/overlay/ThemeManagerService;->currentPackageToBeInstalled:Ljava/lang/String;
    invoke-static/range {v28 .. v28}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$1300(Lcom/android/server/epm/overlay/ThemeManagerService;)Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Lcom/android/server/epm/overlay/ThemeManagerService;->removeThemePackage(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/epm/overlay/ThemeManagerService$6;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    const/16 v28, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService$6;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    move-object/from16 v29, v0

    # getter for: Lcom/android/server/epm/overlay/ThemeManagerService;->currentPackageToBeInstalled:Ljava/lang/String;
    invoke-static/range {v29 .. v29}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$1300(Lcom/android/server/epm/overlay/ThemeManagerService;)Ljava/lang/String;

    move-result-object v29

    const/16 v30, -0x2329

    move/from16 v0, v28

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v4, v0, v1, v2}, Lcom/android/server/epm/overlay/ThemeManagerService;->sendCallBack(ILjava/lang/String;I)V

    new-instance v4, Lcom/android/server/epm/overlay/ThemeManagerService$6$1;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/server/epm/overlay/ThemeManagerService$6$1;-><init>(Lcom/android/server/epm/overlay/ThemeManagerService$6;)V

    invoke-virtual {v13, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/epm/overlay/ThemeManagerService$6;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    const/16 v28, 0x0

    move-object/from16 v0, v28

    # setter for: Lcom/android/server/epm/overlay/ThemeManagerService;->currentPackageToBeInstalled:Ljava/lang/String;
    invoke-static {v4, v0}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$1302(Lcom/android/server/epm/overlay/ThemeManagerService;Ljava/lang/String;)Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/epm/overlay/ThemeManagerService$6;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    # invokes: Lcom/android/server/epm/overlay/ThemeManagerService;->storeActiveComponents()V
    invoke-static {v4}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$2300(Lcom/android/server/epm/overlay/ThemeManagerService;)V

    goto/16 :goto_0

    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/epm/overlay/ThemeManagerService$6;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    const/16 v28, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService$6;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    move-object/from16 v29, v0

    # getter for: Lcom/android/server/epm/overlay/ThemeManagerService;->currentPackageToBeInstalled:Ljava/lang/String;
    invoke-static/range {v29 .. v29}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$1300(Lcom/android/server/epm/overlay/ThemeManagerService;)Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService$6;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    move-object/from16 v30, v0

    # getter for: Lcom/android/server/epm/overlay/ThemeManagerService;->masterInstallErrorCode:I
    invoke-static/range {v30 .. v30}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$1600(Lcom/android/server/epm/overlay/ThemeManagerService;)I

    move-result v30

    move/from16 v0, v28

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v4, v0, v1, v2}, Lcom/android/server/epm/overlay/ThemeManagerService;->sendCallBack(ILjava/lang/String;I)V

    new-instance v4, Lcom/android/server/epm/overlay/ThemeManagerService$6$2;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/server/epm/overlay/ThemeManagerService$6$2;-><init>(Lcom/android/server/epm/overlay/ThemeManagerService$6;)V

    invoke-virtual {v13, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :pswitch_6
    # getter for: Lcom/android/server/epm/overlay/ThemeManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$700()Ljava/lang/String;

    move-result-object v4

    const-string v28, "MESSAGE_BUGGY_MASTER"

    move-object/from16 v0, v28

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/epm/overlay/ThemeManagerService$6;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    const/16 v28, 0x1

    move/from16 v0, v28

    iput-boolean v0, v4, Lcom/android/server/epm/overlay/ThemeManagerService;->buggy:Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/epm/overlay/ThemeManagerService$6;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v28, v0

    move/from16 v0, v28

    # -= operator for: Lcom/android/server/epm/overlay/ThemeManagerService;->mComponentCount:I
    invoke-static {v4, v0}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$3220(Lcom/android/server/epm/overlay/ThemeManagerService;I)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/epm/overlay/ThemeManagerService$6;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    # getter for: Lcom/android/server/epm/overlay/ThemeManagerService;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$600(Lcom/android/server/epm/overlay/ThemeManagerService;)Landroid/os/Handler;

    move-result-object v4

    const/16 v28, 0x3

    move/from16 v0, v28

    invoke-virtual {v4, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :pswitch_7
    # getter for: Lcom/android/server/epm/overlay/ThemeManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$700()Ljava/lang/String;

    move-result-object v4

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "MESSAGE_REMOVE"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v4, :cond_0

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/Bundle;

    const-string/jumbo v4, "packageName"

    invoke-virtual {v11, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/epm/overlay/ThemeManagerService$6;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    invoke-virtual {v4, v6}, Lcom/android/server/epm/overlay/ThemeManagerService;->removeThemePackage(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_8
    # getter for: Lcom/android/server/epm/overlay/ThemeManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$700()Ljava/lang/String;

    move-result-object v4

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "MESSAGE_EVENT"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v4, :cond_8

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/Bundle;

    const-string/jumbo v4, "packageName"

    invoke-virtual {v11, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v4, "eventCategory"

    invoke-virtual {v11, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string/jumbo v4, "index"

    invoke-virtual {v11, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v15

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/epm/overlay/ThemeManagerService$6;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    # invokes: Lcom/android/server/epm/overlay/ThemeManagerService;->onEventPassed(Ljava/lang/String;ILjava/lang/String;)V
    invoke-static {v4, v6, v15, v12}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$3400(Lcom/android/server/epm/overlay/ThemeManagerService;Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/epm/overlay/ThemeManagerService$6;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    # invokes: Lcom/android/server/epm/overlay/ThemeManagerService;->onEventOccur()V
    invoke-static {v4}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$3500(Lcom/android/server/epm/overlay/ThemeManagerService;)V

    goto/16 :goto_0

    :pswitch_9
    # getter for: Lcom/android/server/epm/overlay/ThemeManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$700()Ljava/lang/String;

    move-result-object v4

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "MESSAGE_SET_EVENT_TIME"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v4, :cond_0

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/Bundle;

    const-string/jumbo v4, "packageName"

    invoke-virtual {v11, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v4, "startTime"

    invoke-virtual {v11, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v4, "repeatSchedule"

    invoke-virtual {v11, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v4, "myEventType"

    invoke-virtual {v11, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v4, "myEventTitle"

    invoke-virtual {v11, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/epm/overlay/ThemeManagerService$6;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/epm/overlay/ThemeManagerService;->setTimeForMyEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_a
    # getter for: Lcom/android/server/epm/overlay/ThemeManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$700()Ljava/lang/String;

    move-result-object v4

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "DELETE_SET_EVENT_TIME"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v4, :cond_0

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/Bundle;

    const-string/jumbo v4, "myEventType"

    invoke-virtual {v11, v4}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v21

    const-string v4, "action"

    invoke-virtual {v11, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/epm/overlay/ThemeManagerService$6;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    move-object/from16 v0, v21

    # invokes: Lcom/android/server/epm/overlay/ThemeManagerService;->setDeleteMyEvents(Ljava/util/ArrayList;Ljava/lang/String;)V
    invoke-static {v4, v0, v10}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$3600(Lcom/android/server/epm/overlay/ThemeManagerService;Ljava/util/ArrayList;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_b
    # getter for: Lcom/android/server/epm/overlay/ThemeManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$700()Ljava/lang/String;

    move-result-object v4

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "MESSAGE_SET_FESTIVAL"

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v4, :cond_0

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/Bundle;

    const-string/jumbo v4, "packageName"

    invoke-virtual {v11, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/epm/overlay/ThemeManagerService$6;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    # invokes: Lcom/android/server/epm/overlay/ThemeManagerService;->setFestivalPackage(Ljava/lang/String;)V
    invoke-static {v4, v6}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$3700(Lcom/android/server/epm/overlay/ThemeManagerService;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_c
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v4, :cond_0

    move-object/from16 v0, p1

    iget-object v11, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v11, Landroid/os/Bundle;

    const-string/jumbo v4, "packageName"

    invoke-virtual {v11, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/epm/overlay/ThemeManagerService$6;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    iget-object v4, v4, Lcom/android/server/epm/overlay/ThemeManagerService;->mEnabledPackages:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/epm/overlay/ThemeManagerService$6;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    iget-object v4, v4, Lcom/android/server/epm/overlay/ThemeManagerService;->mDisabledPackages:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/epm/overlay/ThemeManagerService$6;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    iget-object v4, v4, Lcom/android/server/epm/overlay/ThemeManagerService;->mEnabledPackages:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/epm/overlay/ThemeManagerService$6;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    iget-object v4, v4, Lcom/android/server/epm/overlay/ThemeManagerService;->mEnabledPackages:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_a
    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/epm/overlay/ThemeManagerService$6;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    iget-object v4, v4, Lcom/android/server/epm/overlay/ThemeManagerService;->mEnabledPackages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService$6;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mDisabledPackages:Ljava/util/ArrayList;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->size()I

    move-result v28

    add-int v25, v4, v28

    # getter for: Lcom/android/server/epm/overlay/ThemeManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$700()Ljava/lang/String;

    move-result-object v4

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v29, "mEnabledPackages = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService$6;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mEnabledPackages:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, ", mDisabledPackages = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService$6;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService;->mDisabledPackages:Ljava/util/ArrayList;

    move-object/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/epm/overlay/ThemeManagerService$6;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    iget v4, v4, Lcom/android/server/epm/overlay/ThemeManagerService;->mAppStylePackages:I

    sub-int v4, v4, v25

    int-to-double v0, v4

    move-wide/from16 v28, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/epm/overlay/ThemeManagerService$6;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    iget v4, v4, Lcom/android/server/epm/overlay/ThemeManagerService;->mAppStylePackages:I

    int-to-double v0, v4

    move-wide/from16 v30, v0

    div-double v28, v28, v30

    const-wide/high16 v30, 0x4059000000000000L    # 100.0

    mul-double v28, v28, v30

    move-wide/from16 v0, v28

    double-to-int v0, v0

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/epm/overlay/ThemeManagerService$6;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    const/16 v28, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService$6;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    move-object/from16 v29, v0

    # getter for: Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;
    invoke-static/range {v29 .. v29}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$2100(Lcom/android/server/epm/overlay/ThemeManagerService;)[Ljava/lang/String;

    move-result-object v29

    const/16 v30, 0x0

    aget-object v29, v29, v30

    move/from16 v0, v28

    move-object/from16 v1, v29

    move/from16 v2, v24

    invoke-virtual {v4, v0, v1, v2}, Lcom/android/server/epm/overlay/ThemeManagerService;->sendCallBack(ILjava/lang/String;I)V

    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/epm/overlay/ThemeManagerService$6;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    iget-boolean v4, v4, Lcom/android/server/epm/overlay/ThemeManagerService;->applyInProgress:Z

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/epm/overlay/ThemeManagerService$6;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    iget-object v4, v4, Lcom/android/server/epm/overlay/ThemeManagerService;->mEnabledPackages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/epm/overlay/ThemeManagerService$6;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    iget-object v4, v4, Lcom/android/server/epm/overlay/ThemeManagerService;->mDisabledPackages:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/epm/overlay/ThemeManagerService$6;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    const/16 v28, 0x0

    move/from16 v0, v28

    iput-boolean v0, v4, Lcom/android/server/epm/overlay/ThemeManagerService;->applyInProgress:Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/epm/overlay/ThemeManagerService$6;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    # getter for: Lcom/android/server/epm/overlay/ThemeManagerService;->mActivityManager:Landroid/app/ActivityManager;
    invoke-static {v4}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$3800(Lcom/android/server/epm/overlay/ThemeManagerService;)Landroid/app/ActivityManager;

    move-result-object v4

    const/16 v28, 0x64

    move/from16 v0, v28

    invoke-virtual {v4, v0}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v27

    invoke-interface/range {v27 .. v27}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_c
    :goto_3
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Landroid/app/ActivityManager$RunningTaskInfo;

    move-object/from16 v0, v26

    iget-object v4, v0, Landroid/app/ActivityManager$RunningTaskInfo;->multiWindowStyle:Lcom/samsung/android/multiwindow/MultiWindowStyle;

    invoke-virtual {v4}, Lcom/samsung/android/multiwindow/MultiWindowStyle;->isNormal()Z

    move-result v4

    if-nez v4, :cond_c

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/epm/overlay/ThemeManagerService$6;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    # getter for: Lcom/android/server/epm/overlay/ThemeManagerService;->mActivityManager:Landroid/app/ActivityManager;
    invoke-static {v4}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$3800(Lcom/android/server/epm/overlay/ThemeManagerService;)Landroid/app/ActivityManager;

    move-result-object v4

    move-object/from16 v0, v26

    iget v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    move/from16 v28, v0

    move/from16 v0, v28

    invoke-virtual {v4, v0}, Landroid/app/ActivityManager;->removeTask(I)Z

    goto :goto_3

    :cond_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/epm/overlay/ThemeManagerService$6;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    iget-object v4, v4, Lcom/android/server/epm/overlay/ThemeManagerService;->mDisabledPackages:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/epm/overlay/ThemeManagerService$6;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    iget-object v4, v4, Lcom/android/server/epm/overlay/ThemeManagerService;->mDisabledPackages:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/epm/overlay/ThemeManagerService$6;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    # getter for: Lcom/android/server/epm/overlay/ThemeManagerService;->mHandler:Landroid/os/Handler;
    invoke-static {v4}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$600(Lcom/android/server/epm/overlay/ThemeManagerService;)Landroid/os/Handler;

    move-result-object v4

    const/16 v28, 0x9

    const-wide/16 v30, 0x3e8

    move/from16 v0, v28

    move-wide/from16 v1, v30

    invoke-virtual {v4, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/epm/overlay/ThemeManagerService$6;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    const-string v28, "com.sec.android.app.launcher"

    move-object/from16 v0, v28

    # invokes: Lcom/android/server/epm/overlay/ThemeManagerService;->isDefaultApp(Ljava/lang/String;)Z
    invoke-static {v4, v0}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$3900(Lcom/android/server/epm/overlay/ThemeManagerService;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    # getter for: Lcom/android/server/epm/overlay/ThemeManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$700()Ljava/lang/String;

    move-result-object v4

    const-string v28, "Start Launcher ~~~ FInally"

    move-object/from16 v0, v28

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v18, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    const/16 v28, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v28

    invoke-direct {v0, v4, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v4, "android.intent.category.HOME"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "com.sec.android.app.launcher"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v4, 0x10200000

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/epm/overlay/ThemeManagerService$6;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    # getter for: Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$300(Lcom/android/server/epm/overlay/ThemeManagerService;)Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    :pswitch_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/epm/overlay/ThemeManagerService$6;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    const/16 v28, 0x5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService$6;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    move-object/from16 v29, v0

    # getter for: Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;
    invoke-static/range {v29 .. v29}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$2100(Lcom/android/server/epm/overlay/ThemeManagerService;)[Ljava/lang/String;

    move-result-object v29

    const/16 v30, 0x0

    aget-object v29, v29, v30

    const/16 v30, 0x64

    move/from16 v0, v28

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v4, v0, v1, v2}, Lcom/android/server/epm/overlay/ThemeManagerService;->sendCallBack(ILjava/lang/String;I)V

    new-instance v16, Landroid/content/Intent;

    const-string v4, "com.samsung.android.theme.themecenter.THEME_APPLY"

    move-object/from16 v0, v16

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "packageName"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/epm/overlay/ThemeManagerService$6;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    move-object/from16 v28, v0

    # getter for: Lcom/android/server/epm/overlay/ThemeManagerService;->activeComponentMasterPackageArr:[Ljava/lang/String;
    invoke-static/range {v28 .. v28}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$2100(Lcom/android/server/epm/overlay/ThemeManagerService;)[Ljava/lang/String;

    move-result-object v28

    const/16 v29, 0x0

    aget-object v28, v28, v29

    move-object/from16 v0, v16

    move-object/from16 v1, v28

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/epm/overlay/ThemeManagerService$6;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    # getter for: Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$300(Lcom/android/server/epm/overlay/ThemeManagerService;)Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    # getter for: Lcom/android/server/epm/overlay/ThemeManagerService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$700()Ljava/lang/String;

    move-result-object v4

    const-string v28, "broadcast sent"

    move-object/from16 v0, v28

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/epm/overlay/ThemeManagerService$6;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    # getter for: Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$300(Lcom/android/server/epm/overlay/ThemeManagerService;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v28, "enabled_notification_listeners"

    move-object/from16 v0, v28

    invoke-static {v4, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/epm/overlay/ThemeManagerService$6;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    # getter for: Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$300(Lcom/android/server/epm/overlay/ThemeManagerService;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v28, "enabled_notification_listeners"

    const-string v29, ""

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    invoke-static {v4, v0, v1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/epm/overlay/ThemeManagerService$6;->this$0:Lcom/android/server/epm/overlay/ThemeManagerService;

    # getter for: Lcom/android/server/epm/overlay/ThemeManagerService;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/epm/overlay/ThemeManagerService;->access$300(Lcom/android/server/epm/overlay/ThemeManagerService;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v28, "enabled_notification_listeners"

    move-object/from16 v0, v28

    move-object/from16 v1, v19

    invoke-static {v4, v0, v1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_8
        :pswitch_5
        :pswitch_7
        :pswitch_6
        :pswitch_3
        :pswitch_9
        :pswitch_c
        :pswitch_d
        :pswitch_0
        :pswitch_a
        :pswitch_b
        :pswitch_2
    .end packed-switch
.end method

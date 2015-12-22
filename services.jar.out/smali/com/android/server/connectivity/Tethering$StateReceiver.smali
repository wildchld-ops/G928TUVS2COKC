.class Lcom/android/server/connectivity/Tethering$StateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "Tethering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Tethering;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/Tethering;


# direct methods
.method private constructor <init>(Lcom/android/server/connectivity/Tethering;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/connectivity/Tethering;Lcom/android/server/connectivity/Tethering$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering$StateReceiver;-><init>(Lcom/android/server/connectivity/Tethering;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 44

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_1

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v39, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;
    invoke-static/range {v39 .. v39}, Lcom/android/server/connectivity/Tethering;->access$200(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v39, "android.hardware.usb.action.USB_STATE"

    move-object/from16 v0, v39

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v39, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;
    invoke-static/range {v39 .. v39}, Lcom/android/server/connectivity/Tethering;->access$300(Lcom/android/server/connectivity/Tethering;)Ljava/lang/Object;

    move-result-object v40

    monitor-enter v40

    :try_start_0
    const-string v39, "connected"

    const/16 v41, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    move/from16 v2, v41

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v39, v0

    const-string/jumbo v41, "rndis"

    const/16 v42, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    move/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v41

    move-object/from16 v0, v39

    move/from16 v1, v41

    # setter for: Lcom/android/server/connectivity/Tethering;->mRndisEnabled:Z
    invoke-static {v0, v1}, Lcom/android/server/connectivity/Tethering;->access$402(Lcom/android/server/connectivity/Tethering;Z)Z

    if-eqz v36, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v39, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mRndisEnabled:Z
    invoke-static/range {v39 .. v39}, Lcom/android/server/connectivity/Tethering;->access$400(Lcom/android/server/connectivity/Tethering;)Z

    move-result v39

    if-eqz v39, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v39, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mUsbTetherRequested:Z
    invoke-static/range {v39 .. v39}, Lcom/android/server/connectivity/Tethering;->access$500(Lcom/android/server/connectivity/Tethering;)Z

    move-result v39

    if-eqz v39, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v39, v0

    const/16 v41, 0x1

    move-object/from16 v0, v39

    move/from16 v1, v41

    # invokes: Lcom/android/server/connectivity/Tethering;->tetherUsb(Z)V
    invoke-static {v0, v1}, Lcom/android/server/connectivity/Tethering;->access$600(Lcom/android/server/connectivity/Tethering;Z)V

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v39, v0

    const/16 v41, 0x0

    move-object/from16 v0, v39

    move/from16 v1, v41

    # setter for: Lcom/android/server/connectivity/Tethering;->mUsbTetherRequested:Z
    invoke-static {v0, v1}, Lcom/android/server/connectivity/Tethering;->access$502(Lcom/android/server/connectivity/Tethering;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v39, v0

    const-string/jumbo v41, "ncm"

    const/16 v42, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v41

    move/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v41

    move-object/from16 v0, v39

    move/from16 v1, v41

    # setter for: Lcom/android/server/connectivity/Tethering;->mNcmEnabled:Z
    invoke-static {v0, v1}, Lcom/android/server/connectivity/Tethering;->access$702(Lcom/android/server/connectivity/Tethering;Z)Z

    if-eqz v36, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v39, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mNcmEnabled:Z
    invoke-static/range {v39 .. v39}, Lcom/android/server/connectivity/Tethering;->access$700(Lcom/android/server/connectivity/Tethering;)Z

    move-result v39

    if-eqz v39, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v39, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mNcmTetherRequested:Z
    invoke-static/range {v39 .. v39}, Lcom/android/server/connectivity/Tethering;->access$800(Lcom/android/server/connectivity/Tethering;)Z

    move-result v39

    if-eqz v39, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v39, v0

    const/16 v41, 0x1

    move-object/from16 v0, v39

    move/from16 v1, v41

    # invokes: Lcom/android/server/connectivity/Tethering;->tetherNcm(Z)V
    invoke-static {v0, v1}, Lcom/android/server/connectivity/Tethering;->access$900(Lcom/android/server/connectivity/Tethering;Z)V

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v39, v0

    const/16 v41, 0x0

    move-object/from16 v0, v39

    move/from16 v1, v41

    # setter for: Lcom/android/server/connectivity/Tethering;->mNcmTetherRequested:Z
    invoke-static {v0, v1}, Lcom/android/server/connectivity/Tethering;->access$802(Lcom/android/server/connectivity/Tethering;Z)Z

    monitor-exit v40

    goto/16 :goto_0

    :catchall_0
    move-exception v39

    monitor-exit v40
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v39

    :cond_4
    const-string v39, "android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE"

    move-object/from16 v0, v39

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_5

    const-string/jumbo v39, "networkInfo"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v25

    check-cast v25, Landroid/net/NetworkInfo;

    if-eqz v25, :cond_0

    invoke-virtual/range {v25 .. v25}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v39

    sget-object v40, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    move-object/from16 v0, v39

    move-object/from16 v1, v40

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v39, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mTetherMasterSM:Lcom/android/internal/util/StateMachine;
    invoke-static/range {v39 .. v39}, Lcom/android/server/connectivity/Tethering;->access$1000(Lcom/android/server/connectivity/Tethering;)Lcom/android/internal/util/StateMachine;

    move-result-object v39

    const/16 v40, 0x3

    move-object/from16 v0, v39

    move/from16 v1, v40

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_5
    const-string v39, "android.intent.action.CONFIGURATION_CHANGED"

    move-object/from16 v0, v39

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Lcom/android/server/connectivity/Tethering;->updateConfiguration()V

    goto/16 :goto_0

    :cond_6
    const-string v39, "android.intent.action.LOCALE_CHANGED"

    move-object/from16 v0, v39

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v39, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->wifiTethered:Z
    invoke-static/range {v39 .. v39}, Lcom/android/server/connectivity/Tethering;->access$1100(Lcom/android/server/connectivity/Tethering;)Z

    move-result v39

    if-eqz v39, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v39, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;
    invoke-static/range {v39 .. v39}, Lcom/android/server/connectivity/Tethering;->access$1200(Lcom/android/server/connectivity/Tethering;)Landroid/app/Notification;

    move-result-object v39

    if-eqz v39, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v39, v0

    const/16 v40, 0x1

    # setter for: Lcom/android/server/connectivity/Tethering;->locale_changed_event:Z
    invoke-static/range {v39 .. v40}, Lcom/android/server/connectivity/Tethering;->access$1302(Lcom/android/server/connectivity/Tethering;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v39, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v40, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;
    invoke-static/range {v40 .. v40}, Lcom/android/server/connectivity/Tethering;->access$1200(Lcom/android/server/connectivity/Tethering;)Landroid/app/Notification;

    move-result-object v40

    move-object/from16 v0, v40

    iget v0, v0, Landroid/app/Notification;->icon:I

    move/from16 v40, v0

    # invokes: Lcom/android/server/connectivity/Tethering;->showTetheredNotification(I)V
    invoke-static/range {v39 .. v40}, Lcom/android/server/connectivity/Tethering;->access$1400(Lcom/android/server/connectivity/Tethering;I)V

    goto/16 :goto_0

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v39, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->wifiVendorTethered:Z
    invoke-static/range {v39 .. v39}, Lcom/android/server/connectivity/Tethering;->access$1500(Lcom/android/server/connectivity/Tethering;)Z

    move-result v39

    if-eqz v39, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v39, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;
    invoke-static/range {v39 .. v39}, Lcom/android/server/connectivity/Tethering;->access$1200(Lcom/android/server/connectivity/Tethering;)Landroid/app/Notification;

    move-result-object v39

    if-eqz v39, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v39, v0

    const/16 v40, 0x1

    # setter for: Lcom/android/server/connectivity/Tethering;->locale_changed_event:Z
    invoke-static/range {v39 .. v40}, Lcom/android/server/connectivity/Tethering;->access$1302(Lcom/android/server/connectivity/Tethering;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v39, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v40, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mTetheredNotification:Landroid/app/Notification;
    invoke-static/range {v40 .. v40}, Lcom/android/server/connectivity/Tethering;->access$1200(Lcom/android/server/connectivity/Tethering;)Landroid/app/Notification;

    move-result-object v40

    move-object/from16 v0, v40

    iget v0, v0, Landroid/app/Notification;->icon:I

    move/from16 v40, v0

    # invokes: Lcom/android/server/connectivity/Tethering;->showTetheredVendorNotification(I)V
    invoke-static/range {v39 .. v40}, Lcom/android/server/connectivity/Tethering;->access$1600(Lcom/android/server/connectivity/Tethering;I)V

    goto/16 :goto_0

    :cond_8
    const-string v39, "com.samsung.android.net.wifi.WIFI_AP_STA_STATUS_CHANGED"

    move-object/from16 v0, v39

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v39, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->wifiVendorTethered:Z
    invoke-static/range {v39 .. v39}, Lcom/android/server/connectivity/Tethering;->access$1500(Lcom/android/server/connectivity/Tethering;)Z

    move-result v39

    if-nez v39, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v39, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->wifiTethered:Z
    invoke-static/range {v39 .. v39}, Lcom/android/server/connectivity/Tethering;->access$1100(Lcom/android/server/connectivity/Tethering;)Z

    move-result v39

    if-eqz v39, :cond_12

    :cond_9
    # getter for: Lcom/android/server/connectivity/Tethering;->mRVFMode:I
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$1700()I

    move-result v39

    if-nez v39, :cond_12

    const-string v39, "EVENT"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    const-string v39, "Tethering"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "[WIFI] onReceive() WIFI_AP_STA_STATUS_CHANGED_ACTION intent, type of EVENT: "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v35, :cond_0

    const-string v39, "NUM"

    const/16 v40, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v26

    if-gez v26, :cond_a

    const/16 v26, 0x0

    :cond_a
    # getter for: Lcom/android/server/connectivity/Tethering;->clients:I
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$1800()I

    move-result v39

    move/from16 v0, v39

    move/from16 v1, v26

    if-eq v0, v1, :cond_0

    # getter for: Lcom/android/server/connectivity/Tethering;->clients:I
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$1800()I

    move-result v39

    # setter for: Lcom/android/server/connectivity/Tethering;->mLastClients:I
    invoke-static/range {v39 .. v39}, Lcom/android/server/connectivity/Tethering;->access$1902(I)I

    # setter for: Lcom/android/server/connectivity/Tethering;->clients:I
    invoke-static/range {v26 .. v26}, Lcom/android/server/connectivity/Tethering;->access$1802(I)I

    const-string v39, "Tethering"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "**number of client: "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    # getter for: Lcom/android/server/connectivity/Tethering;->clients:I
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$1800()I

    move-result v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v39, v0

    const/16 v40, 0x1

    # setter for: Lcom/android/server/connectivity/Tethering;->add_client_event:Z
    invoke-static/range {v39 .. v40}, Lcom/android/server/connectivity/Tethering;->access$2002(Lcom/android/server/connectivity/Tethering;Z)Z

    const-string v39, "VZW"

    const-string v40, "TMO"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v39, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;
    invoke-static/range {v39 .. v39}, Lcom/android/server/connectivity/Tethering;->access$200(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v39

    const-string/jumbo v40, "statusbar"

    invoke-virtual/range {v39 .. v40}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/app/StatusBarManager;

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v39, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;
    invoke-static/range {v39 .. v39}, Lcom/android/server/connectivity/Tethering;->access$200(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v39

    const-string/jumbo v40, "wifi"

    invoke-virtual/range {v39 .. v40}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Landroid/net/wifi/WifiManager;

    invoke-virtual/range {v38 .. v38}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v39

    if-eqz v39, :cond_c

    # getter for: Lcom/android/server/connectivity/Tethering;->clients:I
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$1800()I

    move-result v39

    sget-object v40, Lcom/android/server/connectivity/Tethering;->WIFI_AP_ON_ICON:[I

    move-object/from16 v0, v40

    array-length v0, v0

    move/from16 v40, v0

    move/from16 v0, v39

    move/from16 v1, v40

    if-le v0, v1, :cond_b

    sget-object v39, Lcom/android/server/connectivity/Tethering;->WIFI_AP_ON_ICON:[I

    sget-object v40, Lcom/android/server/connectivity/Tethering;->WIFI_AP_ON_ICON:[I

    move-object/from16 v0, v40

    array-length v0, v0

    move/from16 v40, v0

    add-int/lit8 v40, v40, -0x1

    aget v18, v39, v40

    :goto_1
    const-string/jumbo v39, "wifi_ap"

    const/16 v40, 0x0

    const/16 v41, 0x0

    move-object/from16 v0, v34

    move-object/from16 v1, v39

    move/from16 v2, v18

    move/from16 v3, v40

    move-object/from16 v4, v41

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/StatusBarManager;->setIcon(Ljava/lang/String;IILjava/lang/String;)V

    const-string/jumbo v39, "wifi_ap"

    const/16 v40, 0x1

    move-object/from16 v0, v34

    move-object/from16 v1, v39

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_b
    sget-object v39, Lcom/android/server/connectivity/Tethering;->WIFI_AP_ON_ICON:[I

    # getter for: Lcom/android/server/connectivity/Tethering;->clients:I
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$1800()I

    move-result v40

    aget v18, v39, v40

    goto :goto_1

    :cond_c
    const-string v39, "Tethering"

    const-string v40, "Wifi Ap is not enabled."

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v39, "wifi_ap"

    const/16 v40, 0x0

    move-object/from16 v0, v34

    move-object/from16 v1, v39

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/app/StatusBarManager;->setIconVisibility(Ljava/lang/String;Z)V

    const-string/jumbo v39, "wifi_ap"

    move-object/from16 v0, v34

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->removeIcon(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_d
    const-string v39, "SPRINT"

    const-string v40, "TMO"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v39, v0

    const v40, 0x10807ad

    # invokes: Lcom/android/server/connectivity/Tethering;->showTetheredVendorNotification(I)V
    invoke-static/range {v39 .. v40}, Lcom/android/server/connectivity/Tethering;->access$1600(Lcom/android/server/connectivity/Tethering;I)V

    goto/16 :goto_0

    :cond_e
    const-string v39, "TMO"

    const-string v40, "TMO"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_f

    const-string v39, "NEWCO"

    const-string v40, "TMO"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_10

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v39, v0

    const v40, 0x10807aa

    # invokes: Lcom/android/server/connectivity/Tethering;->showTetheredNotification(I)V
    invoke-static/range {v39 .. v40}, Lcom/android/server/connectivity/Tethering;->access$1400(Lcom/android/server/connectivity/Tethering;I)V

    goto/16 :goto_0

    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v39, v0

    const v40, 0x10807ac

    # invokes: Lcom/android/server/connectivity/Tethering;->showTetheredNotification(I)V
    invoke-static/range {v39 .. v40}, Lcom/android/server/connectivity/Tethering;->access$1400(Lcom/android/server/connectivity/Tethering;I)V

    const-string v39, "ATT"

    const-string v40, "TMO"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_0

    invoke-static {}, Landroid/util/GeneralUtil;->isTablet()Z

    move-result v39

    if-nez v39, :cond_0

    const-string v39, "Tethering"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "createMaxApNotification(), clients = "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    # getter for: Lcom/android/server/connectivity/Tethering;->clients:I
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$1800()I

    move-result v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    # getter for: Lcom/android/server/connectivity/Tethering;->clients:I
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$1800()I

    move-result v39

    # getter for: Lcom/android/server/connectivity/Tethering;->MAX_CLIENTS:I
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$2100()I

    move-result v40

    move/from16 v0, v39

    move/from16 v1, v40

    if-lt v0, v1, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Lcom/android/server/connectivity/Tethering;->createMaxApNotification()V

    goto/16 :goto_0

    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Lcom/android/server/connectivity/Tethering;->clearMaxApNotification()V

    goto/16 :goto_0

    :cond_12
    const-string v39, "ATT"

    const-string v40, "TMO"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_13

    const-string v39, "com.samsung.android.net.wifi.MAXAP_NOTI"

    move-object/from16 v0, v39

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Lcom/android/server/connectivity/Tethering;->clearMaxApNotification()V

    goto/16 :goto_0

    :cond_13
    const-string v39, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    move-object/from16 v0, v39

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_14

    const-string/jumbo v39, "wifi_state"

    const/16 v40, 0xe

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    packed-switch v9, :pswitch_data_0

    :pswitch_1
    goto/16 :goto_0

    :pswitch_2
    const-string v39, "ATT"

    const-string v40, "TMO"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_0

    invoke-static {}, Landroid/util/GeneralUtil;->isTablet()Z

    move-result v39

    if-nez v39, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Lcom/android/server/connectivity/Tethering;->clearMaxApNotification()V

    goto/16 :goto_0

    :cond_14
    const-string v39, "android.net.wifi.wifiap_power_mode_alarm"

    move-object/from16 v0, v39

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_1c

    const-string/jumbo v39, "wifiap_power_mode_alarm_option"

    const/16 v40, 0x3

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v27

    if-nez v27, :cond_18

    :try_start_1
    const-string/jumbo v39, "wifi_ap_plugged_type"

    move-object/from16 v0, v39

    invoke-static {v12, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v29

    :goto_2
    const-string v39, "TMO"

    const-string v40, "TMO"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_15

    if-nez v29, :cond_0

    :cond_15
    const-string/jumbo v39, "wifi_ap_time_out_value"

    # getter for: Lcom/android/server/connectivity/Tethering;->defaultTimeoutValue:I
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$2200()I

    move-result v40

    move-object/from16 v0, v39

    move/from16 v1, v40

    invoke-static {v12, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v31

    const-string v39, "Tethering"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "ALARM_START : set "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string v41, " sec"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v31, :cond_16

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v40

    move/from16 v0, v31

    mul-int/lit16 v0, v0, 0x3e8

    move/from16 v39, v0

    move/from16 v0, v39

    int-to-long v0, v0

    move-wide/from16 v42, v0

    add-long v14, v40, v42

    new-instance v7, Landroid/content/Intent;

    const-string v39, "android.net.wifi.wifiap_power_mode_alarm"

    move-object/from16 v0, v39

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v39, "wifiap_power_mode_alarm_option"

    const/16 v40, 0x1

    move-object/from16 v0, v39

    move/from16 v1, v40

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v39, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;
    invoke-static/range {v39 .. v39}, Lcom/android/server/connectivity/Tethering;->access$200(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v39

    const/16 v40, 0x0

    const/high16 v41, 0x10000000

    move-object/from16 v0, v39

    move/from16 v1, v40

    move/from16 v2, v41

    invoke-static {v0, v1, v7, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v39, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;
    invoke-static/range {v39 .. v39}, Lcom/android/server/connectivity/Tethering;->access$200(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v39

    const-string v40, "alarm"

    invoke-virtual/range {v39 .. v40}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/AlarmManager;

    const/16 v39, 0x0

    move/from16 v0, v39

    move-object/from16 v1, v28

    invoke-virtual {v8, v0, v14, v15, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    const/16 v39, 0x0

    # setter for: Lcom/android/server/connectivity/Tethering;->bExpireAlarm:Z
    invoke-static/range {v39 .. v39}, Lcom/android/server/connectivity/Tethering;->access$2302(Z)Z

    const/16 v39, 0x1

    # setter for: Lcom/android/server/connectivity/Tethering;->bStartAlarm:Z
    invoke-static/range {v39 .. v39}, Lcom/android/server/connectivity/Tethering;->access$2402(Z)Z

    goto/16 :goto_0

    :catch_0
    move-exception v13

    const/16 v29, 0x0

    goto/16 :goto_2

    :cond_16
    # getter for: Lcom/android/server/connectivity/Tethering;->bStartAlarm:Z
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$2400()Z

    move-result v39

    if-eqz v39, :cond_17

    new-instance v7, Landroid/content/Intent;

    const-string v39, "android.net.wifi.wifiap_power_mode_alarm"

    move-object/from16 v0, v39

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v39, "wifiap_power_mode_alarm_option"

    const/16 v40, 0x1

    move-object/from16 v0, v39

    move/from16 v1, v40

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v39, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;
    invoke-static/range {v39 .. v39}, Lcom/android/server/connectivity/Tethering;->access$200(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v39

    const/16 v40, 0x0

    const/high16 v41, 0x10000000

    move-object/from16 v0, v39

    move/from16 v1, v40

    move/from16 v2, v41

    invoke-static {v0, v1, v7, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v39, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;
    invoke-static/range {v39 .. v39}, Lcom/android/server/connectivity/Tethering;->access$200(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v39

    const-string v40, "alarm"

    invoke-virtual/range {v39 .. v40}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/AlarmManager;

    move-object/from16 v0, v28

    invoke-virtual {v8, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :cond_17
    const/16 v39, 0x0

    # setter for: Lcom/android/server/connectivity/Tethering;->bStartAlarm:Z
    invoke-static/range {v39 .. v39}, Lcom/android/server/connectivity/Tethering;->access$2402(Z)Z

    goto/16 :goto_0

    :cond_18
    const/16 v39, 0x4

    move/from16 v0, v27

    move/from16 v1, v39

    if-ne v0, v1, :cond_19

    const-string v39, "Tethering"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "WIFIAP_POWER_MODE_VALUE_CHANGED, clients = "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    # getter for: Lcom/android/server/connectivity/Tethering;->clients:I
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$1800()I

    move-result v41

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    # getter for: Lcom/android/server/connectivity/Tethering;->clients:I
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$1800()I

    move-result v39

    if-nez v39, :cond_0

    const-string v39, "Tethering"

    const-string v40, "ALARM_START because of WIFIAP_POWER_MODE_VALUE_CHANGED"

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v39, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v40, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;
    invoke-static/range {v40 .. v40}, Lcom/android/server/connectivity/Tethering;->access$200(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v40

    const/16 v41, 0x0

    # invokes: Lcom/android/server/connectivity/Tethering;->sendWifiApPowerModeAlarmIntent(Landroid/content/Context;I)V
    invoke-static/range {v39 .. v41}, Lcom/android/server/connectivity/Tethering;->access$2500(Lcom/android/server/connectivity/Tethering;Landroid/content/Context;I)V

    goto/16 :goto_0

    :cond_19
    const/16 v39, 0x1

    move/from16 v0, v27

    move/from16 v1, v39

    if-ne v0, v1, :cond_1b

    const-string v39, "Tethering"

    const-string v40, "ALARM_EXPIRE"

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v39, 0x1

    # setter for: Lcom/android/server/connectivity/Tethering;->bExpireAlarm:Z
    invoke-static/range {v39 .. v39}, Lcom/android/server/connectivity/Tethering;->access$2302(Z)Z

    const/16 v39, 0x0

    # setter for: Lcom/android/server/connectivity/Tethering;->bStartAlarm:Z
    invoke-static/range {v39 .. v39}, Lcom/android/server/connectivity/Tethering;->access$2402(Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v39, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;
    invoke-static/range {v39 .. v39}, Lcom/android/server/connectivity/Tethering;->access$200(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v39

    const-string/jumbo v40, "power"

    invoke-virtual/range {v39 .. v40}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Landroid/os/PowerManager;

    const/16 v39, 0x1

    const-string v40, "MobileAPCloseService"

    move-object/from16 v0, v30

    move/from16 v1, v39

    move-object/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v24

    :try_start_2
    invoke-virtual/range {v24 .. v24}, Landroid/os/PowerManager$WakeLock;->acquire()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v39, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;
    invoke-static/range {v39 .. v39}, Lcom/android/server/connectivity/Tethering;->access$200(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v39

    const-string/jumbo v40, "wifi"

    invoke-virtual/range {v39 .. v40}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Landroid/net/wifi/WifiManager;

    invoke-virtual/range {v38 .. v38}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v37

    const-string/jumbo v39, "wifi_ap_time_out_value"

    # getter for: Lcom/android/server/connectivity/Tethering;->defaultTimeoutValue:I
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$2200()I

    move-result v40

    move-object/from16 v0, v39

    move/from16 v1, v40

    invoke-static {v12, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v31

    const-string v39, "Tethering"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v41, "powermode_value = "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    # getter for: Lcom/android/server/connectivity/Tethering;->clients:I
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$1800()I

    move-result v39

    if-nez v39, :cond_1a

    const/16 v39, 0xd

    move/from16 v0, v37

    move/from16 v1, v39

    if-ne v0, v1, :cond_1a

    if-eqz v31, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v39, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;
    invoke-static/range {v39 .. v39}, Lcom/android/server/connectivity/Tethering;->access$200(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v39

    const-string v40, "connectivity"

    invoke-virtual/range {v39 .. v40}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/net/ConnectivityManager;

    const-string v39, "Tethering"

    const-string v40, "--> data disable"

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v39, "Tethering"

    const-string v40, "--> ap disable"

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v39, 0x0

    const/16 v40, 0x0

    invoke-virtual/range {v38 .. v40}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    :cond_1a
    if-eqz v24, :cond_0

    :try_start_3
    invoke-virtual/range {v24 .. v24}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    const/16 v24, 0x0

    goto/16 :goto_0

    :catch_1
    move-exception v13

    const-string v39, "Tethering"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "Cannot acquire wake lock ~~"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :catch_2
    move-exception v13

    const-string v39, "Tethering"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "Cannot release wake lock ~~"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_1b
    const/16 v39, 0x2

    move/from16 v0, v27

    move/from16 v1, v39

    if-ne v0, v1, :cond_0

    const-string v39, "Tethering"

    const-string v40, "ALARM_STOP"

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    # getter for: Lcom/android/server/connectivity/Tethering;->bExpireAlarm:Z
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$2300()Z

    move-result v39

    if-nez v39, :cond_0

    # getter for: Lcom/android/server/connectivity/Tethering;->bStartAlarm:Z
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$2400()Z

    move-result v39

    if-eqz v39, :cond_0

    new-instance v7, Landroid/content/Intent;

    const-string v39, "android.net.wifi.wifiap_power_mode_alarm"

    move-object/from16 v0, v39

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v39, "wifiap_power_mode_alarm_option"

    const/16 v40, 0x1

    move-object/from16 v0, v39

    move/from16 v1, v40

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v39, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;
    invoke-static/range {v39 .. v39}, Lcom/android/server/connectivity/Tethering;->access$200(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v39

    const/16 v40, 0x0

    const/high16 v41, 0x10000000

    move-object/from16 v0, v39

    move/from16 v1, v40

    move/from16 v2, v41

    invoke-static {v0, v1, v7, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v39, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;
    invoke-static/range {v39 .. v39}, Lcom/android/server/connectivity/Tethering;->access$200(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v39

    const-string v40, "alarm"

    invoke-virtual/range {v39 .. v40}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/AlarmManager;

    move-object/from16 v0, v28

    invoke-virtual {v8, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    const/16 v39, 0x0

    # setter for: Lcom/android/server/connectivity/Tethering;->bStartAlarm:Z
    invoke-static/range {v39 .. v39}, Lcom/android/server/connectivity/Tethering;->access$2402(Z)Z

    goto/16 :goto_0

    :cond_1c
    const-string v39, "android.net.wifi.wifiap_stand_by_mode_start"

    move-object/from16 v0, v39

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_1d

    const-string v39, "EVENT"

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    if-eqz v35, :cond_0

    const-string v39, "Tethering"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "[WIFI] onReceive() WIFIAP_STAND_BY_MODE_START intent, type of EVENT: "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v39, "no_data"

    move-object/from16 v0, v35

    move-object/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v39, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;
    invoke-static/range {v39 .. v39}, Lcom/android/server/connectivity/Tethering;->access$200(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v39

    const-string/jumbo v40, "wifi"

    invoke-virtual/range {v39 .. v40}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Landroid/net/wifi/WifiManager;

    const-string v39, "Tethering"

    const-string v40, "--> ap disable"

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v39, 0x0

    const/16 v40, 0x0

    invoke-virtual/range {v38 .. v40}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    goto/16 :goto_0

    :cond_1d
    const-string v39, "android.intent.action.BATTERY_CHANGED"

    move-object/from16 v0, v39

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_26

    const-string v39, "TMO"

    const-string v40, "TMO"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-nez v39, :cond_1e

    const-string v39, "NEWCO"

    const-string v40, "TMO"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_0

    :cond_1e
    const-string/jumbo v39, "level"

    const/16 v40, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v23

    const-string/jumbo v39, "plugged"

    const/16 v40, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v39

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v29

    const-string v39, "Tethering"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "BATTERY_CHANGED, level = "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    const-string/jumbo v41, "lowBatteryThreshold = "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    const/16 v41, 0xf

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v39, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->wifiTethered:Z
    invoke-static/range {v39 .. v39}, Lcom/android/server/connectivity/Tethering;->access$1100(Lcom/android/server/connectivity/Tethering;)Z

    move-result v39

    if-nez v39, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v39, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->wifiVendorTethered:Z
    invoke-static/range {v39 .. v39}, Lcom/android/server/connectivity/Tethering;->access$1500(Lcom/android/server/connectivity/Tethering;)Z

    move-result v39

    if-eqz v39, :cond_24

    :cond_1f
    const/16 v39, 0xf

    move/from16 v0, v23

    move/from16 v1, v39

    if-gt v0, v1, :cond_24

    if-nez v29, :cond_24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v39, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mLowBatteryNotification:Landroid/app/Notification;
    invoke-static/range {v39 .. v39}, Lcom/android/server/connectivity/Tethering;->access$2600(Lcom/android/server/connectivity/Tethering;)Landroid/app/Notification;

    move-result-object v39

    if-nez v39, :cond_24

    const-string v39, "Tethering"

    const-string/jumbo v40, "showLowBatteryNotification"

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v39, v0

    # invokes: Lcom/android/server/connectivity/Tethering;->showLowBatteryNotification()V
    invoke-static/range {v39 .. v39}, Lcom/android/server/connectivity/Tethering;->access$2700(Lcom/android/server/connectivity/Tethering;)V

    :cond_20
    :goto_4
    if-nez v29, :cond_21

    # getter for: Lcom/android/server/connectivity/Tethering;->mIsPlugged:Z
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$2900()Z

    move-result v39

    if-nez v39, :cond_22

    :cond_21
    if-eqz v29, :cond_0

    # getter for: Lcom/android/server/connectivity/Tethering;->mIsPlugged:Z
    invoke-static {}, Lcom/android/server/connectivity/Tethering;->access$2900()Z

    move-result v39

    if-nez v39, :cond_0

    :cond_22
    const-string/jumbo v39, "wifi_ap_plugged_type"

    move-object/from16 v0, v39

    move/from16 v1, v29

    invoke-static {v12, v0, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v16, Landroid/content/Intent;

    const-string v39, "com.samsung.settings.wifi.PLUG_STATE_CHANGED"

    move-object/from16 v0, v16

    move-object/from16 v1, v39

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v39, "wifiap_plug_state_changed_option"

    move-object/from16 v0, v16

    move-object/from16 v1, v39

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v39, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mIsBootComplete:Z
    invoke-static/range {v39 .. v39}, Lcom/android/server/connectivity/Tethering;->access$3000(Lcom/android/server/connectivity/Tethering;)Z

    move-result v39

    if-eqz v39, :cond_23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v39, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;
    invoke-static/range {v39 .. v39}, Lcom/android/server/connectivity/Tethering;->access$200(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendStickyBroadcast(Landroid/content/Intent;)V

    :cond_23
    if-nez v29, :cond_25

    const-string v39, "Tethering"

    const-string v40, "Unplugged"

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v39, 0x0

    # setter for: Lcom/android/server/connectivity/Tethering;->mIsPlugged:Z
    invoke-static/range {v39 .. v39}, Lcom/android/server/connectivity/Tethering;->access$2902(Z)Z

    goto/16 :goto_0

    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v39, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mLowBatteryNotification:Landroid/app/Notification;
    invoke-static/range {v39 .. v39}, Lcom/android/server/connectivity/Tethering;->access$2600(Lcom/android/server/connectivity/Tethering;)Landroid/app/Notification;

    move-result-object v39

    if-eqz v39, :cond_20

    const-string v39, "Tethering"

    const-string v40, "clearLowBatteryNotification"

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v39, v0

    # invokes: Lcom/android/server/connectivity/Tethering;->clearLowBatteryNotification()V
    invoke-static/range {v39 .. v39}, Lcom/android/server/connectivity/Tethering;->access$2800(Lcom/android/server/connectivity/Tethering;)V

    goto :goto_4

    :cond_25
    const-string v39, "Tethering"

    const-string v40, "Plugged"

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v39, 0x1

    # setter for: Lcom/android/server/connectivity/Tethering;->mIsPlugged:Z
    invoke-static/range {v39 .. v39}, Lcom/android/server/connectivity/Tethering;->access$2902(Z)Z

    goto/16 :goto_0

    :cond_26
    const-string v39, "android.intent.action.BOOT_COMPLETED"

    move-object/from16 v0, v39

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_29

    const-string v39, "Tethering"

    const-string v40, "Boot complete."

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v39, v0

    const/16 v40, 0x1

    # setter for: Lcom/android/server/connectivity/Tethering;->mIsBootComplete:Z
    invoke-static/range {v39 .. v40}, Lcom/android/server/connectivity/Tethering;->access$3002(Lcom/android/server/connectivity/Tethering;Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v39, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mKnoxCustomSystemManager:Landroid/app/enterprise/knoxcustom/SystemManager;
    invoke-static/range {v39 .. v39}, Lcom/android/server/connectivity/Tethering;->access$3100(Lcom/android/server/connectivity/Tethering;)Landroid/app/enterprise/knoxcustom/SystemManager;

    move-result-object v39

    if-nez v39, :cond_27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v39, v0

    invoke-static {}, Landroid/app/enterprise/knoxcustom/SystemManager;->getInstance()Landroid/app/enterprise/knoxcustom/SystemManager;

    move-result-object v40

    # setter for: Lcom/android/server/connectivity/Tethering;->mKnoxCustomSystemManager:Landroid/app/enterprise/knoxcustom/SystemManager;
    invoke-static/range {v39 .. v40}, Lcom/android/server/connectivity/Tethering;->access$3102(Lcom/android/server/connectivity/Tethering;Landroid/app/enterprise/knoxcustom/SystemManager;)Landroid/app/enterprise/knoxcustom/SystemManager;

    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v39, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mKnoxCustomSystemManager:Landroid/app/enterprise/knoxcustom/SystemManager;
    invoke-static/range {v39 .. v39}, Lcom/android/server/connectivity/Tethering;->access$3100(Lcom/android/server/connectivity/Tethering;)Landroid/app/enterprise/knoxcustom/SystemManager;

    move-result-object v39

    if-eqz v39, :cond_28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v39, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mKnoxCustomSystemManager:Landroid/app/enterprise/knoxcustom/SystemManager;
    invoke-static/range {v39 .. v39}, Lcom/android/server/connectivity/Tethering;->access$3100(Lcom/android/server/connectivity/Tethering;)Landroid/app/enterprise/knoxcustom/SystemManager;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Landroid/app/enterprise/knoxcustom/SystemManager;->getUsbNetState()Z

    move-result v39

    if-eqz v39, :cond_28

    const-string v39, "adb_enabled"

    const/16 v40, 0x0

    move-object/from16 v0, v39

    move/from16 v1, v40

    invoke-static {v12, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v39

    if-nez v39, :cond_28

    const-string v39, "Tethering"

    const-string v40, "Activate USB Net on boot up"

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v39, v0

    const/16 v40, 0x1

    invoke-virtual/range {v39 .. v40}, Lcom/android/server/connectivity/Tethering;->setUsbTethering(Z)I

    goto/16 :goto_0

    :cond_28
    const-string v39, "enabled"

    const-string v40, "TETHER_ALWAYS_ON_MODE"

    move-object/from16 v0, v40

    invoke-static {v12, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_0

    const-string v39, "Tethering"

    const-string v40, "[Tethering always mode] call setUsbTethering()"

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v39, "net.tether.always"

    const-string v40, "1"

    invoke-static/range {v39 .. v40}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v39, v0

    const/16 v40, 0x1

    invoke-virtual/range {v39 .. v40}, Lcom/android/server/connectivity/Tethering;->setUsbTethering(Z)I

    goto/16 :goto_0

    :cond_29
    const-string v39, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    move-object/from16 v0, v39

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_2c

    const-string v39, "Tethering"

    const-string v40, "[ActiveSync] onReceive() ACTION_DEVICE_POLICY_MANAGER_STATE_CHANGED intent"

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v39, v0

    # invokes: Lcom/android/server/connectivity/Tethering;->isInternetSharingBlockedByActiveSync()Z
    invoke-static/range {v39 .. v39}, Lcom/android/server/connectivity/Tethering;->access$3200(Lcom/android/server/connectivity/Tethering;)Z

    move-result v39

    if-eqz v39, :cond_2b

    const-string v39, "Tethering"

    const-string v40, "[ActiveSync] onReceive() Internet sharing has banned due to security policy."

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v39, "network_management"

    invoke-static/range {v39 .. v39}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v11

    invoke-static {v11}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v32

    const/16 v39, 0x0

    move/from16 v0, v39

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    :try_start_4
    invoke-interface/range {v32 .. v32}, Landroid/os/INetworkManagementService;->listInterfaces()[Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    move-result-object v20

    move-object/from16 v10, v20

    array-length v0, v10

    move/from16 v21, v0

    const/16 v17, 0x0

    :goto_5
    move/from16 v0, v17

    move/from16 v1, v21

    if-ge v0, v1, :cond_0

    aget-object v19, v10, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    move-object/from16 v1, v19

    # invokes: Lcom/android/server/connectivity/Tethering;->isUsb(Ljava/lang/String;)Z
    invoke-static {v0, v1}, Lcom/android/server/connectivity/Tethering;->access$3300(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;)Z

    move-result v39

    if-eqz v39, :cond_2a

    const-string v39, "Tethering"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "[ActiveSync] onReceive() Internet sharing is banned on "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v39, v0

    # getter for: Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;
    invoke-static/range {v39 .. v39}, Lcom/android/server/connectivity/Tethering;->access$3400(Lcom/android/server/connectivity/Tethering;)Ljava/util/HashMap;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    if-eqz v33, :cond_2a

    invoke-virtual/range {v33 .. v33}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->isTethered()Z

    move-result v39

    if-eqz v39, :cond_2a

    const-string v39, "Tethering"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "[ActiveSync] onReceive() Untether on "

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$StateReceiver;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    move-object/from16 v1, v19

    # invokes: Lcom/android/server/connectivity/Tethering;->blockInternetSharingByActiveSync(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/server/connectivity/Tethering;->access$3500(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;)V

    :cond_2a
    add-int/lit8 v17, v17, 0x1

    goto :goto_5

    :catch_3
    move-exception v13

    const-string v39, "Tethering"

    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    const-string v41, "[ActiveSync] onReceive() Error listing Interfaces :"

    invoke-virtual/range {v40 .. v41}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v40

    move-object/from16 v0, v40

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v40

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v40

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_2b
    const-string v39, "Tethering"

    const-string v40, "[ActiveSync] onReceive() Internet sharing is NOT banned any more."

    invoke-static/range {v39 .. v40}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_2c
    const-string v39, "com.samsung.android.intent.action.TETHERING_DENIED"

    move-object/from16 v0, v39

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v39

    if-eqz v39, :cond_0

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

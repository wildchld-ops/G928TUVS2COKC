.class Lcom/sec/android/cover/monitor/CoverUpdateMonitor$3;
.super Landroid/content/BroadcastReceiver;
.source "CoverUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/monitor/CoverUpdateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;


# direct methods
.method constructor <init>(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$3;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 15

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v11, "CoverUpdateMonitor"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "received broadcast "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v11, "android.intent.action.TIME_TICK"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    const-string v11, "android.intent.action.TIME_SET"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    const-string v11, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    const-string v11, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    :cond_0
    iget-object v11, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$3;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    # getter for: Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->access$000(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)Landroid/os/Handler;

    move-result-object v11

    const/16 v12, 0x12d

    invoke-virtual {v11, v12}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v11, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    iget-object v11, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$3;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    # getter for: Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->access$000(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)Landroid/os/Handler;

    move-result-object v11

    const/16 v12, 0x12e

    new-instance v13, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;

    iget-object v14, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$3;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-object/from16 v0, p2

    invoke-direct {v13, v14, v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$BatteryStatus;-><init>(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;Landroid/content/Intent;)V

    invoke-virtual {v11, v12, v13}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    iget-object v11, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$3;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    # getter for: Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->access$000(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)Landroid/os/Handler;

    move-result-object v11

    invoke-virtual {v11, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_3
    const-string v11, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    iget-object v11, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$3;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    # getter for: Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->access$000(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)Landroid/os/Handler;

    move-result-object v11

    const/16 v12, 0x130

    invoke-virtual {v11, v12}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_4
    const-string v11, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    iget-object v11, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$3;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    # getter for: Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->access$000(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)Landroid/os/Handler;

    move-result-object v11

    const/16 v12, 0x131

    invoke-virtual {v11, v12}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_5
    const-string v11, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    iget-object v11, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$3;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    # getter for: Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->access$000(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)Landroid/os/Handler;

    move-result-object v11

    const/16 v12, 0x132

    invoke-virtual {v11, v12}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_6
    const-string v11, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_7

    const-string v11, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    :cond_7
    iget-object v11, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$3;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    # getter for: Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->access$000(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)Landroid/os/Handler;

    move-result-object v11

    const/16 v12, 0x133

    const-string v13, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    iget-object v11, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$3;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    # getter for: Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->access$000(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)Landroid/os/Handler;

    move-result-object v11

    invoke-virtual {v11, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_8
    const-string v11, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_9

    iget-object v11, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$3;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    # getter for: Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->access$000(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)Landroid/os/Handler;

    move-result-object v11

    const/16 v12, 0x134

    invoke-virtual {v11, v12}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :cond_9
    const-string v11, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    iget-object v11, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$3;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    # getter for: Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->access$000(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)Landroid/os/Handler;

    move-result-object v11

    const/16 v12, 0x135

    invoke-virtual {v11, v12}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :cond_a
    const-string v11, "com.samsung.cover.REMOTEVIEWS_UPDATE"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    iget-object v11, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$3;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    # getter for: Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->access$000(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)Landroid/os/Handler;

    move-result-object v11

    const/16 v12, 0x136

    new-instance v13, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;

    iget-object v14, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$3;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-object/from16 v0, p2

    invoke-direct {v13, v14, v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$RemoteViewInfo;-><init>(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;Landroid/content/Intent;)V

    invoke-virtual {v11, v12, v13}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    iget-object v11, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$3;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    # getter for: Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->access$000(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)Landroid/os/Handler;

    move-result-object v11

    invoke-virtual {v11, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_b
    const-string v11, "com.samsung.accessory.intent.action.DISASTER_SVIEW_COVER"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_c

    const-string v11, "title"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iget-object v11, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$3;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    # getter for: Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->access$000(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)Landroid/os/Handler;

    move-result-object v11

    const/16 v12, 0x137

    invoke-virtual {v11, v12, v10}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    iget-object v11, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$3;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    # getter for: Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->access$000(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)Landroid/os/Handler;

    move-result-object v11

    invoke-virtual {v11, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_c
    const-string v11, "android.settings.POWERSAVINGMODE_CHANGED"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_d

    const-string v11, "android.settings.POWERSAVING_MODE_SWITCH_CHANGED"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e

    :cond_d
    iget-object v11, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$3;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    # getter for: Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->access$000(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)Landroid/os/Handler;

    move-result-object v11

    const/16 v12, 0x138

    invoke-virtual {v11, v12}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :cond_e
    const-string v11, "com.samsung.pen.INSERT"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_f

    const-string v11, "penInsert"

    const/4 v12, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    iget-object v11, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$3;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    # getter for: Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->access$000(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)Landroid/os/Handler;

    move-result-object v11

    const/16 v12, 0x139

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    iget-object v11, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$3;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    # getter for: Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->access$000(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)Landroid/os/Handler;

    move-result-object v11

    invoke-virtual {v11, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_f
    const-string v11, "com.sec.android.sviewcover.CHANGE_COVER_BACKGROUND"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_10

    const-string v11, "com.sec.android.sviewcover.CHANGE_MINI_COVER_BACKGROUND"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_11

    :cond_10
    iget-object v11, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$3;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    # getter for: Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->access$000(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)Landroid/os/Handler;

    move-result-object v11

    const/16 v12, 0x13a

    invoke-virtual {v11, v12}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :cond_11
    const-string v11, "com.bst.floatingmsg.quicktalkshow"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_12

    iget-object v11, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$3;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    # getter for: Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->access$000(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)Landroid/os/Handler;

    move-result-object v11

    const/16 v12, 0x13b

    invoke-virtual {v11, v12}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :cond_12
    const-string v11, "com.bst.floatingmsg.quicktalkhide"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_13

    iget-object v11, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$3;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    # getter for: Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->access$000(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)Landroid/os/Handler;

    move-result-object v11

    const/16 v12, 0x13c

    invoke-virtual {v11, v12}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :cond_13
    const-string v11, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_14

    iget-object v11, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$3;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    # getter for: Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->access$000(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)Landroid/os/Handler;

    move-result-object v11

    const/16 v12, 0x13d

    invoke-virtual {v11, v12}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :cond_14
    const-string v11, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_15

    const-string v11, "android.intent.extra.user_handle"

    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const-string v11, "old_user_id"

    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    iget-object v11, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$3;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    # getter for: Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->access$000(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)Landroid/os/Handler;

    move-result-object v11

    const/16 v12, 0x13e

    invoke-virtual {v11, v12}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    iput v5, v4, Landroid/os/Message;->arg1:I

    iput v6, v4, Landroid/os/Message;->arg2:I

    iget-object v11, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$3;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    # getter for: Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->access$000(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)Landroid/os/Handler;

    move-result-object v11

    invoke-virtual {v11, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_15
    const-string v11, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_16

    iget-object v11, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$3;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    # getter for: Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->access$000(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)Landroid/os/Handler;

    move-result-object v11

    const/16 v12, 0x140

    invoke-virtual {v11, v12}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :cond_16
    const-string v11, "clock.date_format_changed"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_17

    iget-object v11, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$3;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    # getter for: Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->access$000(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)Landroid/os/Handler;

    move-result-object v11

    const/16 v12, 0x142

    invoke-virtual {v11, v12}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :cond_17
    const-string v11, "com.bst.action.PICKUP_FESTIVAL"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_18

    const-string v11, "festivalString"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v11, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$3;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    # getter for: Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->access$000(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)Landroid/os/Handler;

    move-result-object v11

    const/16 v12, 0x143

    invoke-virtual {v11, v12, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    iget-object v11, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$3;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    # getter for: Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->access$000(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)Landroid/os/Handler;

    move-result-object v11

    invoke-virtual {v11, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_18
    const-string v11, "com.bst.action.PICKUP_COMMON"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_19

    iget-object v11, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$3;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    # getter for: Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->access$000(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)Landroid/os/Handler;

    move-result-object v11

    const/16 v12, 0x144

    invoke-virtual {v11, v12}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :cond_19
    const-string v11, "dualclock.homecity_timezone"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1a

    iget-object v11, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$3;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    # getter for: Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->access$000(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)Landroid/os/Handler;

    move-result-object v11

    const/16 v12, 0x12f

    invoke-virtual {v11, v12}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :cond_1a
    const-string v11, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1b

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v7

    iget-object v11, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$3;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    # getter for: Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->access$000(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)Landroid/os/Handler;

    move-result-object v11

    const/16 v12, 0x145

    invoke-virtual {v11, v12, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    iget-object v11, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$3;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    # getter for: Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->access$000(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)Landroid/os/Handler;

    move-result-object v11

    invoke-virtual {v11, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_1b
    const-string v11, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1c

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v7

    iget-object v11, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$3;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    # getter for: Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->access$000(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)Landroid/os/Handler;

    move-result-object v11

    const/16 v12, 0x146

    invoke-virtual {v11, v12, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    iget-object v11, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$3;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    # getter for: Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->access$000(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)Landroid/os/Handler;

    move-result-object v11

    invoke-virtual {v11, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_1c
    const-string v11, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1d

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v7

    iget-object v11, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$3;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    # getter for: Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->access$000(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)Landroid/os/Handler;

    move-result-object v11

    const/16 v12, 0x147

    invoke-virtual {v11, v12, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    iget-object v11, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$3;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    # getter for: Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->access$000(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)Landroid/os/Handler;

    move-result-object v11

    invoke-virtual {v11, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_1d
    const-string v11, "FONT_THEME_CHANGED"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1e

    const-string v11, "clock"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v11, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$3;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    # getter for: Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->access$000(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)Landroid/os/Handler;

    move-result-object v11

    const/16 v12, 0x148

    invoke-virtual {v11, v12, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    iget-object v11, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$3;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    # getter for: Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->access$000(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)Landroid/os/Handler;

    move-result-object v11

    invoke-virtual {v11, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_1e
    const-string v11, "com.samsung.cover.DELAYED_TIMEOUT"

    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1f

    const-string v11, "seq"

    const/4 v12, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    iget-object v11, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$3;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    # getter for: Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->access$000(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)Landroid/os/Handler;

    move-result-object v11

    const/16 v12, 0x149

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v9, v13}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    iget-object v11, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$3;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    # getter for: Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->access$000(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)Landroid/os/Handler;

    move-result-object v11

    invoke-virtual {v11, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_1f
    const-string v11, "com.samsung.android.theme.themecenter.THEME_APPLY"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_20

    iget-object v11, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$3;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    const-string v12, "packageName"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    # setter for: Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCurrentThemePkgName:Ljava/lang/String;
    invoke-static {v11, v12}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->access$3302(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;Ljava/lang/String;)Ljava/lang/String;

    iget-object v11, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$3;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    # getter for: Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->access$000(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)Landroid/os/Handler;

    move-result-object v11

    const/16 v12, 0x14a

    iget-object v13, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$3;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    # getter for: Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mCurrentThemePkgName:Ljava/lang/String;
    invoke-static {v13}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->access$3300(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    iget-object v11, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$3;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    # getter for: Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->access$000(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)Landroid/os/Handler;

    move-result-object v11

    invoke-virtual {v11, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_20
    const-string v11, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    iget-object v11, p0, Lcom/sec/android/cover/monitor/CoverUpdateMonitor$3;->this$0:Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    # getter for: Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->mHandler:Landroid/os/Handler;
    invoke-static {v11}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->access$000(Lcom/sec/android/cover/monitor/CoverUpdateMonitor;)Landroid/os/Handler;

    move-result-object v11

    const/16 v12, 0x14c

    invoke-virtual {v11, v12}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0
.end method

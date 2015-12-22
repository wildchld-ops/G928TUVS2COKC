.class Lcom/android/systemui/statusbar/phone/PhoneStatusBar$52;
.super Landroid/content/BroadcastReceiver;
.source "PhoneStatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$52;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 15

    sget-boolean v9, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->DEBUG:Z

    if-eqz v9, :cond_0

    const-string v9, "PhoneStatusBar"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onReceive: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v9, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    const/4 v5, 0x0

    const-string v9, "reason"

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    const-string v9, "recentapps"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    or-int/lit8 v5, v5, 0x2

    :cond_1
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$52;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v9, v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateCollapsePanels(I)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    const-string v9, "com.android.systemui.demo"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_2

    const-string v9, "command"

    const-string v10, ""

    invoke-virtual {v3, v9, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_2

    :try_start_0
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$52;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v9, v4, v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->dispatchDemoCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v8

    const-string v9, "PhoneStatusBar"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Error running demo command, intent="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_4
    const-string v9, "fake_artwork"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    const-string v9, "com.sec.android.sconnect.service.ENABLED"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    const-string v9, "PhoneStatusBar"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onReceive: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "mQconnectEnable = true"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$52;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const/4 v10, 0x1

    # setter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mQconnectEnable:Z
    invoke-static {v9, v10}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$14202(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$52;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->showHideQConnectLayout()V

    goto/16 :goto_0

    :cond_5
    const-string v9, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    const-string v9, "PhoneStatusBar"

    const-string v10, "onReceive : ACTION_SHUTDOWN"

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$52;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const/4 v10, 0x1

    iput-boolean v10, v9, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsShutingdown:Z

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$52;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v9, v9, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCoverState:Lcom/samsung/android/cover/CoverState;

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$52;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v9, v9, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCoverLauncher:Lcom/android/systemui/cover/SViewCoverLauncher;

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$52;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$52;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v10, v10, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mCoverState:Lcom/samsung/android/cover/CoverState;

    invoke-virtual {v9, v10}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateCoverState(Lcom/samsung/android/cover/CoverState;)V

    goto/16 :goto_0

    :cond_6
    const-string v9, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$52;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const-string v10, "level"

    const/4 v11, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    # setter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBatteryLevel:I
    invoke-static {v9, v10}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$14302(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;I)I

    const-string v9, "status"

    const/4 v10, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$52;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBrightnessEnablebyBattery:Z
    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$14400(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z

    move-result v6

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$52;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBatteryLevel:I
    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$14300(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)I

    move-result v9

    if-nez v9, :cond_9

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$52;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mEmergencyModeActivated:Z
    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$9700(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z

    move-result v9

    if-eqz v9, :cond_9

    const-string v9, "PhoneStatusBar"

    const-string v10, "Battery level does not show the level for 0% in upsm and emergency mode"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$52;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBatteryText:Landroid/widget/TextView;
    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$14500(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/widget/TextView;

    move-result-object v9

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$52;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v10, v10, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    const v11, 0x7f0d0231

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$52;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardBatteryText:Landroid/widget/TextView;
    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$14600(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/widget/TextView;

    move-result-object v9

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$52;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v10, v10, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    const v11, 0x7f0d0231

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$52;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBatteryLevel:I
    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$14300(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)I

    move-result v9

    const/4 v10, 0x5

    if-gt v9, v10, :cond_7

    const/4 v9, 0x2

    if-ne v2, v9, :cond_8

    :cond_7
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$52;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBatteryLevel:I
    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$14300(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)I

    move-result v9

    const/4 v10, 0x1

    if-gt v9, v10, :cond_a

    sget-boolean v9, Lcom/android/systemui/statusbar/Feature;->mHideBrightnessOnCriticalBatteryLevel:Z

    if-eqz v9, :cond_a

    :cond_8
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$52;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const/4 v10, 0x0

    # setter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBrightnessEnablebyBattery:Z
    invoke-static {v9, v10}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$14402(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z

    :goto_2
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$52;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBrightnessEnablebyBattery:Z
    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$14400(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z

    move-result v9

    if-eq v6, v9, :cond_2

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$52;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v9, v9, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mNotificationPanel:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-boolean v9, v9, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsFullyOpened:Z

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$52;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setBrightnessControllerVisivility()V

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$52;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateQSpanelHeight()V

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$52;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->showHideQConnectLayout()V

    goto/16 :goto_0

    :cond_9
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$52;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBatteryText:Landroid/widget/TextView;
    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$14500(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/widget/TextView;

    move-result-object v9

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$52;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v10, v10, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    const v11, 0x7f0d0231

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    iget-object v14, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$52;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBatteryLevel:I
    invoke-static {v14}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$14300(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$52;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mKeyguardBatteryText:Landroid/widget/TextView;
    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$14600(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Landroid/widget/TextView;

    move-result-object v9

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$52;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v10, v10, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mContext:Landroid/content/Context;

    const v11, 0x7f0d0231

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    iget-object v14, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$52;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # getter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBatteryLevel:I
    invoke-static {v14}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$14300(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v10, v11, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_a
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$52;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const/4 v10, 0x1

    # setter for: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mBrightnessEnablebyBattery:Z
    invoke-static {v9, v10}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$14402(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Z)Z

    goto :goto_2

    :cond_b
    const-string v9, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_c

    const-string v9, "com.samsung.settings.SIMCARD_MGT_ACTIVATED"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_c

    const-string v9, "android.intent.action.QCOMHOTSWAP"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_e

    :cond_c
    const-string v9, "PhoneStatusBar"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onReceive : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v9, "PhoneStatusBar"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onReceive : getReadySimCount() = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$52;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # invokes: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getReadySimCount()I
    invoke-static {v11}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$14700(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$52;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # invokes: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isMSim()Z
    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$14800(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z

    move-result v9

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$52;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # invokes: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getNumberOfActiveSim()I
    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$14900(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_d

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$52;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # invokes: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->showHideMultiSIMLayout()V
    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$15000(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    :cond_d
    sget-boolean v9, Lcom/android/systemui/statusbar/Feature;->CHN:Z

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$52;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # invokes: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateClusterMagin()V
    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$15100(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    goto/16 :goto_0

    :cond_e
    const-string v9, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$52;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # invokes: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isMSim()Z
    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$15200(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Z

    move-result v9

    if-eqz v9, :cond_2

    sget-boolean v9, Lcom/android/systemui/statusbar/Feature;->CHN:Z

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar$52;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    # invokes: Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->updateClusterMagin()V
    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->access$15100(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    goto/16 :goto_0
.end method

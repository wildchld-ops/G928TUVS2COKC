.class final Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "PowerNotificationWarnings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/power/PowerNotificationWarnings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Receiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/power/PowerNotificationWarnings;


# direct methods
.method private constructor <init>(Lcom/android/systemui/power/PowerNotificationWarnings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/power/PowerNotificationWarnings;Lcom/android/systemui/power/PowerNotificationWarnings$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;-><init>(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    return-void
.end method


# virtual methods
.method public init()V
    .locals 4

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "PNW.batterySettings"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "PNW.startSaver"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "PNW.stopSaver"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "PNW.dismissedWarning"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.cover.REQUEST_REMOTEVIEWS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.systemui.power.action.ACTION_BATTERY_LOW_CLOSE_BUTTON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.android.systemui.power.action.ACTION_BATTERY_LOW_COCKTAIL_BUTTON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.android.systemui.power.action.ACTION_BATTERY_LOW_COCKTAIL_TOUCH"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    # getter for: Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/systemui/power/PowerNotificationWarnings;->access$100(Lcom/android/systemui/power/PowerNotificationWarnings;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    # getter for: Lcom/android/systemui/power/PowerNotificationWarnings;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/android/systemui/power/PowerNotificationWarnings;->access$300(Lcom/android/systemui/power/PowerNotificationWarnings;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v1, p0, v0, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    const/4 v8, 0x2

    const/4 v7, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v4, "PowerUI.Notification"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "PNW.batterySettings"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    # getter for: Lcom/android/systemui/power/PowerNotificationWarnings;->mCurrentBatteryMode:I
    invoke-static {v4}, Lcom/android/systemui/power/PowerNotificationWarnings;->access$400(Lcom/android/systemui/power/PowerNotificationWarnings;)I

    move-result v4

    if-ne v4, v8, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    # invokes: Lcom/android/systemui/power/PowerNotificationWarnings;->dismissLowBatteryWarningNotification()V
    invoke-static {v4}, Lcom/android/systemui/power/PowerNotificationWarnings;->access$500(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    # invokes: Lcom/android/systemui/power/PowerNotificationWarnings;->isUseGEDBattery()Z
    invoke-static {v4}, Lcom/android/systemui/power/PowerNotificationWarnings;->access$600(Lcom/android/systemui/power/PowerNotificationWarnings;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    # getter for: Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/systemui/power/PowerNotificationWarnings;->access$100(Lcom/android/systemui/power/PowerNotificationWarnings;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    # getter for: Lcom/android/systemui/power/PowerNotificationWarnings;->mOpenBatterySettings:Landroid/content/Intent;
    invoke-static {v5}, Lcom/android/systemui/power/PowerNotificationWarnings;->access$700(Lcom/android/systemui/power/PowerNotificationWarnings;)Landroid/content/Intent;

    move-result-object v5

    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v4, "PowerUI.Notification"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "showPowersavingmodeNotice : Exception = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    # getter for: Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/systemui/power/PowerNotificationWarnings;->access$100(Lcom/android/systemui/power/PowerNotificationWarnings;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    # getter for: Lcom/android/systemui/power/PowerNotificationWarnings;->mSmartManagerBatterySettings:Landroid/content/Intent;
    invoke-static {v5}, Lcom/android/systemui/power/PowerNotificationWarnings;->access$800(Lcom/android/systemui/power/PowerNotificationWarnings;)Landroid/content/Intent;

    move-result-object v5

    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_3
    const-string v4, "PNW.startSaver"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    # invokes: Lcom/android/systemui/power/PowerNotificationWarnings;->dismissLowBatteryWarningNotification()V
    invoke-static {v4}, Lcom/android/systemui/power/PowerNotificationWarnings;->access$500(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    # invokes: Lcom/android/systemui/power/PowerNotificationWarnings;->showStartSaverConfirmation()V
    invoke-static {v4}, Lcom/android/systemui/power/PowerNotificationWarnings;->access$900(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    goto :goto_0

    :cond_4
    const-string v4, "PNW.stopSaver"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    # invokes: Lcom/android/systemui/power/PowerNotificationWarnings;->dismissSaverNotification()V
    invoke-static {v4}, Lcom/android/systemui/power/PowerNotificationWarnings;->access$1000(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    # invokes: Lcom/android/systemui/power/PowerNotificationWarnings;->dismissLowBatteryWarningNotification()V
    invoke-static {v4}, Lcom/android/systemui/power/PowerNotificationWarnings;->access$500(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    # invokes: Lcom/android/systemui/power/PowerNotificationWarnings;->setSaverMode(Z)V
    invoke-static {v4, v7}, Lcom/android/systemui/power/PowerNotificationWarnings;->access$1100(Lcom/android/systemui/power/PowerNotificationWarnings;Z)V

    goto :goto_0

    :cond_5
    const-string v4, "PNW.dismissedWarning"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-virtual {v4}, Lcom/android/systemui/power/PowerNotificationWarnings;->dismissLowBatteryWarning()V

    goto/16 :goto_0

    :cond_6
    const-string v4, "com.samsung.cover.REQUEST_REMOTEVIEWS"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    # getter for: Lcom/android/systemui/power/PowerNotificationWarnings;->mLowBatteryWarning:Z
    invoke-static {v4}, Lcom/android/systemui/power/PowerNotificationWarnings;->access$1200(Lcom/android/systemui/power/PowerNotificationWarnings;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "PowerUI.Notification"

    const-string v5, "Request Remoteviews so update cover low battery"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    # invokes: Lcom/android/systemui/power/PowerNotificationWarnings;->updateCoverLowBatteryWarning()V
    invoke-static {v4}, Lcom/android/systemui/power/PowerNotificationWarnings;->access$1300(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    goto/16 :goto_0

    :cond_7
    const-string v4, "com.samsung.systemui.power.action.ACTION_BATTERY_LOW_CLOSE_BUTTON"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    # invokes: Lcom/android/systemui/power/PowerNotificationWarnings;->dismissLowBatteryWarningNotification()V
    invoke-static {v4}, Lcom/android/systemui/power/PowerNotificationWarnings;->access$500(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    goto/16 :goto_0

    :cond_8
    const-string v4, "com.android.systemui.power.action.ACTION_BATTERY_LOW_COCKTAIL_BUTTON"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    # invokes: Lcom/android/systemui/power/PowerNotificationWarnings;->dismissLowBatteryWarningNotification()V
    invoke-static {v4}, Lcom/android/systemui/power/PowerNotificationWarnings;->access$500(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    goto/16 :goto_0

    :cond_9
    const-string v4, "com.android.systemui.power.action.ACTION_BATTERY_LOW_COCKTAIL_TOUCH"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    # invokes: Lcom/android/systemui/power/PowerNotificationWarnings;->dismissLowBatteryWarningNotification()V
    invoke-static {v4}, Lcom/android/systemui/power/PowerNotificationWarnings;->access$500(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    goto/16 :goto_0

    :cond_a
    const-string v4, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    # getter for: Lcom/android/systemui/power/PowerNotificationWarnings;->mCurrentBatteryMode:I
    invoke-static {v4}, Lcom/android/systemui/power/PowerNotificationWarnings;->access$400(Lcom/android/systemui/power/PowerNotificationWarnings;)I

    move-result v2

    const-string v4, "reason"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_b

    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    # setter for: Lcom/android/systemui/power/PowerNotificationWarnings;->mCurrentBatteryMode:I
    invoke-static {v4, v8}, Lcom/android/systemui/power/PowerNotificationWarnings;->access$402(Lcom/android/systemui/power/PowerNotificationWarnings;I)I

    goto/16 :goto_0

    :cond_b
    const/4 v4, 0x5

    if-ne v3, v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/power/PowerNotificationWarnings$Receiver;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    # setter for: Lcom/android/systemui/power/PowerNotificationWarnings;->mCurrentBatteryMode:I
    invoke-static {v4, v7}, Lcom/android/systemui/power/PowerNotificationWarnings;->access$402(Lcom/android/systemui/power/PowerNotificationWarnings;I)I

    goto/16 :goto_0
.end method

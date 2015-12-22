.class Lcom/android/keyguard/sec/AdaptiveEventManager$3;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "AdaptiveEventManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/AdaptiveEventManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/AdaptiveEventManager;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/AdaptiveEventManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$3;->this$0:Lcom/android/keyguard/sec/AdaptiveEventManager;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBootCompleted()V
    .locals 4

    iget-object v2, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$3;->this$0:Lcom/android/keyguard/sec/AdaptiveEventManager;

    # getter for: Lcom/android/keyguard/sec/AdaptiveEventManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/keyguard/sec/AdaptiveEventManager;->access$600(Lcom/android/keyguard/sec/AdaptiveEventManager;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isShowInformation(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$3;->this$0:Lcom/android/keyguard/sec/AdaptiveEventManager;

    # getter for: Lcom/android/keyguard/sec/AdaptiveEventManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/keyguard/sec/AdaptiveEventManager;->access$600(Lcom/android/keyguard/sec/AdaptiveEventManager;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isAdditionalWeatherEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$3;->this$0:Lcom/android/keyguard/sec/AdaptiveEventManager;

    iget-object v3, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$3;->this$0:Lcom/android/keyguard/sec/AdaptiveEventManager;

    # getter for: Lcom/android/keyguard/sec/AdaptiveEventManager;->mCurrentUserId:I
    invoke-static {v3}, Lcom/android/keyguard/sec/AdaptiveEventManager;->access$700(Lcom/android/keyguard/sec/AdaptiveEventManager;)I

    move-result v3

    # invokes: Lcom/android/keyguard/sec/AdaptiveEventManager;->sendWeatherTriggerBroadcast(I)V
    invoke-static {v2, v3}, Lcom/android/keyguard/sec/AdaptiveEventManager;->access$800(Lcom/android/keyguard/sec/AdaptiveEventManager;I)V

    const-string v2, "AdaptiveEventManager"

    const-string v3, "SendBroadcast() from Keyguard BootCompleted() Callback to Weather Deamon"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onUserSwitchComplete(I)V
    .locals 12

    const/4 v4, 0x0

    const/4 v8, 0x1

    const/4 v11, 0x0

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$3;->this$0:Lcom/android/keyguard/sec/AdaptiveEventManager;

    # getter for: Lcom/android/keyguard/sec/AdaptiveEventManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/keyguard/sec/AdaptiveEventManager;->access$600(Lcom/android/keyguard/sec/AdaptiveEventManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v9

    invoke-virtual {v9, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v10

    if-eqz v10, :cond_1

    invoke-virtual {v10}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v6

    :goto_0
    if-eqz v6, :cond_2

    const-string v0, "AdaptiveEventManager"

    const-string v1, "Skip onUserSwitchComplete logic"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v6, v11

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$3;->this$0:Lcom/android/keyguard/sec/AdaptiveEventManager;

    # getter for: Lcom/android/keyguard/sec/AdaptiveEventManager;->mRegistered:Z
    invoke-static {v0}, Lcom/android/keyguard/sec/AdaptiveEventManager;->access$900(Lcom/android/keyguard/sec/AdaptiveEventManager;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$3;->this$0:Lcom/android/keyguard/sec/AdaptiveEventManager;

    # getter for: Lcom/android/keyguard/sec/AdaptiveEventManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/keyguard/sec/AdaptiveEventManager;->access$600(Lcom/android/keyguard/sec/AdaptiveEventManager;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$3;->this$0:Lcom/android/keyguard/sec/AdaptiveEventManager;

    # getter for: Lcom/android/keyguard/sec/AdaptiveEventManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v1}, Lcom/android/keyguard/sec/AdaptiveEventManager;->access$1000(Lcom/android/keyguard/sec/AdaptiveEventManager;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$3;->this$0:Lcom/android/keyguard/sec/AdaptiveEventManager;

    # setter for: Lcom/android/keyguard/sec/AdaptiveEventManager;->mRegistered:Z
    invoke-static {v0, v11}, Lcom/android/keyguard/sec/AdaptiveEventManager;->access$902(Lcom/android/keyguard/sec/AdaptiveEventManager;Z)Z

    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$3;->this$0:Lcom/android/keyguard/sec/AdaptiveEventManager;

    # setter for: Lcom/android/keyguard/sec/AdaptiveEventManager;->mIsSameUser:Z
    invoke-static {v0, v11}, Lcom/android/keyguard/sec/AdaptiveEventManager;->access$1102(Lcom/android/keyguard/sec/AdaptiveEventManager;Z)Z

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$3;->this$0:Lcom/android/keyguard/sec/AdaptiveEventManager;

    # getter for: Lcom/android/keyguard/sec/AdaptiveEventManager;->ACTION_SEC_CHANGE_SETTING:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/keyguard/sec/AdaptiveEventManager;->access$100(Lcom/android/keyguard/sec/AdaptiveEventManager;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$3;->this$0:Lcom/android/keyguard/sec/AdaptiveEventManager;

    # getter for: Lcom/android/keyguard/sec/AdaptiveEventManager;->ACTION_SEC_AUTO_REFRESH:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/keyguard/sec/AdaptiveEventManager;->access$200(Lcom/android/keyguard/sec/AdaptiveEventManager;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$3;->this$0:Lcom/android/keyguard/sec/AdaptiveEventManager;

    # getter for: Lcom/android/keyguard/sec/AdaptiveEventManager;->ACTION_SEC_CHANGE_WEATHER_DATA:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/keyguard/sec/AdaptiveEventManager;->access$300(Lcom/android/keyguard/sec/AdaptiveEventManager;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$3;->this$0:Lcom/android/keyguard/sec/AdaptiveEventManager;

    # getter for: Lcom/android/keyguard/sec/AdaptiveEventManager;->ACTION_WEATHER_DATE_SYNC:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/keyguard/sec/AdaptiveEventManager;->access$400(Lcom/android/keyguard/sec/AdaptiveEventManager;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isChinaFeature()Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_4
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$3;->this$0:Lcom/android/keyguard/sec/AdaptiveEventManager;

    # getter for: Lcom/android/keyguard/sec/AdaptiveEventManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/keyguard/sec/AdaptiveEventManager;->access$600(Lcom/android/keyguard/sec/AdaptiveEventManager;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$3;->this$0:Lcom/android/keyguard/sec/AdaptiveEventManager;

    # getter for: Lcom/android/keyguard/sec/AdaptiveEventManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v1}, Lcom/android/keyguard/sec/AdaptiveEventManager;->access$1000(Lcom/android/keyguard/sec/AdaptiveEventManager;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p1}, Landroid/os/UserHandle;-><init>(I)V

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$3;->this$0:Lcom/android/keyguard/sec/AdaptiveEventManager;

    # setter for: Lcom/android/keyguard/sec/AdaptiveEventManager;->mRegistered:Z
    invoke-static {v0, v8}, Lcom/android/keyguard/sec/AdaptiveEventManager;->access$902(Lcom/android/keyguard/sec/AdaptiveEventManager;Z)Z

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$3;->this$0:Lcom/android/keyguard/sec/AdaptiveEventManager;

    # setter for: Lcom/android/keyguard/sec/AdaptiveEventManager;->mCurrentUserId:I
    invoke-static {v0, p1}, Lcom/android/keyguard/sec/AdaptiveEventManager;->access$702(Lcom/android/keyguard/sec/AdaptiveEventManager;I)I

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$3;->this$0:Lcom/android/keyguard/sec/AdaptiveEventManager;

    # getter for: Lcom/android/keyguard/sec/AdaptiveEventManager;->mWeatherInfoUserList:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/keyguard/sec/AdaptiveEventManager;->access$1200(Lcom/android/keyguard/sec/AdaptiveEventManager;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$3;->this$0:Lcom/android/keyguard/sec/AdaptiveEventManager;

    # getter for: Lcom/android/keyguard/sec/AdaptiveEventManager;->mCurrentUserId:I
    invoke-static {v1}, Lcom/android/keyguard/sec/AdaptiveEventManager;->access$700(Lcom/android/keyguard/sec/AdaptiveEventManager;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$3;->this$0:Lcom/android/keyguard/sec/AdaptiveEventManager;

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$3;->this$0:Lcom/android/keyguard/sec/AdaptiveEventManager;

    # getter for: Lcom/android/keyguard/sec/AdaptiveEventManager;->mWeatherInfoUserList:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/keyguard/sec/AdaptiveEventManager;->access$1200(Lcom/android/keyguard/sec/AdaptiveEventManager;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v2, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$3;->this$0:Lcom/android/keyguard/sec/AdaptiveEventManager;

    # getter for: Lcom/android/keyguard/sec/AdaptiveEventManager;->mCurrentUserId:I
    invoke-static {v2}, Lcom/android/keyguard/sec/AdaptiveEventManager;->access$700(Lcom/android/keyguard/sec/AdaptiveEventManager;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;

    # setter for: Lcom/android/keyguard/sec/AdaptiveEventManager;->mWeatherInfo:Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;
    invoke-static {v1, v0}, Lcom/android/keyguard/sec/AdaptiveEventManager;->access$1302(Lcom/android/keyguard/sec/AdaptiveEventManager;Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;)Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;

    :goto_2
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$3;->this$0:Lcom/android/keyguard/sec/AdaptiveEventManager;

    # getter for: Lcom/android/keyguard/sec/AdaptiveEventManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/keyguard/sec/AdaptiveEventManager;->access$600(Lcom/android/keyguard/sec/AdaptiveEventManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isShowInformation(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$3;->this$0:Lcom/android/keyguard/sec/AdaptiveEventManager;

    # getter for: Lcom/android/keyguard/sec/AdaptiveEventManager;->mWeatherInfo:Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;
    invoke-static {v0}, Lcom/android/keyguard/sec/AdaptiveEventManager;->access$1300(Lcom/android/keyguard/sec/AdaptiveEventManager;)Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;->getShowLockAndCover()I

    move-result v0

    if-ne v0, v8, :cond_7

    :goto_3
    if-nez v8, :cond_5

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$3;->this$0:Lcom/android/keyguard/sec/AdaptiveEventManager;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/AdaptiveEventManager;->isOwnerUser()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$3;->this$0:Lcom/android/keyguard/sec/AdaptiveEventManager;

    # getter for: Lcom/android/keyguard/sec/AdaptiveEventManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/keyguard/sec/AdaptiveEventManager;->access$600(Lcom/android/keyguard/sec/AdaptiveEventManager;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isAdditionalWeatherEnabled(Landroid/content/Context;)Z

    move-result v8

    :cond_5
    if-eqz v8, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$3;->this$0:Lcom/android/keyguard/sec/AdaptiveEventManager;

    # invokes: Lcom/android/keyguard/sec/AdaptiveEventManager;->sendWeatherTriggerBroadcast(I)V
    invoke-static {v0, p1}, Lcom/android/keyguard/sec/AdaptiveEventManager;->access$800(Lcom/android/keyguard/sec/AdaptiveEventManager;I)V

    const-string v0, "AdaptiveEventManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SendBroadcast() from Keyguard onUserSwitchComplete("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$3;->this$0:Lcom/android/keyguard/sec/AdaptiveEventManager;

    # getter for: Lcom/android/keyguard/sec/AdaptiveEventManager;->mCurrentUserId:I
    invoke-static {v2}, Lcom/android/keyguard/sec/AdaptiveEventManager;->access$700(Lcom/android/keyguard/sec/AdaptiveEventManager;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") Callback to Weather Deamon"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_6
    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$3;->this$0:Lcom/android/keyguard/sec/AdaptiveEventManager;

    new-instance v1, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;

    iget-object v2, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$3;->this$0:Lcom/android/keyguard/sec/AdaptiveEventManager;

    invoke-direct {v1, v2}, Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;-><init>(Lcom/android/keyguard/sec/AdaptiveEventManager;)V

    # setter for: Lcom/android/keyguard/sec/AdaptiveEventManager;->mWeatherInfo:Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;
    invoke-static {v0, v1}, Lcom/android/keyguard/sec/AdaptiveEventManager;->access$1302(Lcom/android/keyguard/sec/AdaptiveEventManager;Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;)Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;

    iget-object v0, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$3;->this$0:Lcom/android/keyguard/sec/AdaptiveEventManager;

    # getter for: Lcom/android/keyguard/sec/AdaptiveEventManager;->mWeatherInfoUserList:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/keyguard/sec/AdaptiveEventManager;->access$1200(Lcom/android/keyguard/sec/AdaptiveEventManager;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$3;->this$0:Lcom/android/keyguard/sec/AdaptiveEventManager;

    # getter for: Lcom/android/keyguard/sec/AdaptiveEventManager;->mCurrentUserId:I
    invoke-static {v1}, Lcom/android/keyguard/sec/AdaptiveEventManager;->access$700(Lcom/android/keyguard/sec/AdaptiveEventManager;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/AdaptiveEventManager$3;->this$0:Lcom/android/keyguard/sec/AdaptiveEventManager;

    # getter for: Lcom/android/keyguard/sec/AdaptiveEventManager;->mWeatherInfo:Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;
    invoke-static {v2}, Lcom/android/keyguard/sec/AdaptiveEventManager;->access$1300(Lcom/android/keyguard/sec/AdaptiveEventManager;)Lcom/android/keyguard/sec/AdaptiveEventManager$WeatherInfo;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_7
    move v8, v11

    goto :goto_3
.end method

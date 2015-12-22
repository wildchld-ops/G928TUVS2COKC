.class Lcom/android/phone/MobileNetworkSettings$MultiSimBoradcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MobileNetworkSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/MobileNetworkSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MultiSimBoradcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/MobileNetworkSettings;


# direct methods
.method constructor <init>(Lcom/android/phone/MobileNetworkSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/MobileNetworkSettings$MultiSimBoradcastReceiver;->this$0:Lcom/android/phone/MobileNetworkSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    const/4 v6, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v3, "MobileNetworkSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onReceive - action :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "com.sk.action.dataButtonEnable"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/phone/MobileNetworkSettings$MultiSimBoradcastReceiver;->this$0:Lcom/android/phone/MobileNetworkSettings;

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Lcom/android/phone/MobileNetworkSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    const-string v3, "MobileNetworkSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cm.getMobileDataEnabled() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/phone/MobileNetworkSettings$MultiSimBoradcastReceiver;->this$0:Lcom/android/phone/MobileNetworkSettings;

    invoke-virtual {v3}, Lcom/android/phone/MobileNetworkSettings;->onResume()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v3, "action.ButtonEnable"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    const-string v3, "updateFromRil"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    const-string v3, "MobileNetworkSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ACTION_STRING_ButtonEnable - updateFromRil :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "updateFromRil"

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_5

    iget-object v3, p0, Lcom/android/phone/MobileNetworkSettings$MultiSimBoradcastReceiver;->this$0:Lcom/android/phone/MobileNetworkSettings;

    iget-object v3, v3, Lcom/android/phone/MobileNetworkSettings;->mNetworkModePreference:Lcom/android/phone/NetworkModePreference;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/phone/MobileNetworkSettings$MultiSimBoradcastReceiver;->this$0:Lcom/android/phone/MobileNetworkSettings;

    iget-object v3, v3, Lcom/android/phone/MobileNetworkSettings;->mNetworkModePreference:Lcom/android/phone/NetworkModePreference;

    invoke-virtual {v3}, Lcom/android/phone/NetworkModePreference;->updateNetworkTypeAndEnabledStateForMultiSim()V

    :cond_2
    iget-object v3, p0, Lcom/android/phone/MobileNetworkSettings$MultiSimBoradcastReceiver;->this$0:Lcom/android/phone/MobileNetworkSettings;

    iget-object v3, v3, Lcom/android/phone/MobileNetworkSettings;->mNetworkModePreference2:Lcom/android/phone/NetworkModePreference;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/phone/MobileNetworkSettings$MultiSimBoradcastReceiver;->this$0:Lcom/android/phone/MobileNetworkSettings;

    iget-object v3, v3, Lcom/android/phone/MobileNetworkSettings;->mNetworkModePreference2:Lcom/android/phone/NetworkModePreference;

    invoke-virtual {v3}, Lcom/android/phone/NetworkModePreference;->updateNetworkTypeAndEnabledStateForMultiSim()V

    :cond_3
    iget-object v3, p0, Lcom/android/phone/MobileNetworkSettings$MultiSimBoradcastReceiver;->this$0:Lcom/android/phone/MobileNetworkSettings;

    iget-object v3, v3, Lcom/android/phone/MobileNetworkSettings;->mNetworkModeSpinner:Lcom/android/phone/NetworkModeSpinner;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/phone/MobileNetworkSettings$MultiSimBoradcastReceiver;->this$0:Lcom/android/phone/MobileNetworkSettings;

    iget-object v3, v3, Lcom/android/phone/MobileNetworkSettings;->mNetworkModeSpinner:Lcom/android/phone/NetworkModeSpinner;

    invoke-virtual {v3}, Lcom/android/phone/NetworkModeSpinner;->updateNetworkTypeAndEnabledStateForMultiSim()V

    :cond_4
    iget-object v3, p0, Lcom/android/phone/MobileNetworkSettings$MultiSimBoradcastReceiver;->this$0:Lcom/android/phone/MobileNetworkSettings;

    iget-object v3, v3, Lcom/android/phone/MobileNetworkSettings;->mNetworkModeSpinner2:Lcom/android/phone/NetworkModeSpinner;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/phone/MobileNetworkSettings$MultiSimBoradcastReceiver;->this$0:Lcom/android/phone/MobileNetworkSettings;

    iget-object v3, v3, Lcom/android/phone/MobileNetworkSettings;->mNetworkModeSpinner2:Lcom/android/phone/NetworkModeSpinner;

    invoke-virtual {v3}, Lcom/android/phone/NetworkModeSpinner;->updateNetworkTypeAndEnabledStateForMultiSim()V

    goto :goto_0

    :cond_5
    iget-object v3, p0, Lcom/android/phone/MobileNetworkSettings$MultiSimBoradcastReceiver;->this$0:Lcom/android/phone/MobileNetworkSettings;

    iget-object v3, v3, Lcom/android/phone/MobileNetworkSettings;->mNetworkModePreference:Lcom/android/phone/NetworkModePreference;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/phone/MobileNetworkSettings$MultiSimBoradcastReceiver;->this$0:Lcom/android/phone/MobileNetworkSettings;

    iget-object v3, v3, Lcom/android/phone/MobileNetworkSettings;->mNetworkModePreference:Lcom/android/phone/NetworkModePreference;

    invoke-virtual {v3}, Lcom/android/phone/NetworkModePreference;->checkAndSetEnabledForMultiSIM()V

    :cond_6
    iget-object v3, p0, Lcom/android/phone/MobileNetworkSettings$MultiSimBoradcastReceiver;->this$0:Lcom/android/phone/MobileNetworkSettings;

    iget-object v3, v3, Lcom/android/phone/MobileNetworkSettings;->mNetworkModePreference2:Lcom/android/phone/NetworkModePreference;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/phone/MobileNetworkSettings$MultiSimBoradcastReceiver;->this$0:Lcom/android/phone/MobileNetworkSettings;

    iget-object v3, v3, Lcom/android/phone/MobileNetworkSettings;->mNetworkModePreference2:Lcom/android/phone/NetworkModePreference;

    invoke-virtual {v3}, Lcom/android/phone/NetworkModePreference;->checkAndSetEnabledForMultiSIM()V

    :cond_7
    iget-object v3, p0, Lcom/android/phone/MobileNetworkSettings$MultiSimBoradcastReceiver;->this$0:Lcom/android/phone/MobileNetworkSettings;

    iget-object v3, v3, Lcom/android/phone/MobileNetworkSettings;->mNetworkModeSpinner:Lcom/android/phone/NetworkModeSpinner;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/phone/MobileNetworkSettings$MultiSimBoradcastReceiver;->this$0:Lcom/android/phone/MobileNetworkSettings;

    iget-object v3, v3, Lcom/android/phone/MobileNetworkSettings;->mNetworkModeSpinner:Lcom/android/phone/NetworkModeSpinner;

    invoke-virtual {v3}, Lcom/android/phone/NetworkModeSpinner;->checkAndSetEnabledForMultiSIM()V

    :cond_8
    iget-object v3, p0, Lcom/android/phone/MobileNetworkSettings$MultiSimBoradcastReceiver;->this$0:Lcom/android/phone/MobileNetworkSettings;

    iget-object v3, v3, Lcom/android/phone/MobileNetworkSettings;->mNetworkModeSpinner2:Lcom/android/phone/NetworkModeSpinner;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/phone/MobileNetworkSettings$MultiSimBoradcastReceiver;->this$0:Lcom/android/phone/MobileNetworkSettings;

    iget-object v3, v3, Lcom/android/phone/MobileNetworkSettings;->mNetworkModeSpinner2:Lcom/android/phone/NetworkModeSpinner;

    invoke-virtual {v3}, Lcom/android/phone/NetworkModeSpinner;->checkAndSetEnabledForMultiSIM()V

    goto/16 :goto_0

    :cond_9
    const-string v3, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "MobileNetworkSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ACTION_SIM_STATE_CHANGED - TelephonyProperties.PROPERTY_SIM_STATE :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "gsm.sim.state"

    const-string v6, "UNKNOWN"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/phone/MobileNetworkSettings$MultiSimBoradcastReceiver;->this$0:Lcom/android/phone/MobileNetworkSettings;

    iget-object v3, v3, Lcom/android/phone/MobileNetworkSettings;->mNetworkModePreference:Lcom/android/phone/NetworkModePreference;

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/android/phone/MobileNetworkSettings$MultiSimBoradcastReceiver;->this$0:Lcom/android/phone/MobileNetworkSettings;

    iget-object v3, v3, Lcom/android/phone/MobileNetworkSettings;->mNetworkModePreference:Lcom/android/phone/NetworkModePreference;

    invoke-virtual {v3}, Lcom/android/phone/NetworkModePreference;->checkAndSetEnabledForMultiSIM()V

    :cond_a
    iget-object v3, p0, Lcom/android/phone/MobileNetworkSettings$MultiSimBoradcastReceiver;->this$0:Lcom/android/phone/MobileNetworkSettings;

    iget-object v3, v3, Lcom/android/phone/MobileNetworkSettings;->mNetworkModePreference2:Lcom/android/phone/NetworkModePreference;

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/android/phone/MobileNetworkSettings$MultiSimBoradcastReceiver;->this$0:Lcom/android/phone/MobileNetworkSettings;

    iget-object v3, v3, Lcom/android/phone/MobileNetworkSettings;->mNetworkModePreference2:Lcom/android/phone/NetworkModePreference;

    invoke-virtual {v3}, Lcom/android/phone/NetworkModePreference;->checkAndSetEnabledForMultiSIM()V

    :cond_b
    iget-object v3, p0, Lcom/android/phone/MobileNetworkSettings$MultiSimBoradcastReceiver;->this$0:Lcom/android/phone/MobileNetworkSettings;

    iget-object v3, v3, Lcom/android/phone/MobileNetworkSettings;->mNetworkModeSpinner:Lcom/android/phone/NetworkModeSpinner;

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/android/phone/MobileNetworkSettings$MultiSimBoradcastReceiver;->this$0:Lcom/android/phone/MobileNetworkSettings;

    iget-object v3, v3, Lcom/android/phone/MobileNetworkSettings;->mNetworkModeSpinner:Lcom/android/phone/NetworkModeSpinner;

    invoke-virtual {v3}, Lcom/android/phone/NetworkModeSpinner;->checkAndSetEnabledForMultiSIM()V

    :cond_c
    iget-object v3, p0, Lcom/android/phone/MobileNetworkSettings$MultiSimBoradcastReceiver;->this$0:Lcom/android/phone/MobileNetworkSettings;

    iget-object v3, v3, Lcom/android/phone/MobileNetworkSettings;->mNetworkModeSpinner2:Lcom/android/phone/NetworkModeSpinner;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/phone/MobileNetworkSettings$MultiSimBoradcastReceiver;->this$0:Lcom/android/phone/MobileNetworkSettings;

    iget-object v3, v3, Lcom/android/phone/MobileNetworkSettings;->mNetworkModeSpinner2:Lcom/android/phone/NetworkModeSpinner;

    invoke-virtual {v3}, Lcom/android/phone/NetworkModeSpinner;->checkAndSetEnabledForMultiSIM()V

    goto/16 :goto_0
.end method

.class Lcom/android/phone/MobileNetworkSettings$VoLteBoradcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MobileNetworkSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/MobileNetworkSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VoLteBoradcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/MobileNetworkSettings;


# direct methods
.method constructor <init>(Lcom/android/phone/MobileNetworkSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/MobileNetworkSettings$VoLteBoradcastReceiver;->this$0:Lcom/android/phone/MobileNetworkSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MobileNetworkSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VoLteBoradcastReceiver onReceive - action :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "com.samsung.ims.action.onsimloaded"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "MobileNetworkSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ACTION_IMS_ON_SIMLOADED - mVolteCall :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/MobileNetworkSettings$VoLteBoradcastReceiver;->this$0:Lcom/android/phone/MobileNetworkSettings;

    # getter for: Lcom/android/phone/MobileNetworkSettings;->mVolteCall:Landroid/preference/CheckBoxPreference;
    invoke-static {v4}, Lcom/android/phone/MobileNetworkSettings;->access$400(Lcom/android/phone/MobileNetworkSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/phone/MobileNetworkSettings$VoLteBoradcastReceiver;->this$0:Lcom/android/phone/MobileNetworkSettings;

    # getter for: Lcom/android/phone/MobileNetworkSettings;->mVolteCall:Landroid/preference/CheckBoxPreference;
    invoke-static {v2}, Lcom/android/phone/MobileNetworkSettings;->access$400(Lcom/android/phone/MobileNetworkSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/MobileNetworkSettings$VoLteBoradcastReceiver;->this$0:Lcom/android/phone/MobileNetworkSettings;

    invoke-virtual {v2}, Lcom/android/phone/MobileNetworkSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    const-string v2, "volte_settings_in_mobile_networks_chn"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/phone/MobileNetworkSettings$VoLteBoradcastReceiver;->this$0:Lcom/android/phone/MobileNetworkSettings;

    # invokes: Lcom/android/phone/MobileNetworkSettings;->displayVolteSettingForChn()Z
    invoke-static {v2}, Lcom/android/phone/MobileNetworkSettings;->access$1500(Lcom/android/phone/MobileNetworkSettings;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "MobileNetworkSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ACTION_SIM_STATE_CHANGED - addPreference :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/MobileNetworkSettings$VoLteBoradcastReceiver;->this$0:Lcom/android/phone/MobileNetworkSettings;

    # getter for: Lcom/android/phone/MobileNetworkSettings;->mVolteCall:Landroid/preference/CheckBoxPreference;
    invoke-static {v4}, Lcom/android/phone/MobileNetworkSettings;->access$400(Lcom/android/phone/MobileNetworkSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/phone/MobileNetworkSettings$VoLteBoradcastReceiver;->this$0:Lcom/android/phone/MobileNetworkSettings;

    # getter for: Lcom/android/phone/MobileNetworkSettings;->mVolteCall:Landroid/preference/CheckBoxPreference;
    invoke-static {v2}, Lcom/android/phone/MobileNetworkSettings;->access$400(Lcom/android/phone/MobileNetworkSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v2, "MobileNetworkSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ACTION_SIM_STATE_CHANGED - removePreference :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/MobileNetworkSettings$VoLteBoradcastReceiver;->this$0:Lcom/android/phone/MobileNetworkSettings;

    # getter for: Lcom/android/phone/MobileNetworkSettings;->mVolteCall:Landroid/preference/CheckBoxPreference;
    invoke-static {v4}, Lcom/android/phone/MobileNetworkSettings;->access$400(Lcom/android/phone/MobileNetworkSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/phone/MobileNetworkSettings$VoLteBoradcastReceiver;->this$0:Lcom/android/phone/MobileNetworkSettings;

    # getter for: Lcom/android/phone/MobileNetworkSettings;->mVolteCall:Landroid/preference/CheckBoxPreference;
    invoke-static {v2}, Lcom/android/phone/MobileNetworkSettings;->access$400(Lcom/android/phone/MobileNetworkSettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0
.end method

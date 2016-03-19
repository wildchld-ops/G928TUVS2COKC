.class Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings$2;
.super Landroid/content/BroadcastReceiver;
.source "MobileNetworkSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;


# direct methods
.method constructor <init>(Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings$2;->this$0:Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->log(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->access$200(Ljava/lang/String;)V

    const-string v2, "com.android.settings.ACTION_DATA_ROAMING_NEGATIVE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "com.android.settings.ACTION_DATA_ROAMING_POSITIVE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mPhone.getDataRoamingEnabled()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings$2;->this$0:Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;

    # getter for: Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->access$300(Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getDataRoamingEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->log(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->access$200(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings$2;->this$0:Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;

    # getter for: Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mButtonDataRoam:Landroid/preference/TwoStatePreference;
    invoke-static {v2}, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->access$400(Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;)Landroid/preference/TwoStatePreference;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings$2;->this$0:Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;

    # getter for: Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mButtonDataRoam:Landroid/preference/TwoStatePreference;
    invoke-static {v2}, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->access$400(Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;)Landroid/preference/TwoStatePreference;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings$2;->this$0:Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;

    # getter for: Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v3}, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->access$300(Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getDataRoamingEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v2, "com.android.settings.ACTION_DATA_KEY_NEGATIVE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings$2;->this$0:Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;

    # getter for: Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/TwoStatePreference;
    invoke-static {v2}, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->access$500(Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;)Landroid/preference/TwoStatePreference;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings$2;->this$0:Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iget-object v2, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings$2;->this$0:Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;

    # getter for: Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/TwoStatePreference;
    invoke-static {v2}, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->access$500(Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;)Landroid/preference/TwoStatePreference;

    move-result-object v2

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0
.end method

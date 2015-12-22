.class Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings$3;
.super Landroid/database/ContentObserver;
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
.method constructor <init>(Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings$3;->this$0:Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings$3;->this$0:Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;

    # getter for: Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mDataNetworkDialog:Landroid/app/Dialog;
    invoke-static {v1}, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->access$600(Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;)Landroid/app/Dialog;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings$3;->this$0:Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;

    # getter for: Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mDataNetworkDialog:Landroid/app/Dialog;
    invoke-static {v1}, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->access$600(Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Data network settings value changed, force closing the dialog"

    # invokes: Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->access$200(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings$3;->this$0:Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;

    # getter for: Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mDataNetworkDialog:Landroid/app/Dialog;
    invoke-static {v1}, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->access$600(Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    :goto_0
    return-void

    :cond_0
    const-string v1, "Data network settings value changed, updating data checkbox state"

    # invokes: Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->access$200(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings$3;->this$0:Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings$3;->this$0:Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;

    # getter for: Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->mButtonDataEnabled:Landroid/preference/TwoStatePreference;
    invoke-static {v1}, Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;->access$500(Lcom/android/phone/mobilenetworks/kor/MobileNetworkSettings;)Landroid/preference/TwoStatePreference;

    move-result-object v1

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0
.end method

.class Lcom/android/phone/NetworkNotificationUI$NetworkNotificationUIHandler;
.super Landroid/os/Handler;
.source "NetworkNotificationUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NetworkNotificationUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkNotificationUIHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NetworkNotificationUI;


# direct methods
.method private constructor <init>(Lcom/android/phone/NetworkNotificationUI;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/NetworkNotificationUI$NetworkNotificationUIHandler;->this$0:Lcom/android/phone/NetworkNotificationUI;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/NetworkNotificationUI;Lcom/android/phone/NetworkNotificationUI$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/phone/NetworkNotificationUI$NetworkNotificationUIHandler;-><init>(Lcom/android/phone/NetworkNotificationUI;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    const-string v1, "gsm.sim.state"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/android/phone/NetworkNotificationUI$NetworkNotificationUIHandler;->this$0:Lcom/android/phone/NetworkNotificationUI;

    # getter for: Lcom/android/phone/NetworkNotificationUI;->mNoServiceAndManualSelectionDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/phone/NetworkNotificationUI;->access$3800(Lcom/android/phone/NetworkNotificationUI;)Landroid/app/AlertDialog;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/NetworkNotificationUI$NetworkNotificationUIHandler;->this$0:Lcom/android/phone/NetworkNotificationUI;

    # getter for: Lcom/android/phone/NetworkNotificationUI;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/phone/NetworkNotificationUI;->access$200(Lcom/android/phone/NetworkNotificationUI;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "select_network_transition"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/NetworkNotificationUI$NetworkNotificationUIHandler;->this$0:Lcom/android/phone/NetworkNotificationUI;

    # getter for: Lcom/android/phone/NetworkNotificationUI;->mNoservicePopupSelectionNagativeButton:Z
    invoke-static {v1}, Lcom/android/phone/NetworkNotificationUI;->access$3900(Lcom/android/phone/NetworkNotificationUI;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ABSENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "NetworkNotificationUI"

    const-string v2, "display showNoServiceAndManualSelecionDialog"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/NetworkNotificationUI$NetworkNotificationUIHandler;->this$0:Lcom/android/phone/NetworkNotificationUI;

    # invokes: Lcom/android/phone/NetworkNotificationUI;->showNoServiceAndManualSelecionDialog()V
    invoke-static {v1}, Lcom/android/phone/NetworkNotificationUI;->access$4000(Lcom/android/phone/NetworkNotificationUI;)V

    goto :goto_0

    :pswitch_1
    const-string v1, "NetworkNotificationUI"

    const-string v2, "addRoamingRegFailNotification"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/phone/NetworkNotificationUI$NetworkNotificationUIHandler;->this$0:Lcom/android/phone/NetworkNotificationUI;

    # invokes: Lcom/android/phone/NetworkNotificationUI;->addRoamingRegFailNotification()V
    invoke-static {v1}, Lcom/android/phone/NetworkNotificationUI;->access$4100(Lcom/android/phone/NetworkNotificationUI;)V

    const-string v1, "feature_skt"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/NetworkNotificationUI$NetworkNotificationUIHandler;->this$0:Lcom/android/phone/NetworkNotificationUI;

    # getter for: Lcom/android/phone/NetworkNotificationUI;->mNetworkRegNotiDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/phone/NetworkNotificationUI;->access$4200(Lcom/android/phone/NetworkNotificationUI;)Landroid/app/AlertDialog;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/phone/NetworkNotificationUI;->getFactoryMode()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/NetworkNotificationUI$NetworkNotificationUIHandler;->this$0:Lcom/android/phone/NetworkNotificationUI;

    # invokes: Lcom/android/phone/NetworkNotificationUI;->isOtaRegistering()Z
    invoke-static {v1}, Lcom/android/phone/NetworkNotificationUI;->access$500(Lcom/android/phone/NetworkNotificationUI;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/NetworkNotificationUI$NetworkNotificationUIHandler;->this$0:Lcom/android/phone/NetworkNotificationUI;

    # invokes: Lcom/android/phone/NetworkNotificationUI;->showNetworkRegNotiPopUp()V
    invoke-static {v1}, Lcom/android/phone/NetworkNotificationUI;->access$4300(Lcom/android/phone/NetworkNotificationUI;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

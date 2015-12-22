.class Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimWifiHandler;
.super Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiHandler;
.source "MSimNetworkControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MSimWifiHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimWifiHandler;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiHandler;-><init>(Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$WifiHandler;->handleMessage(Landroid/os/Message;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimWifiHandler;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    iget v2, v2, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiActivity:I

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimWifiHandler;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iput v2, v1, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->mWifiActivity:I

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v1

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimWifiHandler;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->refreshViews(I)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl$MSimWifiHandler;->this$0:Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/policy/MSimNetworkControllerImpl;->refreshViews(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

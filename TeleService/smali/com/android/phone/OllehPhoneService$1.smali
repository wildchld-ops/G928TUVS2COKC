.class Lcom/android/phone/OllehPhoneService$1;
.super Landroid/os/Handler;
.source "OllehPhoneService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/OllehPhoneService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/OllehPhoneService;


# direct methods
.method constructor <init>(Lcom/android/phone/OllehPhoneService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/OllehPhoneService$1;->this$0:Lcom/android/phone/OllehPhoneService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const-string v0, "[carrier-phone] OllehPhoneService"

    const-string v1, "DELAYED_START_BINDING()... "

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/services/telephony/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/phone/OllehPhoneService$1;->this$0:Lcom/android/phone/OllehPhoneService;

    # getter for: Lcom/android/phone/OllehPhoneService;->mCarrierManager:Lcom/android/phone/CarrierManager;
    invoke-static {v0}, Lcom/android/phone/OllehPhoneService;->access$1000(Lcom/android/phone/OllehPhoneService;)Lcom/android/phone/CarrierManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/CarrierManager;->connectICallKtClientService()V

    goto :goto_0

    :pswitch_1
    const-string v0, "[carrier-phone] OllehPhoneService"

    const-string v1, "stopDtmfTone()... "

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/android/services/telephony/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/phone/OllehPhoneService$1;->this$0:Lcom/android/phone/OllehPhoneService;

    # getter for: Lcom/android/phone/OllehPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v0}, Lcom/android/phone/OllehPhoneService;->access$200(Lcom/android/phone/OllehPhoneService;)Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->stopDtmf()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x71
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

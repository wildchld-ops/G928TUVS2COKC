.class Lcom/android/phone/TPhoneService$1;
.super Landroid/os/Handler;
.source "TPhoneService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/TPhoneService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/TPhoneService;


# direct methods
.method constructor <init>(Lcom/android/phone/TPhoneService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/TPhoneService$1;->this$0:Lcom/android/phone/TPhoneService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    const-string v1, "[carrier-phone] TPhoneService"

    const-string v2, "DELAYED_START_BINDING... "

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Lcom/android/services/telephony/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/phone/TPhoneService$1;->this$0:Lcom/android/phone/TPhoneService;

    # getter for: Lcom/android/phone/TPhoneService;->mCarrierManager:Lcom/android/phone/CarrierManager;
    invoke-static {v1}, Lcom/android/phone/TPhoneService;->access$1000(Lcom/android/phone/TPhoneService;)Lcom/android/phone/CarrierManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/CarrierManager;->connectTInCallScreen()V

    goto :goto_0

    :sswitch_1
    const-string v1, "[carrier-phone] TPhoneService"

    const-string v2, "DELAYED_STOP_DTMF... "

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Lcom/android/services/telephony/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/phone/TPhoneService$1;->this$0:Lcom/android/phone/TPhoneService;

    # getter for: Lcom/android/phone/TPhoneService;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v1}, Lcom/android/phone/TPhoneService;->access$100(Lcom/android/phone/TPhoneService;)Lcom/android/internal/telephony/CallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->stopDtmf()V

    goto :goto_0

    :sswitch_2
    const-string v1, "[carrier-phone] TPhoneService"

    const-string v2, "DELAYED_AUTO_UNHOLD... "

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v1, v2, v3}, Lcom/android/services/telephony/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/services/utils/SecTelecomAdapter;->getInstance()Lcom/android/services/utils/SecTelecomAdapter;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/android/services/utils/SecTelecomAdapter;->holdCalls(Z)V

    goto :goto_0

    :sswitch_3
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v4, :cond_0

    const-string v1, "[carrier-phone] TPhoneService"

    const-string v2, "TPhone install complete start install TDial"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/services/telephony/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/phone/TPhoneService$1;->this$0:Lcom/android/phone/TPhoneService;

    # invokes: Lcom/android/phone/TPhoneService;->InstallTDialPkg()V
    invoke-static {v1}, Lcom/android/phone/TPhoneService;->access$1100(Lcom/android/phone/TPhoneService;)V

    goto :goto_0

    :cond_0
    const-string v1, "[carrier-phone] TPhoneService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TPhone install ERROR!!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/services/telephony/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/phone/TPhoneService$1;->this$0:Lcom/android/phone/TPhoneService;

    # invokes: Lcom/android/phone/TPhoneService;->CancelTphoneInstallNotification()V
    invoke-static {v1}, Lcom/android/phone/TPhoneService;->access$1200(Lcom/android/phone/TPhoneService;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.skt.prod.dialer.TPHONE_UPDATE_FAIL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/phone/TPhoneService$1;->this$0:Lcom/android/phone/TPhoneService;

    invoke-virtual {v1, v0}, Lcom/android/phone/TPhoneService;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/android/phone/TPhoneService$1;->this$0:Lcom/android/phone/TPhoneService;

    invoke-virtual {v1}, Lcom/android/phone/TPhoneService;->completeTPhoneInstall()V

    goto/16 :goto_0

    :sswitch_4
    iget-object v1, p0, Lcom/android/phone/TPhoneService$1;->this$0:Lcom/android/phone/TPhoneService;

    const/16 v2, 0xc8

    invoke-virtual {v1, v2}, Lcom/android/phone/TPhoneService;->SetTPhoneInstallState(I)V

    iget-object v1, p0, Lcom/android/phone/TPhoneService$1;->this$0:Lcom/android/phone/TPhoneService;

    # invokes: Lcom/android/phone/TPhoneService;->CancelTphoneInstallNotification()V
    invoke-static {v1}, Lcom/android/phone/TPhoneService;->access$1200(Lcom/android/phone/TPhoneService;)V

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v4, :cond_1

    const-string v1, "[carrier-phone] TPhoneService"

    const-string v2, "TDial install complete"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/services/telephony/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.skt.prod.dialer.TPHONE_UPDATE_COMPLETE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/phone/TPhoneService$1;->this$0:Lcom/android/phone/TPhoneService;

    invoke-virtual {v1, v0}, Lcom/android/phone/TPhoneService;->sendBroadcast(Landroid/content/Intent;)V

    :goto_1
    iget-object v1, p0, Lcom/android/phone/TPhoneService$1;->this$0:Lcom/android/phone/TPhoneService;

    invoke-virtual {v1}, Lcom/android/phone/TPhoneService;->completeTPhoneInstall()V

    goto/16 :goto_0

    :cond_1
    const-string v1, "[carrier-phone] TPhoneService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TDial install ERROR!!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/services/telephony/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.skt.prod.dialer.TPHONE_UPDATE_FAIL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/phone/TPhoneService$1;->this$0:Lcom/android/phone/TPhoneService;

    invoke-virtual {v1, v0}, Lcom/android/phone/TPhoneService;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x71 -> :sswitch_1
        0x72 -> :sswitch_0
        0x73 -> :sswitch_2
        0x82 -> :sswitch_3
        0x83 -> :sswitch_4
    .end sparse-switch
.end method

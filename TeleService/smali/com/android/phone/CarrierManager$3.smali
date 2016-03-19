.class Lcom/android/phone/CarrierManager$3;
.super Ljava/lang/Object;
.source "CarrierManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CarrierManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CarrierManager;


# direct methods
.method constructor <init>(Lcom/android/phone/CarrierManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/CarrierManager$3;->this$0:Lcom/android/phone/CarrierManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 7

    :try_start_0
    const-string v2, "[carrier-phone] CarrierManager"

    const-string v3, "TInCallScreen Connected!!"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/android/services/telephony/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/android/phone/CarrierManager$3;->this$0:Lcom/android/phone/CarrierManager;

    invoke-static {p2}, Lcom/skt/prod/phone/ITInCallScreen$Stub;->asInterface(Landroid/os/IBinder;)Lcom/skt/prod/phone/ITInCallScreen;

    move-result-object v3

    # setter for: Lcom/android/phone/CarrierManager;->mTInCallScreen:Lcom/skt/prod/phone/ITInCallScreen;
    invoke-static {v2, v3}, Lcom/android/phone/CarrierManager;->access$302(Lcom/android/phone/CarrierManager;Lcom/skt/prod/phone/ITInCallScreen;)Lcom/skt/prod/phone/ITInCallScreen;

    iget-object v2, p0, Lcom/android/phone/CarrierManager$3;->this$0:Lcom/android/phone/CarrierManager;

    # getter for: Lcom/android/phone/CarrierManager;->cm:Lcom/android/internal/telephony/CallManager;
    invoke-static {v2}, Lcom/android/phone/CarrierManager;->access$400(Lcom/android/phone/CarrierManager;)Lcom/android/internal/telephony/CallManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v2, v3, :cond_0

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isTPhoneMode()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/android/phone/CarrierManager$3$1;

    invoke-direct {v3, p0}, Lcom/android/phone/CarrierManager$3$1;-><init>(Lcom/android/phone/CarrierManager$3;)V

    const-wide/16 v4, 0x12c

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    iget-object v2, p0, Lcom/android/phone/CarrierManager$3;->this$0:Lcom/android/phone/CarrierManager;

    # getter for: Lcom/android/phone/CarrierManager;->cm:Lcom/android/internal/telephony/CallManager;
    invoke-static {v2}, Lcom/android/phone/CarrierManager;->access$400(Lcom/android/phone/CarrierManager;)Lcom/android/internal/telephony/CallManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v2, v3, :cond_1

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isTPhoneEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "TInCallScreen Connected - RINGING"

    # invokes: Lcom/android/phone/CarrierManager;->log(Ljava/lang/String;)V
    invoke-static {v2}, Lcom/android/phone/CarrierManager;->access$500(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/phone/CarrierManager$3;->this$0:Lcom/android/phone/CarrierManager;

    # getter for: Lcom/android/phone/CarrierManager;->cm:Lcom/android/internal/telephony/CallManager;
    invoke-static {v2}, Lcom/android/phone/CarrierManager;->access$400(Lcom/android/phone/CarrierManager;)Lcom/android/internal/telephony/CallManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    iget-object v2, p0, Lcom/android/phone/CarrierManager$3;->this$0:Lcom/android/phone/CarrierManager;

    invoke-virtual {v2, v0}, Lcom/android/phone/CarrierManager;->setCallFilterType(Lcom/android/internal/telephony/Connection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v1

    iget-object v2, p0, Lcom/android/phone/CarrierManager$3;->this$0:Lcom/android/phone/CarrierManager;

    const/4 v3, 0x0

    # setter for: Lcom/android/phone/CarrierManager;->mTInCallScreen:Lcom/skt/prod/phone/ITInCallScreen;
    invoke-static {v2, v3}, Lcom/android/phone/CarrierManager;->access$302(Lcom/android/phone/CarrierManager;Lcom/skt/prod/phone/ITInCallScreen;)Lcom/skt/prod/phone/ITInCallScreen;

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 5

    const/4 v4, 0x1

    const-string v0, "[carrier-phone] CarrierManager"

    const-string v1, "TInCallScreen Disconnected!!"

    new-array v2, v4, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/services/telephony/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/phone/CarrierManager$3;->this$0:Lcom/android/phone/CarrierManager;

    const/4 v1, 0x0

    # setter for: Lcom/android/phone/CarrierManager;->mTInCallScreen:Lcom/skt/prod/phone/ITInCallScreen;
    invoke-static {v0, v1}, Lcom/android/phone/CarrierManager;->access$302(Lcom/android/phone/CarrierManager;Lcom/skt/prod/phone/ITInCallScreen;)Lcom/skt/prod/phone/ITInCallScreen;

    return-void
.end method

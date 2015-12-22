.class Lcom/android/phone/CdmaCallForwardOptions$3;
.super Landroid/os/Handler;
.source "CdmaCallForwardOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CdmaCallForwardOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CdmaCallForwardOptions;


# direct methods
.method constructor <init>(Lcom/android/phone/CdmaCallForwardOptions;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/CdmaCallForwardOptions$3;->this$0:Lcom/android/phone/CdmaCallForwardOptions;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1    # Landroid/os/Message;

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    iget-object v0, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/CdmaCallForwardOptions$3;->this$0:Lcom/android/phone/CdmaCallForwardOptions;

    # getter for: Lcom/android/phone/CdmaCallForwardOptions;->mDisplayMode:I
    invoke-static {v1}, Lcom/android/phone/CdmaCallForwardOptions;->access$000(Lcom/android/phone/CdmaCallForwardOptions;)I

    move-result v1

    packed-switch v1, :pswitch_data_1

    :goto_1
    iget-object v1, p0, Lcom/android/phone/CdmaCallForwardOptions$3;->this$0:Lcom/android/phone/CdmaCallForwardOptions;

    # getter for: Lcom/android/phone/CdmaCallForwardOptions;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v1}, Lcom/android/phone/CdmaCallForwardOptions;->access$300(Lcom/android/phone/CdmaCallForwardOptions;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/CdmaCallForwardOptions$3;->this$0:Lcom/android/phone/CdmaCallForwardOptions;

    # getter for: Lcom/android/phone/CdmaCallForwardOptions;->mNetworkServiceHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/phone/CdmaCallForwardOptions;->access$200(Lcom/android/phone/CdmaCallForwardOptions;)Landroid/os/Handler;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/Phone;->unregisterForServiceStateChanged(Landroid/os/Handler;)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/phone/CdmaCallForwardOptions$3;->this$0:Lcom/android/phone/CdmaCallForwardOptions;

    # invokes: Lcom/android/phone/CdmaCallForwardOptions;->queryAllCFOptions()V
    invoke-static {v1}, Lcom/android/phone/CdmaCallForwardOptions;->access$100(Lcom/android/phone/CdmaCallForwardOptions;)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x2
        :pswitch_1
    .end packed-switch
.end method

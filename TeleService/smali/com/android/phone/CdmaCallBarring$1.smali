.class Lcom/android/phone/CdmaCallBarring$1;
.super Landroid/os/Handler;
.source "CdmaCallBarring.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CdmaCallBarring;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CdmaCallBarring;


# direct methods
.method constructor <init>(Lcom/android/phone/CdmaCallBarring;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/CdmaCallBarring$1;->this$0:Lcom/android/phone/CdmaCallBarring;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1    # Landroid/os/Message;

    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    iget-object v0, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/CdmaCallBarring$1;->this$0:Lcom/android/phone/CdmaCallBarring;

    # getter for: Lcom/android/phone/CdmaCallBarring;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v1}, Lcom/android/phone/CdmaCallBarring;->access$100(Lcom/android/phone/CdmaCallBarring;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/CdmaCallBarring$1;->this$0:Lcom/android/phone/CdmaCallBarring;

    # getter for: Lcom/android/phone/CdmaCallBarring;->mNetworkServiceHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/phone/CdmaCallBarring;->access$000(Lcom/android/phone/CdmaCallBarring;)Landroid/os/Handler;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/Phone;->unregisterForServiceStateChanged(Landroid/os/Handler;)V

    goto :goto_0

    :sswitch_1
    iget-object v1, p0, Lcom/android/phone/CdmaCallBarring$1;->this$0:Lcom/android/phone/CdmaCallBarring;

    # invokes: Lcom/android/phone/CdmaCallBarring;->dismissExpandedDialog()V
    invoke-static {v1}, Lcom/android/phone/CdmaCallBarring;->access$200(Lcom/android/phone/CdmaCallBarring;)V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x258 -> :sswitch_1
    .end sparse-switch
.end method

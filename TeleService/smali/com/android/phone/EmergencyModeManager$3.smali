.class Lcom/android/phone/EmergencyModeManager$3;
.super Landroid/os/Handler;
.source "EmergencyModeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/EmergencyModeManager;->makeSafetyLooper()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/EmergencyModeManager;


# direct methods
.method constructor <init>(Lcom/android/phone/EmergencyModeManager;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/EmergencyModeManager$3;->this$0:Lcom/android/phone/EmergencyModeManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method private handleGetPreferredNetworkTypeResponse(Landroid/os/Message;I)V
    .locals 6

    const/4 v5, 0x1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_0

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    check-cast v2, [I

    const/4 v3, 0x0

    aget v1, v2, v3

    const-string v2, "EmergencyModeManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get preferred network type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " slotId ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v2, p0, Lcom/android/phone/EmergencyModeManager$3;->this$0:Lcom/android/phone/EmergencyModeManager;

    # invokes: Lcom/android/phone/EmergencyModeManager;->checkNetworkTypeAndChange(II)V
    invoke-static {v2, v1, p2}, Lcom/android/phone/EmergencyModeManager;->access$400(Lcom/android/phone/EmergencyModeManager;II)V

    :goto_0
    return-void

    :cond_0
    const-string v2, "EmergencyModeManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get preferred network type, exception="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_0
.end method

.method private handleSetPreferredNetworkTypeResponse(Landroid/os/Message;I)V
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_1

    const-string v1, "EmergencyModeManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set preferred network type, exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    :goto_0
    iget-object v1, p0, Lcom/android/phone/EmergencyModeManager$3;->this$0:Lcom/android/phone/EmergencyModeManager;

    iget-boolean v1, v1, Lcom/android/phone/EmergencyModeManager;->mIsDisconnectingData:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/EmergencyModeManager$3;->this$0:Lcom/android/phone/EmergencyModeManager;

    # invokes: Lcom/android/phone/EmergencyModeManager;->setMobileDataEnabled(Z)V
    invoke-static {v1, v4}, Lcom/android/phone/EmergencyModeManager;->access$600(Lcom/android/phone/EmergencyModeManager;Z)V

    iget-object v1, p0, Lcom/android/phone/EmergencyModeManager$3;->this$0:Lcom/android/phone/EmergencyModeManager;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/phone/EmergencyModeManager;->mIsDisconnectingData:Z

    const-string v1, "EmergencyModeManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set default vale, mIsDisconnectingData = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/EmergencyModeManager$3;->this$0:Lcom/android/phone/EmergencyModeManager;

    iget-boolean v3, v3, Lcom/android/phone/EmergencyModeManager;->mIsDisconnectingData:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    :cond_0
    return-void

    :cond_1
    const-string v1, "EmergencyModeManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set preferred network type done - slotId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v1, p0, Lcom/android/phone/EmergencyModeManager$3;->this$0:Lcom/android/phone/EmergencyModeManager;

    # invokes: Lcom/android/phone/EmergencyModeManager;->setNetworkInfo(I)V
    invoke-static {v1, p2}, Lcom/android/phone/EmergencyModeManager;->access$500(Lcom/android/phone/EmergencyModeManager;I)V

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    const/4 v2, -0x1

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    const-string v1, "feature_multisim"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    move-object v0, v1

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/android/phone/EmergencyModeManager$3;->handleGetPreferredNetworkTypeResponse(Landroid/os/Message;I)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, v2}, Lcom/android/phone/EmergencyModeManager$3;->handleGetPreferredNetworkTypeResponse(Landroid/os/Message;I)V

    goto :goto_0

    :pswitch_1
    const-string v1, "feature_multisim"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    move-object v0, v1

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, p1, v1}, Lcom/android/phone/EmergencyModeManager$3;->handleSetPreferredNetworkTypeResponse(Landroid/os/Message;I)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, v2}, Lcom/android/phone/EmergencyModeManager$3;->handleSetPreferredNetworkTypeResponse(Landroid/os/Message;I)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

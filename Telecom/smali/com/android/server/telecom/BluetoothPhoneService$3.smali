.class Lcom/android/server/telecom/BluetoothPhoneService$3;
.super Lcom/android/server/telecom/CallsManagerListenerBase;
.source "BluetoothPhoneService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/telecom/BluetoothPhoneService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/telecom/BluetoothPhoneService;


# direct methods
.method constructor <init>(Lcom/android/server/telecom/BluetoothPhoneService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/telecom/BluetoothPhoneService$3;->this$0:Lcom/android/server/telecom/BluetoothPhoneService;

    invoke-direct {p0}, Lcom/android/server/telecom/CallsManagerListenerBase;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallAdded(Lcom/android/server/telecom/Call;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/telecom/BluetoothPhoneService$3;->this$0:Lcom/android/server/telecom/BluetoothPhoneService;

    const/4 v1, 0x0

    # invokes: Lcom/android/server/telecom/BluetoothPhoneService;->updateHeadsetWithCallState(Z)V
    invoke-static {v0, v1}, Lcom/android/server/telecom/BluetoothPhoneService;->access$600(Lcom/android/server/telecom/BluetoothPhoneService;Z)V

    return-void
.end method

.method public onCallRemoved(Lcom/android/server/telecom/Call;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/telecom/BluetoothPhoneService$3;->this$0:Lcom/android/server/telecom/BluetoothPhoneService;

    # getter for: Lcom/android/server/telecom/BluetoothPhoneService;->mClccIndexMap:Ljava/util/Map;
    invoke-static {v0}, Lcom/android/server/telecom/BluetoothPhoneService;->access$1000(Lcom/android/server/telecom/BluetoothPhoneService;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/telecom/BluetoothPhoneService$3;->this$0:Lcom/android/server/telecom/BluetoothPhoneService;

    # invokes: Lcom/android/server/telecom/BluetoothPhoneService;->getCurrentCallPhoneType(Lcom/android/server/telecom/Call;)I
    invoke-static {v0, p1}, Lcom/android/server/telecom/BluetoothPhoneService;->access$1100(Lcom/android/server/telecom/BluetoothPhoneService;Lcom/android/server/telecom/Call;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/telecom/BluetoothPhoneService$3;->this$0:Lcom/android/server/telecom/BluetoothPhoneService;

    const/4 v1, 0x0

    # invokes: Lcom/android/server/telecom/BluetoothPhoneService;->updateHeadsetWithCallState(Z)V
    invoke-static {v0, v1}, Lcom/android/server/telecom/BluetoothPhoneService;->access$600(Lcom/android/server/telecom/BluetoothPhoneService;Z)V

    goto :goto_0
.end method

.method public onCallStateChanged(Lcom/android/server/telecom/Call;II)V
    .locals 10

    const/4 v0, 0x5

    if-ne p2, v0, :cond_2

    const/4 v0, 0x6

    if-ne p3, v0, :cond_2

    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->getCalls()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/Call;

    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getState()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->getActiveCall()Lcom/android/server/telecom/Call;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    if-ne p2, v0, :cond_3

    const/4 v0, 0x3

    if-eq p3, v0, :cond_1

    :cond_3
    iget-object v0, p0, Lcom/android/server/telecom/BluetoothPhoneService$3;->this$0:Lcom/android/server/telecom/BluetoothPhoneService;

    # invokes: Lcom/android/server/telecom/BluetoothPhoneService;->getCallsManager()Lcom/android/server/telecom/CallsManager;
    invoke-static {v0}, Lcom/android/server/telecom/BluetoothPhoneService;->access$400(Lcom/android/server/telecom/BluetoothPhoneService;)Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->getCalls()Ljava/util/Collection;

    move-result-object v5

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/telecom/BluetoothPhoneService$3;->this$0:Lcom/android/server/telecom/BluetoothPhoneService;

    # invokes: Lcom/android/server/telecom/BluetoothPhoneService;->getCallsManager()Lcom/android/server/telecom/CallsManager;
    invoke-static {v0}, Lcom/android/server/telecom/BluetoothPhoneService;->access$400(Lcom/android/server/telecom/BluetoothPhoneService;)Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->getNumHeldCalls()I

    move-result v6

    const/4 v0, 0x0

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v5, v4

    move v4, v3

    move v3, v2

    move v2, v1

    move v1, v0

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/Call;

    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getParentCall()Lcom/android/server/telecom/Call;

    move-result-object v8

    if-nez v8, :cond_4

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getState()I

    move-result v8

    const/4 v9, 0x5

    if-ne v8, v9, :cond_4

    add-int/lit8 v4, v4, 0x1

    :cond_4
    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->isConference()Z

    move-result v8

    if-eqz v8, :cond_5

    const/4 v0, 0x1

    move v1, v0

    goto :goto_1

    :cond_5
    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getState()I

    move-result v8

    const/4 v9, 0x5

    if-ne v8, v9, :cond_6

    add-int/lit8 v3, v3, 0x1

    move v0, v2

    move v2, v3

    :goto_2
    move v3, v2

    move v2, v0

    goto :goto_1

    :cond_6
    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->getState()I

    move-result v0

    const/4 v8, 0x4

    if-ne v0, v8, :cond_15

    add-int/lit8 v2, v2, 0x1

    move v0, v2

    move v2, v3

    goto :goto_2

    :cond_7
    const-string v0, "feature_ctc"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "chn_cdma_network_on_all_rat"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_8
    iget-object v0, p0, Lcom/android/server/telecom/BluetoothPhoneService$3;->this$0:Lcom/android/server/telecom/BluetoothPhoneService;

    # invokes: Lcom/android/server/telecom/BluetoothPhoneService;->getCurrentCallPhoneType(Lcom/android/server/telecom/Call;)I
    invoke-static {v0, p1}, Lcom/android/server/telecom/BluetoothPhoneService;->access$1100(Lcom/android/server/telecom/BluetoothPhoneService;Lcom/android/server/telecom/Call;)I

    move-result v0

    const/4 v7, 0x2

    if-ne v0, v7, :cond_a

    const/4 v0, 0x4

    if-eq p2, v0, :cond_9

    const/4 v0, 0x3

    if-ne p2, v0, :cond_e

    :cond_9
    const/4 v0, 0x5

    if-ne p3, v0, :cond_e

    iget-object v0, p0, Lcom/android/server/telecom/BluetoothPhoneService$3;->this$0:Lcom/android/server/telecom/BluetoothPhoneService;

    # invokes: Lcom/android/server/telecom/BluetoothPhoneService;->getActiveCallCount()I
    invoke-static {v0}, Lcom/android/server/telecom/BluetoothPhoneService;->access$1200(Lcom/android/server/telecom/BluetoothPhoneService;)I

    move-result v0

    const/4 v7, 0x2

    if-lt v0, v7, :cond_d

    iget-object v0, p0, Lcom/android/server/telecom/BluetoothPhoneService$3;->this$0:Lcom/android/server/telecom/BluetoothPhoneService;

    # getter for: Lcom/android/server/telecom/BluetoothPhoneService;->mCdmaActiveCallCount:I
    invoke-static {v0}, Lcom/android/server/telecom/BluetoothPhoneService;->access$1300(Lcom/android/server/telecom/BluetoothPhoneService;)I

    move-result v0

    iget-object v7, p0, Lcom/android/server/telecom/BluetoothPhoneService$3;->this$0:Lcom/android/server/telecom/BluetoothPhoneService;

    # invokes: Lcom/android/server/telecom/BluetoothPhoneService;->getActiveCallCount()I
    invoke-static {v7}, Lcom/android/server/telecom/BluetoothPhoneService;->access$1200(Lcom/android/server/telecom/BluetoothPhoneService;)I

    move-result v7

    if-eq v0, v7, :cond_d

    const-string v0, "BluetoothPhoneService"

    const-string v7, "set cdma SecondCall state"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v0, v7, v8}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/BluetoothPhoneService$3;->this$0:Lcom/android/server/telecom/BluetoothPhoneService;

    iget-object v7, p0, Lcom/android/server/telecom/BluetoothPhoneService$3;->this$0:Lcom/android/server/telecom/BluetoothPhoneService;

    # invokes: Lcom/android/server/telecom/BluetoothPhoneService;->getActiveCallCount()I
    invoke-static {v7}, Lcom/android/server/telecom/BluetoothPhoneService;->access$1200(Lcom/android/server/telecom/BluetoothPhoneService;)I

    move-result v7

    # setter for: Lcom/android/server/telecom/BluetoothPhoneService;->mCdmaActiveCallCount:I
    invoke-static {v0, v7}, Lcom/android/server/telecom/BluetoothPhoneService;->access$1302(Lcom/android/server/telecom/BluetoothPhoneService;I)I

    const/4 v0, 0x1

    # setter for: Lcom/android/server/telecom/BluetoothPhoneService;->mCdmaIsSecondCallActive:Z
    invoke-static {v0}, Lcom/android/server/telecom/BluetoothPhoneService;->access$1402(Z)Z

    :cond_a
    :goto_3
    const-string v0, "BluetoothPhoneService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "old : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", new : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", numPCall : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", numPActive : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", numCActive : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", numPHeld : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", numCRinging : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", isConference : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v0, v7, v8}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x5

    if-ne p2, v0, :cond_b

    const/4 v0, 0x6

    if-eq p3, v0, :cond_c

    :cond_b
    const/4 v0, 0x6

    if-ne p2, v0, :cond_13

    const/4 v0, 0x5

    if-ne p3, v0, :cond_13

    :cond_c
    const/4 v0, 0x1

    if-le v5, v0, :cond_12

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getParentCall()Lcom/android/server/telecom/Call;

    move-result-object v0

    if-eqz v0, :cond_f

    const-string v0, "BluetoothPhoneService"

    const-string v1, "Skip childCall state change"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_d
    iget-object v0, p0, Lcom/android/server/telecom/BluetoothPhoneService$3;->this$0:Lcom/android/server/telecom/BluetoothPhoneService;

    # invokes: Lcom/android/server/telecom/BluetoothPhoneService;->getActiveCallCount()I
    invoke-static {v0}, Lcom/android/server/telecom/BluetoothPhoneService;->access$1200(Lcom/android/server/telecom/BluetoothPhoneService;)I

    move-result v0

    const/4 v7, 0x2

    if-ge v0, v7, :cond_a

    const-string v0, "BluetoothPhoneService"

    const-string v7, "set cdma non call or 1st call"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v0, v7, v8}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/BluetoothPhoneService$3;->this$0:Lcom/android/server/telecom/BluetoothPhoneService;

    iget-object v7, p0, Lcom/android/server/telecom/BluetoothPhoneService$3;->this$0:Lcom/android/server/telecom/BluetoothPhoneService;

    # invokes: Lcom/android/server/telecom/BluetoothPhoneService;->getActiveCallCount()I
    invoke-static {v7}, Lcom/android/server/telecom/BluetoothPhoneService;->access$1200(Lcom/android/server/telecom/BluetoothPhoneService;)I

    move-result v7

    # setter for: Lcom/android/server/telecom/BluetoothPhoneService;->mCdmaActiveCallCount:I
    invoke-static {v0, v7}, Lcom/android/server/telecom/BluetoothPhoneService;->access$1302(Lcom/android/server/telecom/BluetoothPhoneService;I)I

    const/4 v0, 0x0

    # setter for: Lcom/android/server/telecom/BluetoothPhoneService;->mCdmaIsSecondCallActive:Z
    invoke-static {v0}, Lcom/android/server/telecom/BluetoothPhoneService;->access$1402(Z)Z

    goto/16 :goto_3

    :cond_e
    iget-object v0, p0, Lcom/android/server/telecom/BluetoothPhoneService$3;->this$0:Lcom/android/server/telecom/BluetoothPhoneService;

    # invokes: Lcom/android/server/telecom/BluetoothPhoneService;->getActiveCallCount()I
    invoke-static {v0}, Lcom/android/server/telecom/BluetoothPhoneService;->access$1200(Lcom/android/server/telecom/BluetoothPhoneService;)I

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    # setter for: Lcom/android/server/telecom/BluetoothPhoneService;->mCdmaIsSecondCallActive:Z
    invoke-static {v0}, Lcom/android/server/telecom/BluetoothPhoneService;->access$1402(Z)Z

    iget-object v0, p0, Lcom/android/server/telecom/BluetoothPhoneService$3;->this$0:Lcom/android/server/telecom/BluetoothPhoneService;

    const/4 v7, 0x0

    # setter for: Lcom/android/server/telecom/BluetoothPhoneService;->mCdmaActiveCallCount:I
    invoke-static {v0, v7}, Lcom/android/server/telecom/BluetoothPhoneService;->access$1302(Lcom/android/server/telecom/BluetoothPhoneService;I)I

    goto/16 :goto_3

    :cond_f
    if-ne v5, v6, :cond_10

    const-string v0, "BluetoothPhoneService"

    const-string v1, "Now swaping active to hold, update when hold to active"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_10
    add-int v0, v2, v6

    if-ne v5, v0, :cond_11

    const-string v0, "BluetoothPhoneService"

    const-string v1, "Now answer waiting call, update when waiting to active"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_11
    if-nez v1, :cond_13

    if-ne v5, v4, :cond_13

    const-string v0, "BluetoothPhoneService"

    const-string v1, "Now swaping hold to active, update when active to hold"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_12
    const/4 v0, 0x1

    if-ne v5, v0, :cond_13

    if-nez v4, :cond_13

    if-lez v3, :cond_13

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getParentCall()Lcom/android/server/telecom/Call;

    move-result-object v0

    if-eqz v0, :cond_13

    const-string v0, "BluetoothPhoneService"

    const-string v1, "When merge call to conference call, wait getActiveCall is not null"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_13
    iget-object v0, p0, Lcom/android/server/telecom/BluetoothPhoneService$3;->this$0:Lcom/android/server/telecom/BluetoothPhoneService;

    # invokes: Lcom/android/server/telecom/BluetoothPhoneService;->getCurrentCallPhoneType(Lcom/android/server/telecom/Call;)I
    invoke-static {v0, p1}, Lcom/android/server/telecom/BluetoothPhoneService;->access$1100(Lcom/android/server/telecom/BluetoothPhoneService;Lcom/android/server/telecom/Call;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_14

    const/4 v0, 0x4

    if-eq p2, v0, :cond_14

    const/4 v0, 0x7

    if-ne p3, v0, :cond_14

    add-int v0, v6, v4

    if-lez v0, :cond_14

    const-string v0, "BluetoothPhoneService"

    const-string v1, "When disconnect call while conference call on CDMA network, update when all call to disconnect"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_14
    iget-object v0, p0, Lcom/android/server/telecom/BluetoothPhoneService$3;->this$0:Lcom/android/server/telecom/BluetoothPhoneService;

    const/4 v1, 0x0

    # invokes: Lcom/android/server/telecom/BluetoothPhoneService;->updateHeadsetWithCallState(Z)V
    invoke-static {v0, v1}, Lcom/android/server/telecom/BluetoothPhoneService;->access$600(Lcom/android/server/telecom/BluetoothPhoneService;Z)V

    goto/16 :goto_0

    :cond_15
    move v0, v2

    move v2, v3

    goto/16 :goto_2
.end method

.method public onForegroundCallChanged(Lcom/android/server/telecom/Call;Lcom/android/server/telecom/Call;)V
    .locals 0

    return-void
.end method

.method public onIsConferencedChanged(Lcom/android/server/telecom/Call;)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getParentCall()Lcom/android/server/telecom/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "BluetoothPhoneService"

    const-string v1, "Ignoring onIsConferenceChanged from child call with new parent"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getChildCalls()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const-string v0, "BluetoothPhoneService"

    const-string v1, "Ignoring onIsConferenceChanged from parent with only one child call"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const-string v0, "BluetoothPhoneService"

    const-string v1, "Do not anything on onIsConferenceChanged"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

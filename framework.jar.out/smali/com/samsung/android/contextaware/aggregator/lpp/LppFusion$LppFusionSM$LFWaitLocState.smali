.class Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFWaitLocState;
.super Lcom/android/internal/util/State;
.source "LppFusion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LFWaitLocState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;


# direct methods
.method constructor <init>(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFWaitLocState;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    const-string v0, "LppFusion"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Entering "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFWaitLocState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public exit()V
    .locals 3

    const-string v0, "LppFusion"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exiting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFWaitLocState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 11

    const-string v7, "LppFusion"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Handling message "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->vals:[Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$StateMsg;

    iget v10, p1, Landroid/os/Message;->what:I

    aget-object v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " in "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFWaitLocState;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v7, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$1;->$SwitchMap$com$samsung$android$contextaware$aggregator$lpp$LppFusion$StateMsg:[I

    sget-object v8, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->vals:[Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$StateMsg;

    iget v9, p1, Landroid/os/Message;->what:I

    aget-object v8, v8, v9

    invoke-virtual {v8}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$StateMsg;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    :pswitch_0
    const-string v7, "LppFusion"

    const-string v8, "Msg not handled"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    :goto_0
    return v7

    :pswitch_1
    iget-object v7, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFWaitLocState;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    iget-object v7, v7, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    # getter for: Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->mLogManager:Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;
    invoke-static {v7}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->access$000(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;)Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;

    move-result-object v7

    const/4 v8, 0x6

    const-string v9, "LocManListener\t Location is delivered to Algo"

    invoke-virtual {v7, v8, v9}, Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;->LogData(ILjava/lang/String;)V

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/util/ArrayList;

    const-string v7, "LppFusion"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "loc list size:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v3, v7, [Landroid/location/Location;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/location/Location;

    move-object v0, v3

    array-length v5, v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v5, :cond_0

    aget-object v2, v0, v1

    iget-object v7, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFWaitLocState;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    iget-object v7, v7, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    # getter for: Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->mLppAlgo:Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;
    invoke-static {v7}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->access$400(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;)Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;

    move-result-object v7

    new-instance v8, Landroid/location/Location;

    invoke-direct {v8, v2}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    invoke-virtual {v7, v8}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->deliverLocationData(Landroid/location/Location;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    iget-object v7, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFWaitLocState;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    iget-object v8, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFWaitLocState;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    # getter for: Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->mIdleState:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFIdleState;
    invoke-static {v8}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->access$1100(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;)Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFIdleState;

    move-result-object v8

    # invokes: Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v7, v8}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->access$1200(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;Lcom/android/internal/util/IState;)V

    iget-object v7, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFWaitLocState;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    # invokes: Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->goToSleep()V
    invoke-static {v7}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->access$900(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;)V

    :goto_2
    const/4 v7, 0x1

    goto :goto_0

    :pswitch_2
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/util/ArrayList;

    const-string v7, "LppFusion"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "batch loc list size:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-array v4, v7, [Landroid/location/Location;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/location/Location;

    move-object v0, v4

    array-length v5, v0

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v5, :cond_1

    aget-object v2, v0, v1

    iget-object v7, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFWaitLocState;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    iget-object v7, v7, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    # getter for: Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->mLppAlgo:Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;
    invoke-static {v7}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->access$400(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;)Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;

    move-result-object v7

    new-instance v8, Landroid/location/Location;

    invoke-direct {v8, v2}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    invoke-virtual {v7, v8}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->deliverLocationData(Landroid/location/Location;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_1
    iget-object v7, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFWaitLocState;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    iget-object v8, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFWaitLocState;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    # getter for: Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->mIdleState:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFIdleState;
    invoke-static {v8}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->access$1100(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;)Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFIdleState;

    move-result-object v8

    # invokes: Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v7, v8}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->access$1300(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;Lcom/android/internal/util/IState;)V

    iget-object v7, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFWaitLocState;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    # invokes: Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->goToSleep()V
    invoke-static {v7}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->access$900(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;)V

    goto :goto_2

    :pswitch_3
    iget-object v7, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFWaitLocState;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    iget-object v7, v7, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    # getter for: Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->mListener:Lcom/samsung/android/contextaware/aggregator/lpp/ILppDataProvider;
    invoke-static {v7}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->access$1400(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;)Lcom/samsung/android/contextaware/aggregator/lpp/ILppDataProvider;

    move-result-object v8

    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/location/Location;

    invoke-interface {v8, v7}, Lcom/samsung/android/contextaware/aggregator/lpp/ILppDataProvider;->onLocationChanged(Landroid/location/Location;)V

    iget-object v7, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFWaitLocState;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    iget-object v8, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFWaitLocState;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    # getter for: Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->mIdleState:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFIdleState;
    invoke-static {v8}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->access$1100(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;)Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFIdleState;

    move-result-object v8

    # invokes: Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v7, v8}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->access$1500(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;Lcom/android/internal/util/IState;)V

    iget-object v7, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFWaitLocState;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    # invokes: Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->goToSleep()V
    invoke-static {v7}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->access$900(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;)V

    goto :goto_2

    :pswitch_4
    iget-object v7, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFWaitLocState;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    iget-object v8, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFWaitLocState;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    # getter for: Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->mIdleState:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFIdleState;
    invoke-static {v8}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->access$1100(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;)Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFIdleState;

    move-result-object v8

    # invokes: Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v7, v8}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->access$1600(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;Lcom/android/internal/util/IState;)V

    iget-object v7, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFWaitLocState;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    # invokes: Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->goToSleep()V
    invoke-static {v7}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->access$900(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;)V

    goto/16 :goto_2

    :pswitch_5
    iget-object v7, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFWaitLocState;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    iget-object v7, v7, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    # getter for: Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->mLppLm:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;
    invoke-static {v7}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->access$300(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;)Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->stop()V

    iget-object v7, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFWaitLocState;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    iget-object v7, v7, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    # getter for: Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->mLppAlgo:Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;
    invoke-static {v7}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->access$400(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;)Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/contextaware/aggregator/lpp/algorithm/LppAlgorithm;->stop()V

    iget-object v7, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFWaitLocState;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    iget-object v7, v7, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    # getter for: Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->mLogManager:Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;
    invoke-static {v7}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->access$000(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;)Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/contextaware/aggregator/lpp/log/LppLogManager;->stop()V

    iget-object v7, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFWaitLocState;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    iget-object v8, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFWaitLocState;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    # getter for: Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->mIdleState:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFIdleState;
    invoke-static {v8}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->access$1100(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;)Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFIdleState;

    move-result-object v8

    # invokes: Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v7, v8}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->access$1700(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;Lcom/android/internal/util/IState;)V

    iget-object v7, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM$LFWaitLocState;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    iget-object v7, v7, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;

    # getter for: Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->mStateMachine:Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;
    invoke-static {v7}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;->access$1000(Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion;)Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;

    move-result-object v7

    invoke-virtual {v7}, Lcom/samsung/android/contextaware/aggregator/lpp/LppFusion$LppFusionSM;->exit()V

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

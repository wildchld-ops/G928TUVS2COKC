.class Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;
.super Lcom/android/internal/util/State;
.source "LppLocationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GpsBatch"
.end annotation


# instance fields
.field private deliveredT:J

.field private exit:Z

.field private final mListBatchLoc:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation
.end field

.field private period:I

.field private final requestId:I

.field final synthetic this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

.field private walk:Z


# direct methods
.method constructor <init>(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;)V
    .locals 3

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    iput v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->requestId:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->period:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->mListBatchLoc:Ljava/util/ArrayList;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->deliveredT:J

    iput-boolean v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->exit:Z

    iput-boolean v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->walk:Z

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v0, "LppLocationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Entering "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;

    # getter for: Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->mLppResolution:I
    invoke-static {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->access$4900(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x3

    iput v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->period:I

    :goto_0
    const-string v0, "LppLocationManager"

    const-string v1, "error in start batch:0"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    iget-object v1, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    # getter for: Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->mVehNM:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$VehNM;
    invoke-static {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->access$600(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;)Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$VehNM;

    move-result-object v1

    # invokes: Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->access$5400(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;Lcom/android/internal/util/IState;)V

    iput-boolean v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->exit:Z

    iput-boolean v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->walk:Z

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->mListBatchLoc:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->deliveredT:J

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;

    # getter for: Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->mLppResolution:I
    invoke-static {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->access$4900(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;)I

    move-result v0

    if-ne v0, v4, :cond_1

    const/4 v0, 0x2

    iput v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->period:I

    goto :goto_0

    :cond_1
    iput v4, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->period:I

    goto :goto_0
.end method

.method public exit()V
    .locals 6

    const-string v0, "LppLocationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exiting "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    sget-object v1, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->GPS_BATCH_TIMEOUT:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->ordinal()I

    move-result v1

    # invokes: Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->removeMessages(I)V
    invoke-static {v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->access$6300(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;I)V

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;

    # getter for: Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->mListener:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManagerListener;
    invoke-static {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->access$1000(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;)Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManagerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManagerListener;->gpsBatchStopped()V

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;

    # getter for: Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->mLocMgr:Landroid/location/LocationManager;
    invoke-static {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->access$1200(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;)Landroid/location/LocationManager;

    move-result-object v0

    const-string/jumbo v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;

    # getter for: Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->mListener:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManagerListener;
    invoke-static {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->access$1000(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;)Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManagerListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManagerListener;->gpsOffBatchStopped()V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;

    # getter for: Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->mPassiveSM:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;
    invoke-static {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->access$6400(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;)Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->GPS_BATCH_ENDED:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$PassiveSM;->sendMessage(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    iget-object v0, v0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;

    # getter for: Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->mLocMgr:Landroid/location/LocationManager;
    invoke-static {v0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->access$1200(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;)Landroid/location/LocationManager;

    move-result-object v0

    const-string/jumbo v1, "gps"

    iget-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    iget-object v2, v2, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;

    # getter for: Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->mFindGps:Landroid/location/LocationListener;
    invoke-static {v2}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->access$1100(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;)Landroid/location/LocationListener;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    iget-object v3, v3, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;

    # getter for: Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->mLooper:Landroid/os/Looper;
    invoke-static {v3}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->access$1800(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;)Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/location/LocationManager;->requestSingleUpdate(Ljava/lang/String;Landroid/location/LocationListener;Landroid/os/Looper;)V

    iget-object v0, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    sget-object v1, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->GPS_NOT_AVAILABLE:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;

    invoke-virtual {v1}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->ordinal()I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    iget-object v2, v2, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;

    # getter for: Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->mGpsTimeout:J
    invoke-static {v2}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->access$2100(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->sendMessageDelayed(IJ)V

    goto :goto_0
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 12

    const-string v7, "LppLocationManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Handling message "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->vals:[Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;

    iget v10, p1, Landroid/os/Message;->what:I

    aget-object v9, v9, v10

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " in "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v7, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$1;->$SwitchMap$com$samsung$android$contextaware$aggregator$lpp$LppLocationManager$Msg:[I

    sget-object v8, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->vals:[Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;

    iget v9, p1, Landroid/os/Message;->what:I

    aget-object v8, v8, v9

    invoke-virtual {v8}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    :pswitch_0
    const/4 v7, 0x0

    :goto_0
    return v7

    :pswitch_1
    iget-boolean v7, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->exit:Z

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    sget-object v8, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->GPS_BATCH_TIMEOUT:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;

    invoke-virtual {v8}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->ordinal()I

    move-result v8

    const-wide/16 v10, 0x1388

    invoke-virtual {v7, v8, v10, v11}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->sendMessageDelayed(IJ)V

    :cond_0
    :goto_1
    :pswitch_2
    const/4 v7, 0x1

    goto :goto_0

    :pswitch_3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v7, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    sget-object v8, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->GPS_BATCH_TIMEOUT:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;

    invoke-virtual {v8}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->ordinal()I

    move-result v8

    # invokes: Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->removeMessages(I)V
    invoke-static {v7, v8}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->access$5500(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;I)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    iget-object v7, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->mListBatchLoc:Ljava/util/ArrayList;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const-string v7, "LppLocationManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "num of batch locs:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->mListBatchLoc:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    iget-object v7, v7, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;

    # getter for: Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->mListPassiveLoc:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->access$5600(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-eqz v7, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v7, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    iget-object v7, v7, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;

    # getter for: Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->mListPassiveLoc:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->access$5600(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v7, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    iget-object v7, v7, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;

    # getter for: Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->mListPassiveLoc:Ljava/util/ArrayList;
    invoke-static {v7}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->access$5600(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    new-instance v7, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch$1;

    invoke-direct {v7, p0}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch$1;-><init>(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;)V

    invoke-static {v3, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const-string v7, "LppLocationManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "deliveredT:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v10, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->deliveredT:J

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v0, v7, :cond_2

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/location/Location;

    invoke-virtual {v7}, Landroid/location/Location;->getTime()J

    move-result-wide v8

    iget-wide v10, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->deliveredT:J

    cmp-long v7, v8, v10

    if-ltz v7, :cond_3

    :cond_2
    const/4 v2, 0x0

    :goto_3
    if-ge v2, v0, :cond_4

    const/4 v7, 0x0

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :catchall_0
    move-exception v7

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    iget-object v7, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->mListBatchLoc:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_7

    iget-object v7, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->mListBatchLoc:Ljava/util/ArrayList;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/location/Location;

    iget-object v7, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->mListBatchLoc:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getTime()J

    move-result-wide v8

    invoke-virtual {v5}, Landroid/location/Location;->getTime()J

    move-result-wide v10

    cmp-long v7, v8, v10

    if-lez v7, :cond_5

    move-object v5, v4

    goto :goto_4

    :cond_6
    new-instance v6, Landroid/location/Location;

    invoke-direct {v6, v5}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    iget-object v7, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->mListBatchLoc:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    iget-object v7, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    iget-object v7, v7, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;

    # getter for: Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->mListener:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManagerListener;
    invoke-static {v7}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->access$1000(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;)Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManagerListener;

    move-result-object v7

    invoke-interface {v7, v6}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManagerListener;->batchLocUpdate(Landroid/location/Location;)V

    iget-object v7, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    iget-object v7, v7, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;

    # getter for: Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->mListener:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManagerListener;
    invoke-static {v7}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->access$1000(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;)Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManagerListener;

    move-result-object v7

    invoke-interface {v7, v3}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManagerListener;->batchLocListUpdate(Ljava/util/ArrayList;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->deliveredT:J

    :cond_7
    iget-boolean v7, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->exit:Z

    const/4 v8, 0x1

    if-ne v7, v8, :cond_0

    iget-boolean v7, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->walk:Z

    const/4 v8, 0x1

    if-ne v7, v8, :cond_8

    iget-object v7, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    iget-object v8, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    # getter for: Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->mWalkNM:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$WalkNM;
    invoke-static {v8}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->access$400(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;)Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$WalkNM;

    move-result-object v8

    # invokes: Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v7, v8}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->access$5700(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    :cond_8
    iget-object v7, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    iget-object v8, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    # getter for: Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->mStatNM:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$StatNM;
    invoke-static {v8}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->access$800(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;)Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$StatNM;

    move-result-object v8

    # invokes: Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v7, v8}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->access$5800(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    :pswitch_4
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->walk:Z

    :pswitch_5
    iget-object v7, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    sget-object v8, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->GPS_BATCH_TIMEOUT:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;

    invoke-virtual {v8}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->ordinal()I

    move-result v8

    # invokes: Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->removeMessages(I)V
    invoke-static {v7, v8}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->access$5900(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;I)V

    iget-object v7, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    sget-object v8, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->GPS_BATCH_TIMEOUT:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;

    invoke-virtual {v8}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$Msg;->ordinal()I

    move-result v8

    const-wide/16 v10, 0x1388

    invoke-virtual {v7, v8, v10, v11}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->sendMessageDelayed(IJ)V

    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->exit:Z

    goto/16 :goto_1

    :pswitch_6
    iget-object v7, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    iget-object v7, v7, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;

    # getter for: Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->mListener:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManagerListener;
    invoke-static {v7}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->access$1000(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;)Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManagerListener;

    move-result-object v7

    invoke-interface {v7}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManagerListener;->locationNotFound()V

    iget-boolean v7, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->exit:Z

    const/4 v8, 0x1

    if-ne v7, v8, :cond_a

    iget-boolean v7, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->walk:Z

    const/4 v8, 0x1

    if-ne v7, v8, :cond_9

    iget-object v7, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    iget-object v8, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    # getter for: Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->mWalkNM:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$WalkNM;
    invoke-static {v8}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->access$400(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;)Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$WalkNM;

    move-result-object v8

    # invokes: Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v7, v8}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->access$6000(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    :cond_9
    iget-object v7, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    iget-object v8, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    # getter for: Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->mStatNM:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$StatNM;
    invoke-static {v8}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->access$800(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;)Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$StatNM;

    move-result-object v8

    # invokes: Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v7, v8}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->access$6100(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    :cond_a
    iget-object v7, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    iget-object v8, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    # getter for: Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->mVehNM:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$VehNM;
    invoke-static {v8}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->access$600(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;)Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$VehNM;

    move-result-object v8

    # invokes: Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v7, v8}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->access$6200(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;Lcom/android/internal/util/IState;)V

    goto/16 :goto_1

    :pswitch_7
    iget-object v7, p0, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM$GpsBatch;->this$1:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    iget-object v7, v7, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->this$0:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;

    # getter for: Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->mStateMachine:Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;
    invoke-static {v7}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;->access$2300(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager;)Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;

    move-result-object v7

    # invokes: Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->exit()V
    invoke-static {v7}, Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;->access$2400(Lcom/samsung/android/contextaware/aggregator/lpp/LppLocationManager$LppLocManSM;)V

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_2
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_6
    .end packed-switch
.end method

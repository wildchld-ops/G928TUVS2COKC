.class Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction$1;
.super Lcom/nuance/connect/comm/AbstractTransaction$AbstractResponseCallback;


# instance fields
.field final synthetic this$1:Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;


# direct methods
.method constructor <init>(Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction$1;->this$1:Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;

    invoke-direct {p0, p1}, Lcom/nuance/connect/comm/AbstractTransaction$AbstractResponseCallback;-><init>(Lcom/nuance/connect/comm/AbstractTransaction;)V

    return-void
.end method


# virtual methods
.method public onCancel(Lcom/nuance/connect/comm/Command;)V
    .locals 4

    iget-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction$1;->this$1:Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;

    iget-object v0, v0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "onCancel("

    iget-object v2, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction$1;->this$1:Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;

    iget-object v2, v2, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;->predictionRequestId:Ljava/lang/String;

    const-string v3, ")"

    invoke-interface {v0, v1, v2, v3}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction$1;->this$1:Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;

    iget-object v0, v0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;->this$0:Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;

    iget-object v1, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction$1;->this$1:Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;

    iget-object v1, v1, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;->predictionRequestId:Ljava/lang/String;

    # invokes: Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->sendPredictionCancel(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->access$1400(Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction$1;->this$1:Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;

    const/4 v1, 0x0

    # setter for: Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;->currentCommand:Lcom/nuance/connect/comm/Command;
    invoke-static {v0, v1}, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;->access$802(Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;Lcom/nuance/connect/comm/Command;)Lcom/nuance/connect/comm/Command;

    return-void
.end method

.method public onFailure(Lcom/nuance/connect/comm/Command;)V
    .locals 4

    iget-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction$1;->this$1:Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;

    iget-object v0, v0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;->this$0:Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;

    iget-object v1, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction$1;->this$1:Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;

    iget-object v1, v1, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;->predictionRequestId:Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "There was a failure when attempting the prediction"

    # invokes: Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->sendPredictionFailure(Ljava/lang/String;ILjava/lang/String;)V
    invoke-static {v0, v1, v2, v3}, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->access$700(Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;Ljava/lang/String;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction$1;->this$1:Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;

    const/4 v1, 0x0

    # setter for: Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;->currentCommand:Lcom/nuance/connect/comm/Command;
    invoke-static {v0, v1}, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;->access$802(Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;Lcom/nuance/connect/comm/Command;)Lcom/nuance/connect/comm/Command;

    return-void
.end method

.method public onResponse(Lcom/nuance/connect/comm/Response;)V
    .locals 14

    iget-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction$1;->this$1:Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;

    iget-object v0, v0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "onResponse() id="

    iget-object v2, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction$1;->this$1:Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;

    iget-object v2, v2, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;->predictionRequestId:Ljava/lang/String;

    const-string v3, " onResponse "

    const-string v4, " status="

    iget v5, p1, Lcom/nuance/connect/comm/Response;->status:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction$1;->this$1:Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;->predictionCloudEndMicro:J

    iget-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction$1;->this$1:Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;

    # getter for: Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;->currentCommand:Lcom/nuance/connect/comm/Command;
    invoke-static {v0}, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;->access$800(Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;)Lcom/nuance/connect/comm/Command;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction$1;->this$1:Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;

    # getter for: Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;->currentCommand:Lcom/nuance/connect/comm/Command;
    invoke-static {v0}, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;->access$800(Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;)Lcom/nuance/connect/comm/Command;

    move-result-object v0

    iget-boolean v0, v0, Lcom/nuance/connect/comm/Command;->canceled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction$1;->this$1:Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;

    # getter for: Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;->currentCommand:Lcom/nuance/connect/comm/Command;
    invoke-static {v0}, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;->access$800(Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;)Lcom/nuance/connect/comm/Command;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction$1;->onCancel(Lcom/nuance/connect/comm/Command;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction$1;->this$1:Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;

    const/4 v1, 0x0

    # setter for: Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;->currentCommand:Lcom/nuance/connect/comm/Command;
    invoke-static {v0, v1}, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;->access$802(Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;Lcom/nuance/connect/comm/Command;)Lcom/nuance/connect/comm/Command;

    iget v0, p1, Lcom/nuance/connect/comm/Response;->status:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction$1;->this$1:Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;

    iget-object v0, v0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;->this$0:Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;

    iget-object v1, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction$1;->this$1:Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;

    iget-object v1, v1, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;->predictionRequestId:Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "There was a network failure ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/nuance/connect/comm/Response;->status:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") when attempting the prediction"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->sendPredictionFailure(Ljava/lang/String;ILjava/lang/String;)V
    invoke-static {v0, v1, v2, v3}, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->access$700(Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    :pswitch_0
    const/4 v6, 0x0

    :try_start_0
    iget-object v0, p1, Lcom/nuance/connect/comm/Response;->responseArray:[B

    invoke-static {v0}, Lcom/nuance/connect/proto/Prediction$PredictionResponseV1;->parseFrom([B)Lcom/nuance/connect/proto/Prediction$PredictionResponseV1;
    :try_end_0
    .catch Lcom/a/a/j; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v12, v0

    :goto_1
    if-eqz v12, :cond_6

    iget-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction$1;->this$1:Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;

    new-instance v1, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionResultImpl;

    iget-object v2, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction$1;->this$1:Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;

    iget-object v2, v2, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;->predictionRequestId:Ljava/lang/String;

    iget-object v3, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction$1;->this$1:Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;

    # getter for: Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;->predictionRequest:Lcom/nuance/connect/api/ChinesePredictionService$ChinesePredictionRequest;
    invoke-static {v3}, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;->access$1000(Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;)Lcom/nuance/connect/api/ChinesePredictionService$ChinesePredictionRequest;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionResultImpl;-><init>(Ljava/lang/String;Lcom/nuance/connect/api/ChinesePredictionService$ChinesePredictionRequest;)V

    # setter for: Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;->predictionResult:Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionResultImpl;
    invoke-static {v0, v1}, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;->access$902(Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionResultImpl;)Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionResultImpl;

    invoke-virtual {v12}, Lcom/nuance/connect/proto/Prediction$PredictionResponseV1;->getPredictionResultCount()I

    move-result v13

    const/4 v0, 0x0

    move v11, v0

    :goto_2
    if-ge v11, v13, :cond_5

    iget-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction$1;->this$1:Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;

    # getter for: Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;->predictionRequestMaxCount:I
    invoke-static {v0}, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;->access$1100(Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;)I

    move-result v0

    if-ge v11, v0, :cond_5

    invoke-virtual {v12, v11}, Lcom/nuance/connect/proto/Prediction$PredictionResponseV1;->getPredictionResult(I)Lcom/nuance/connect/proto/Prediction$PredictionResultV1;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->getAttributeCount()I

    move-result v0

    new-array v5, v0, [I

    iget-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction$1;->this$1:Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;

    # getter for: Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;->predictionStringBuilder:Ljava/lang/StringBuilder;
    invoke-static {v0}, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;->access$1200(Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    const/4 v0, 0x0

    :goto_3
    invoke-virtual {v1}, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->getPhraseCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction$1;->this$1:Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;

    # getter for: Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;->predictionStringBuilder:Ljava/lang/StringBuilder;
    invoke-static {v2}, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;->access$1200(Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1, v0}, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->getPhrase(I)I

    move-result v3

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v5, v0

    iget-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction$1;->this$1:Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;

    iget-object v0, v0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "PredictionTransaction id="

    iget-object v2, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction$1;->this$1:Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;

    iget-object v2, v2, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;->predictionRequestId:Ljava/lang/String;

    const-string v3, " onResponse "

    const-string v4, " error processing buffer: "

    invoke-virtual {v5}, Lcom/a/a/j;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v12, v6

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction$1;->this$1:Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;

    # getter for: Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;->predictionStringBuilder:Ljava/lang/StringBuilder;
    invoke-static {v0}, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;->access$1200(Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction$1;->this$1:Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;

    # getter for: Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;->predictionStringBuilder:Ljava/lang/StringBuilder;
    invoke-static {v0}, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;->access$1200(Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    const/4 v0, 0x0

    :goto_4
    invoke-virtual {v1}, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->getSpellCount()I

    move-result v3

    if-ge v0, v3, :cond_2

    iget-object v3, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction$1;->this$1:Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;

    # getter for: Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;->predictionStringBuilder:Ljava/lang/StringBuilder;
    invoke-static {v3}, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;->access$1200(Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1, v0}, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->getSpell(I)I

    move-result v4

    int-to-char v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_2
    iget-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction$1;->this$1:Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;

    # getter for: Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;->predictionStringBuilder:Ljava/lang/StringBuilder;
    invoke-static {v0}, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;->access$1200(Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction$1;->this$1:Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;

    # getter for: Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;->predictionStringBuilder:Ljava/lang/StringBuilder;
    invoke-static {v0}, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;->access$1200(Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    const/4 v0, 0x0

    :goto_5
    invoke-virtual {v1}, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->getFullSpellCount()I

    move-result v4

    if-ge v0, v4, :cond_3

    iget-object v4, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction$1;->this$1:Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;

    # getter for: Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;->predictionStringBuilder:Ljava/lang/StringBuilder;
    invoke-static {v4}, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;->access$1200(Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1, v0}, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->getFullSpell(I)I

    move-result v6

    int-to-char v6, v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_3
    iget-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction$1;->this$1:Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;

    # getter for: Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;->predictionStringBuilder:Ljava/lang/StringBuilder;
    invoke-static {v0}, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;->access$1200(Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction$1;->this$1:Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;

    # getter for: Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;->predictionStringBuilder:Ljava/lang/StringBuilder;
    invoke-static {v0}, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;->access$1200(Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v6, 0x0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    const/4 v0, 0x0

    :goto_6
    invoke-virtual {v1}, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->getAttributeCount()I

    move-result v6

    if-ge v0, v6, :cond_4

    invoke-virtual {v1, v0}, Lcom/nuance/connect/proto/Prediction$PredictionResultV1;->getAttribute(I)I

    move-result v6

    int-to-char v6, v6

    aput v6, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_4
    new-instance v0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionImpl;

    iget-object v1, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction$1;->this$1:Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;

    iget-object v1, v1, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;->predictionRequestId:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[I)V

    iget-object v1, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction$1;->this$1:Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;

    iget-object v4, v1, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v5, "PredictionTransaction Prediction id="

    iget-object v1, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction$1;->this$1:Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;

    iget-object v6, v1, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;->predictionRequestId:Ljava/lang/String;

    const-string v7, " string="

    const-string v9, " spell="

    move-object v8, v2

    move-object v10, v3

    invoke-interface/range {v4 .. v10}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction$1;->this$1:Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;

    # getter for: Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;->predictionResult:Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionResultImpl;
    invoke-static {v1}, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;->access$900(Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;)Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionResultImpl;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionResultImpl;->addPrediction(Lcom/nuance/connect/api/ChinesePredictionService$ChinesePrediction;)V

    add-int/lit8 v0, v11, 0x1

    move v11, v0

    goto/16 :goto_2

    :cond_5
    iget-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction$1;->this$1:Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;

    # invokes: Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;->calculateEndTime()V
    invoke-static {v0}, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;->access$600(Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;)V

    iget-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction$1;->this$1:Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;

    # getter for: Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;->predictionResult:Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionResultImpl;
    invoke-static {v0}, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;->access$900(Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;)Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionResultImpl;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction$1;->this$1:Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;

    iget-wide v2, v1, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;->predictionSpent:J

    invoke-virtual {v0, v2, v3}, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionResultImpl;->setPredictionTime(J)V

    iget-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction$1;->this$1:Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;

    iget-object v0, v0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;->log:Lcom/nuance/connect/util/Logger$Log;

    const-string v1, "PredictionTransaction Result id="

    iget-object v2, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction$1;->this$1:Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;

    iget-object v2, v2, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;->predictionRequestId:Ljava/lang/String;

    const-string v3, " totalPredictionTime="

    iget-object v4, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction$1;->this$1:Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;

    iget-wide v4, v4, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;->predictionSpent:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, " cloudTime="

    iget-object v6, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction$1;->this$1:Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;

    iget-wide v6, v6, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;->predictionCloudSpent:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v7, " cloudCoreTime="

    invoke-virtual {v12}, Lcom/nuance/connect/proto/Prediction$PredictionResponseV1;->getCoreTime()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface/range {v0 .. v8}, Lcom/nuance/connect/util/Logger$Log;->d(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction$1;->this$1:Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;

    iget-object v0, v0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;->this$0:Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;

    iget-object v1, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction$1;->this$1:Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;

    # getter for: Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;->predictionResult:Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionResultImpl;
    invoke-static {v1}, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;->access$900(Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;)Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionResultImpl;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction$1;->this$1:Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;

    iget-wide v2, v2, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;->predictionSpent:J

    iget-object v4, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction$1;->this$1:Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;

    iget-wide v4, v4, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;->predictionCloudSpent:J

    # invokes: Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->sendPredictionResponse(Lcom/nuance/connect/api/ChinesePredictionService$ChinesePredictionResult;JJ)V
    invoke-static/range {v0 .. v5}, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->access$1300(Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;Lcom/nuance/connect/api/ChinesePredictionService$ChinesePredictionResult;JJ)V

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction$1;->this$1:Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;

    iget-object v0, v0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;->this$0:Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;

    iget-object v1, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction$1;->this$1:Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;

    iget-object v1, v1, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;->predictionRequestId:Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "There was a problem parsing the response from the server"

    # invokes: Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->sendPredictionFailure(Ljava/lang/String;ILjava/lang/String;)V
    invoke-static {v0, v1, v2, v3}, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->access$700(Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;Ljava/lang/String;ILjava/lang/String;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onRetry(Lcom/nuance/connect/comm/Command;IILjava/lang/String;)Z
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction$1;->this$1:Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;

    # invokes: Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;->calculateEndTime()V
    invoke-static {v0}, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;->access$600(Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;)V

    iget-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction$1;->this$1:Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;

    iget-object v0, v0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;->this$0:Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;

    iget-object v1, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction$1;->this$1:Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;

    iget-object v1, v1, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;->predictionRequestId:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "There was a network failure ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") when attempting the prediction"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->sendPredictionFailure(Ljava/lang/String;ILjava/lang/String;)V
    invoke-static {v0, v1, v4, v2}, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;->access$700(Lcom/nuance/connect/internal/ChinesePredictionServiceInternal;Ljava/lang/String;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction$1;->this$1:Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;

    const/4 v1, 0x0

    # setter for: Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;->currentCommand:Lcom/nuance/connect/comm/Command;
    invoke-static {v0, v1}, Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;->access$802(Lcom/nuance/connect/internal/ChinesePredictionServiceInternal$ChinesePredictionTransaction;Lcom/nuance/connect/comm/Command;)Lcom/nuance/connect/comm/Command;

    return v4
.end method

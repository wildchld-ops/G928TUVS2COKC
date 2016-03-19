.class Lcom/nuance/connect/sqlite/ChinesePredictionDataRow;
.super Ljava/lang/Object;


# instance fields
.field final ccpsVersion:Ljava/lang/String;

.field final cloudTime:J

.field final predictionId:Ljava/lang/String;

.field final resultType:I

.field final totalTime:J


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;JJI)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nuance/connect/sqlite/ChinesePredictionDataRow;->predictionId:Ljava/lang/String;

    iput-object p2, p0, Lcom/nuance/connect/sqlite/ChinesePredictionDataRow;->ccpsVersion:Ljava/lang/String;

    iput-wide p3, p0, Lcom/nuance/connect/sqlite/ChinesePredictionDataRow;->totalTime:J

    iput-wide p5, p0, Lcom/nuance/connect/sqlite/ChinesePredictionDataRow;->cloudTime:J

    iput p7, p0, Lcom/nuance/connect/sqlite/ChinesePredictionDataRow;->resultType:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ChinesePredictionDataRow id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/nuance/connect/sqlite/ChinesePredictionDataRow;->predictionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/nuance/connect/sqlite/ChinesePredictionDataRow;->ccpsVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " totalTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/nuance/connect/sqlite/ChinesePredictionDataRow;->totalTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " cloudTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/nuance/connect/sqlite/ChinesePredictionDataRow;->cloudTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " resultType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/nuance/connect/sqlite/ChinesePredictionDataRow;->resultType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

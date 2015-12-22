.class public Lcom/samsung/android/dualscreen/datastructure/graph/Edge;
.super Ljava/lang/Object;
.source "Edge.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public endVertex:Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/dualscreen/datastructure/graph/Vertex",
            "<TE;>;"
        }
    .end annotation
.end field

.field public flag:Z

.field public id:J

.field public startVertex:Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/dualscreen/datastructure/graph/Vertex",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(JLcom/samsung/android/dualscreen/datastructure/graph/Vertex;Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/samsung/android/dualscreen/datastructure/graph/Vertex",
            "<TE;>;",
            "Lcom/samsung/android/dualscreen/datastructure/graph/Vertex",
            "<TE;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/samsung/android/dualscreen/datastructure/graph/Edge;->id:J

    iput-object p3, p0, Lcom/samsung/android/dualscreen/datastructure/graph/Edge;->startVertex:Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;

    iput-object p4, p0, Lcom/samsung/android/dualscreen/datastructure/graph/Edge;->endVertex:Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/dualscreen/datastructure/graph/Edge;->flag:Z

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-class v1, Lcom/samsung/android/dualscreen/datastructure/graph/Edge;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " e"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/samsung/android/dualscreen/datastructure/graph/Edge;->id:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " (v"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/dualscreen/datastructure/graph/Edge;->startVertex:Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;

    iget-wide v2, v2, Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;->id:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " => v"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/dualscreen/datastructure/graph/Edge;->endVertex:Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;

    iget-wide v2, v2, Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;->id:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") } "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

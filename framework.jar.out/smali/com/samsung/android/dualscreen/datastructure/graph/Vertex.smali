.class public Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;
.super Ljava/lang/Object;
.source "Vertex.java"


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
.field public dummy:Z

.field public id:J

.field public incidenceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/dualscreen/datastructure/graph/Edge",
            "<TE;>;>;"
        }
    .end annotation
.end field

.field private item:Lcom/samsung/android/dualscreen/datastructure/graph/ItemWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/dualscreen/datastructure/graph/ItemWrapper",
            "<TE;>;"
        }
    .end annotation
.end field

.field public marked:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;->incidenceList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(JLcom/samsung/android/dualscreen/datastructure/graph/ItemWrapper;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/samsung/android/dualscreen/datastructure/graph/ItemWrapper",
            "<TE;>;)V"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;->incidenceList:Ljava/util/ArrayList;

    iput-wide p1, p0, Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;->id:J

    iput-object p3, p0, Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;->item:Lcom/samsung/android/dualscreen/datastructure/graph/ItemWrapper;

    iput-boolean v1, p0, Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;->marked:Z

    iput-boolean v1, p0, Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;->dummy:Z

    return-void
.end method


# virtual methods
.method public getElement()Lcom/samsung/android/dualscreen/datastructure/graph/ItemWrapper;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/samsung/android/dualscreen/datastructure/graph/ItemWrapper",
            "<TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;->item:Lcom/samsung/android/dualscreen/datastructure/graph/ItemWrapper;

    return-object v0
.end method

.method public setElement(Lcom/samsung/android/dualscreen/datastructure/graph/ItemWrapper;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/dualscreen/datastructure/graph/ItemWrapper",
            "<TE;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;->item:Lcom/samsung/android/dualscreen/datastructure/graph/ItemWrapper;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-class v1, Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "v"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "%02d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-wide v6, p0, Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " item"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;->item:Lcom/samsung/android/dualscreen/datastructure/graph/ItemWrapper;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " incidenceList="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;->incidenceList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " } "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

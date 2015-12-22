.class public Lcom/samsung/android/dualscreen/datastructure/graph/Graph;
.super Ljava/lang/Object;
.source "Graph.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDfs:Lcom/samsung/android/dualscreen/datastructure/DepthFirstSearch;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/dualscreen/datastructure/DepthFirstSearch",
            "<TE;>;"
        }
    .end annotation
.end field

.field private mEdges:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/dualscreen/datastructure/graph/Edge",
            "<TE;>;>;"
        }
    .end annotation
.end field

.field mGraphName:Ljava/lang/String;

.field private mGraphType:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TE;>;"
        }
    .end annotation
.end field

.field private mNextEdgeId:J

.field private mNextVertexId:J

.field private mVertices:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/dualscreen/datastructure/graph/Vertex",
            "<TE;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/dualscreen/datastructure/graph/Graph;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/dualscreen/datastructure/graph/Graph;->TAG:Ljava/lang/String;

    sget-boolean v0, Lcom/samsung/android/dualscreen/ContextRelationManager;->DEBUG:Z

    sput-boolean v0, Lcom/samsung/android/dualscreen/datastructure/graph/Graph;->DEBUG:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/dualscreen/datastructure/graph/Graph;->mVertices:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/dualscreen/datastructure/graph/Graph;->mEdges:Ljava/util/ArrayList;

    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/samsung/android/dualscreen/datastructure/graph/Graph;->mNextVertexId:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/dualscreen/datastructure/graph/Graph;->mNextEdgeId:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TE;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/dualscreen/datastructure/graph/Graph;->mVertices:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/dualscreen/datastructure/graph/Graph;->mEdges:Ljava/util/ArrayList;

    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/samsung/android/dualscreen/datastructure/graph/Graph;->mNextVertexId:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/dualscreen/datastructure/graph/Graph;->mNextEdgeId:J

    iput-object p1, p0, Lcom/samsung/android/dualscreen/datastructure/graph/Graph;->mGraphType:Ljava/lang/Class;

    iput-object p2, p0, Lcom/samsung/android/dualscreen/datastructure/graph/Graph;->mGraphName:Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/dualscreen/datastructure/DepthFirstSearch;

    invoke-direct {v0, p0}, Lcom/samsung/android/dualscreen/datastructure/DepthFirstSearch;-><init>(Lcom/samsung/android/dualscreen/datastructure/graph/Graph;)V

    iput-object v0, p0, Lcom/samsung/android/dualscreen/datastructure/graph/Graph;->mDfs:Lcom/samsung/android/dualscreen/datastructure/DepthFirstSearch;

    return-void
.end method

.method private idToEdge(J)Lcom/samsung/android/dualscreen/datastructure/graph/Edge;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lcom/samsung/android/dualscreen/datastructure/graph/Edge",
            "<TE;>;"
        }
    .end annotation

    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    cmp-long v3, p1, v4

    if-gez v3, :cond_0

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/dualscreen/datastructure/graph/Graph;->mEdges:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/dualscreen/datastructure/graph/Edge;

    iget-wide v4, v0, Lcom/samsung/android/dualscreen/datastructure/graph/Edge;->id:J

    cmp-long v3, v4, p1

    if-nez v3, :cond_1

    goto :goto_0

    :cond_2
    move-object v0, v2

    goto :goto_0
.end method

.method private removeEdge(J)Z
    .locals 7

    const/4 v6, 0x0

    sget-boolean v3, Lcom/samsung/android/dualscreen/datastructure/graph/Graph;->DEBUG:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/samsung/android/dualscreen/datastructure/graph/Graph;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "removeEdge() : id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/dualscreen/datastructure/graph/Graph;->idToEdge(J)Lcom/samsung/android/dualscreen/datastructure/graph/Edge;

    move-result-object v0

    if-nez v0, :cond_1

    :goto_0
    return v6

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/dualscreen/datastructure/graph/Graph;->mEdges:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v2, v0, Lcom/samsung/android/dualscreen/datastructure/graph/Edge;->startVertex:Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;

    iget-object v1, v0, Lcom/samsung/android/dualscreen/datastructure/graph/Edge;->endVertex:Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;

    invoke-virtual {p0, v2}, Lcom/samsung/android/dualscreen/datastructure/graph/Graph;->incidentEdges(Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0, v1}, Lcom/samsung/android/dualscreen/datastructure/graph/Graph;->incidentEdges(Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public adjacentVertices(Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/dualscreen/datastructure/graph/Vertex",
            "<TE;>;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/dualscreen/datastructure/graph/Vertex",
            "<TE;>;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1}, Lcom/samsung/android/dualscreen/datastructure/graph/Graph;->incidentEdges(Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/dualscreen/datastructure/graph/Edge;

    iget-object v3, v1, Lcom/samsung/android/dualscreen/datastructure/graph/Edge;->startVertex:Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;

    invoke-virtual {v3}, Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;->getElement()Lcom/samsung/android/dualscreen/datastructure/graph/ItemWrapper;

    move-result-object v3

    invoke-virtual {p1}, Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;->getElement()Lcom/samsung/android/dualscreen/datastructure/graph/ItemWrapper;

    move-result-object v4

    if-ne v3, v4, :cond_0

    iget-object v3, v1, Lcom/samsung/android/dualscreen/datastructure/graph/Edge;->endVertex:Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v3, v1, Lcom/samsung/android/dualscreen/datastructure/graph/Edge;->startVertex:Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public ancestorVertices(Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/dualscreen/datastructure/graph/Vertex",
            "<TE;>;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/dualscreen/datastructure/graph/Vertex",
            "<TE;>;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "v is null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1}, Lcom/samsung/android/dualscreen/datastructure/graph/Graph;->parentVertex(Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;)Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v1}, Lcom/samsung/android/dualscreen/datastructure/graph/Graph;->parentVertex(Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;)Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;

    move-result-object v1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public attachSubGraph(Lcom/samsung/android/dualscreen/datastructure/graph/ItemWrapper;Lcom/samsung/android/dualscreen/datastructure/graph/ItemWrapper;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/dualscreen/datastructure/graph/ItemWrapper",
            "<TE;>;",
            "Lcom/samsung/android/dualscreen/datastructure/graph/ItemWrapper",
            "<TE;>;)Z"
        }
    .end annotation

    sget-boolean v7, Lcom/samsung/android/dualscreen/datastructure/graph/Graph;->DEBUG:Z

    if-eqz v7, :cond_0

    sget-object v7, Lcom/samsung/android/dualscreen/datastructure/graph/Graph;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "attachSubGraph() : childItem="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " to candidateParentItem="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0, p2}, Lcom/samsung/android/dualscreen/datastructure/graph/Graph;->itemToVertex(Lcom/samsung/android/dualscreen/datastructure/graph/ItemWrapper;)Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/samsung/android/dualscreen/datastructure/graph/Graph;->itemToVertex(Lcom/samsung/android/dualscreen/datastructure/graph/ItemWrapper;)Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;

    move-result-object v0

    if-eqz v1, :cond_1

    if-nez v0, :cond_2

    :cond_1
    new-instance v7, Ljava/lang/NullPointerException;

    const-string v8, "Vertex is null"

    invoke-direct {v7, v8}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_2
    invoke-virtual {p0, v1}, Lcom/samsung/android/dualscreen/datastructure/graph/Graph;->getRootVertex(Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;)Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;

    move-result-object v5

    if-nez v5, :cond_3

    move-object v5, v1

    :cond_3
    invoke-virtual {p0, v5}, Lcom/samsung/android/dualscreen/datastructure/graph/Graph;->descendantVertices(Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-boolean v7, Lcom/samsung/android/dualscreen/datastructure/graph/Graph;->DEBUG:Z

    if-eqz v7, :cond_4

    sget-object v7, Lcom/samsung/android/dualscreen/datastructure/graph/Graph;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Descendants of "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " are "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;

    invoke-virtual {v6}, Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;->getElement()Lcom/samsung/android/dualscreen/datastructure/graph/ItemWrapper;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/samsung/android/dualscreen/datastructure/graph/ItemWrapper;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    sget-object v7, Lcom/samsung/android/dualscreen/datastructure/graph/Graph;->TAG:Ljava/lang/String;

    const-string v8, "Tried to add in same subgraph"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    :goto_0
    return v7

    :cond_6
    invoke-virtual {p0, p2}, Lcom/samsung/android/dualscreen/datastructure/graph/Graph;->detachSubGraph(Lcom/samsung/android/dualscreen/datastructure/graph/ItemWrapper;)Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;

    move-result-object v3

    invoke-virtual {v0}, Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;->getElement()Lcom/samsung/android/dualscreen/datastructure/graph/ItemWrapper;

    move-result-object v7

    invoke-virtual {v3}, Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;->getElement()Lcom/samsung/android/dualscreen/datastructure/graph/ItemWrapper;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/samsung/android/dualscreen/datastructure/graph/Graph;->insertEdge(Lcom/samsung/android/dualscreen/datastructure/graph/ItemWrapper;Lcom/samsung/android/dualscreen/datastructure/graph/ItemWrapper;)Z

    iget-boolean v7, v3, Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;->dummy:Z

    if-eqz v7, :cond_7

    invoke-virtual {v3}, Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;->getElement()Lcom/samsung/android/dualscreen/datastructure/graph/ItemWrapper;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/samsung/android/dualscreen/datastructure/graph/Graph;->removeVertex(Lcom/samsung/android/dualscreen/datastructure/graph/ItemWrapper;)Z

    :cond_7
    const/4 v7, 0x1

    goto :goto_0
.end method

.method public childVertices(Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/dualscreen/datastructure/graph/Vertex",
            "<TE;>;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/dualscreen/datastructure/graph/Vertex",
            "<TE;>;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v3, Ljava/lang/NullPointerException;

    const-string/jumbo v4, "v is null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1}, Lcom/samsung/android/dualscreen/datastructure/graph/Graph;->incidentEdges(Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/dualscreen/datastructure/graph/Edge;

    invoke-virtual {p0, v1}, Lcom/samsung/android/dualscreen/datastructure/graph/Graph;->origin(Lcom/samsung/android/dualscreen/datastructure/graph/Edge;)Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;

    move-result-object v3

    if-ne v3, p1, :cond_1

    invoke-virtual {p0, v1}, Lcom/samsung/android/dualscreen/datastructure/graph/Graph;->destination(Lcom/samsung/android/dualscreen/datastructure/graph/Edge;)Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public clear()V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/dualscreen/datastructure/graph/Graph;->vertices()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;

    iget-object v3, v2, Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;->incidenceList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v2, v4}, Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;->setElement(Lcom/samsung/android/dualscreen/datastructure/graph/ItemWrapper;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/dualscreen/datastructure/graph/Graph;->edges()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/dualscreen/datastructure/graph/Edge;

    iput-object v4, v0, Lcom/samsung/android/dualscreen/datastructure/graph/Edge;->startVertex:Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;

    iput-object v4, v0, Lcom/samsung/android/dualscreen/datastructure/graph/Edge;->endVertex:Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;

    goto :goto_1

    :cond_1
    return-void
.end method

.method public degree(Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/dualscreen/datastructure/graph/Vertex",
            "<TE;>;)I"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/samsung/android/dualscreen/datastructure/graph/Graph;->incidentEdges(Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public descendantVertices(Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/dualscreen/datastructure/graph/Vertex",
            "<TE;>;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/dualscreen/datastructure/graph/Vertex",
            "<TE;>;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "v is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/dualscreen/datastructure/graph/Graph;->mDfs:Lcom/samsung/android/dualscreen/datastructure/DepthFirstSearch;

    invoke-virtual {v1, p1, v0}, Lcom/samsung/android/dualscreen/datastructure/DepthFirstSearch;->getDescendantsOf(Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;Ljava/util/ArrayList;)V

    return-object v0
.end method

.method public destination(Lcom/samsung/android/dualscreen/datastructure/graph/Edge;)Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/dualscreen/datastructure/graph/Edge",
            "<TE;>;)",
            "Lcom/samsung/android/dualscreen/datastructure/graph/Vertex",
            "<TE;>;"
        }
    .end annotation

    iget-object v0, p1, Lcom/samsung/android/dualscreen/datastructure/graph/Edge;->endVertex:Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;

    return-object v0
.end method

.method public detachSubGraph(Lcom/samsung/android/dualscreen/datastructure/graph/ItemWrapper;)Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/dualscreen/datastructure/graph/ItemWrapper",
            "<TE;>;)",
            "Lcom/samsung/android/dualscreen/datastructure/graph/Vertex",
            "<TE;>;"
        }
    .end annotation

    sget-boolean v4, Lcom/samsung/android/dualscreen/datastructure/graph/Graph;->DEBUG:Z

    if-eqz v4, :cond_0

    sget-object v4, Lcom/samsung/android/dualscreen/datastructure/graph/Graph;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "detachSubGraph() : item="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/dualscreen/datastructure/graph/Graph;->itemToVertex(Lcom/samsung/android/dualscreen/datastructure/graph/ItemWrapper;)Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/samsung/android/dualscreen/datastructure/graph/Graph;->parentVertex(Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;)Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;

    move-result-object v2

    if-nez v3, :cond_1

    new-instance v4, Ljava/lang/NullPointerException;

    const-string/jumbo v5, "v is null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    if-eqz v2, :cond_2

    iget-boolean v4, v2, Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;->dummy:Z

    if-eqz v4, :cond_4

    :cond_2
    sget-boolean v4, Lcom/samsung/android/dualscreen/datastructure/graph/Graph;->DEBUG:Z

    if-eqz v4, :cond_3

    sget-object v4, Lcom/samsung/android/dualscreen/datastructure/graph/Graph;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Already splitted. Can\'t create a split from object="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/samsung/android/dualscreen/datastructure/graph/ItemWrapper;->getWrappedItem()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return-object v3

    :cond_4
    invoke-virtual {p0, v3}, Lcom/samsung/android/dualscreen/datastructure/graph/Graph;->incidentEdges(Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/dualscreen/datastructure/graph/Edge;

    invoke-virtual {p0, v0}, Lcom/samsung/android/dualscreen/datastructure/graph/Graph;->destination(Lcom/samsung/android/dualscreen/datastructure/graph/Edge;)Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;

    move-result-object v4

    if-ne v4, v3, :cond_5

    iget-wide v4, v0, Lcom/samsung/android/dualscreen/datastructure/graph/Edge;->id:J

    invoke-direct {p0, v4, v5}, Lcom/samsung/android/dualscreen/datastructure/graph/Graph;->removeEdge(J)Z

    goto :goto_0
.end method

.method public doDfsForAllVertices()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/dualscreen/datastructure/graph/Vertex",
            "<TE;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/dualscreen/datastructure/graph/Graph;->mDfs:Lcom/samsung/android/dualscreen/datastructure/DepthFirstSearch;

    invoke-virtual {v0}, Lcom/samsung/android/dualscreen/datastructure/DepthFirstSearch;->doDfsForAllVertices()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .locals 6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "Context relation graph : "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "mGraphName="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/dualscreen/datastructure/graph/Graph;->mGraphName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "Vertex size="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/dualscreen/datastructure/graph/Graph;->mVertices:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "Edge size="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/dualscreen/datastructure/graph/Graph;->mEdges:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "rootVertices= {"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/dualscreen/datastructure/graph/Graph;->mDfs:Lcom/samsung/android/dualscreen/datastructure/DepthFirstSearch;

    invoke-virtual {v3}, Lcom/samsung/android/dualscreen/datastructure/DepthFirstSearch;->getRootVertices()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " v"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v2, Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;->id:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v3, " }"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    if-eqz p3, :cond_2

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "DFS Traversed Vertices= {"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/samsung/android/dualscreen/datastructure/graph/Graph;->mDfs:Lcom/samsung/android/dualscreen/datastructure/DepthFirstSearch;

    invoke-virtual {v3}, Lcom/samsung/android/dualscreen/datastructure/DepthFirstSearch;->doDfsForAllVertices()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "}"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public edges()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/dualscreen/datastructure/graph/Edge",
            "<TE;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/dualscreen/datastructure/graph/Graph;->mEdges:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getGraphName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/dualscreen/datastructure/graph/Graph;->mGraphName:Ljava/lang/String;

    return-object v0
.end method

.method public getLeafVertex(Lcom/samsung/android/dualscreen/datastructure/graph/ItemWrapper;)Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/dualscreen/datastructure/graph/ItemWrapper",
            "<TE;>;)",
            "Lcom/samsung/android/dualscreen/datastructure/graph/Vertex",
            "<TE;>;"
        }
    .end annotation

    sget-boolean v1, Lcom/samsung/android/dualscreen/datastructure/graph/Graph;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/android/dualscreen/datastructure/graph/Graph;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLeaf() : item="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/dualscreen/datastructure/graph/Graph;->itemToVertex(Lcom/samsung/android/dualscreen/datastructure/graph/ItemWrapper;)Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/dualscreen/datastructure/graph/Graph;->mDfs:Lcom/samsung/android/dualscreen/datastructure/DepthFirstSearch;

    invoke-virtual {v1, v0}, Lcom/samsung/android/dualscreen/datastructure/DepthFirstSearch;->getLeaf(Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;)Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getRootVertex(Lcom/samsung/android/dualscreen/datastructure/graph/ItemWrapper;)Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/dualscreen/datastructure/graph/ItemWrapper",
            "<TE;>;)",
            "Lcom/samsung/android/dualscreen/datastructure/graph/Vertex",
            "<TE;>;"
        }
    .end annotation

    sget-boolean v2, Lcom/samsung/android/dualscreen/datastructure/graph/Graph;->DEBUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/samsung/android/dualscreen/datastructure/graph/Graph;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getRootVertex() : item="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/dualscreen/datastructure/graph/Graph;->itemToVertex(Lcom/samsung/android/dualscreen/datastructure/graph/ItemWrapper;)Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v1}, Lcom/samsung/android/dualscreen/datastructure/graph/Graph;->getRootVertex(Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;)Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;

    move-result-object v0

    if-eqz v0, :cond_1

    :goto_0
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRootVertex(Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;)Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/dualscreen/datastructure/graph/Vertex",
            "<TE;>;)",
            "Lcom/samsung/android/dualscreen/datastructure/graph/Vertex",
            "<TE;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "v is null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/dualscreen/datastructure/graph/Graph;->parentVertex(Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;)Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/samsung/android/dualscreen/datastructure/graph/Graph;->parentVertex(Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;)Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;

    move-result-object v0

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getRootVertices()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/dualscreen/datastructure/graph/Vertex",
            "<TE;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/dualscreen/datastructure/graph/Graph;->mDfs:Lcom/samsung/android/dualscreen/datastructure/DepthFirstSearch;

    invoke-virtual {v0}, Lcom/samsung/android/dualscreen/datastructure/DepthFirstSearch;->getRootVertices()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method getType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<TE;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/dualscreen/datastructure/graph/Graph;->mGraphType:Ljava/lang/Class;

    return-object v0
.end method

.method public incidentEdges(Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/dualscreen/datastructure/graph/Vertex",
            "<TE;>;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/dualscreen/datastructure/graph/Edge",
            "<TE;>;>;"
        }
    .end annotation

    iget-object v0, p1, Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;->incidenceList:Ljava/util/ArrayList;

    return-object v0
.end method

.method insertDummyVertex(Lcom/samsung/android/dualscreen/datastructure/graph/ItemWrapper;I)Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/dualscreen/datastructure/graph/ItemWrapper",
            "<TE;>;I)",
            "Lcom/samsung/android/dualscreen/datastructure/graph/Vertex",
            "<TE;>;"
        }
    .end annotation

    sget-boolean v1, Lcom/samsung/android/dualscreen/datastructure/graph/Graph;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/android/dualscreen/datastructure/graph/Graph;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "insertDummyVertex() : itemWrapper="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;

    iget-wide v2, p0, Lcom/samsung/android/dualscreen/datastructure/graph/Graph;->mNextVertexId:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/samsung/android/dualscreen/datastructure/graph/Graph;->mNextVertexId:J

    invoke-direct {v0, v2, v3, p1}, Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;-><init>(JLcom/samsung/android/dualscreen/datastructure/graph/ItemWrapper;)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;->dummy:Z

    sget-boolean v1, Lcom/samsung/android/dualscreen/datastructure/graph/Graph;->DEBUG:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/samsung/android/dualscreen/datastructure/graph/Graph;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "insertDummyVertex() : create new vertex="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/dualscreen/datastructure/graph/Graph;->mVertices:Ljava/util/ArrayList;

    invoke-virtual {v1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-object v0
.end method

.method public insertEdge(Lcom/samsung/android/dualscreen/datastructure/graph/ItemWrapper;Lcom/samsung/android/dualscreen/datastructure/graph/ItemWrapper;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/dualscreen/datastructure/graph/ItemWrapper",
            "<TE;>;",
            "Lcom/samsung/android/dualscreen/datastructure/graph/ItemWrapper",
            "<TE;>;)Z"
        }
    .end annotation

    sget-boolean v5, Lcom/samsung/android/dualscreen/datastructure/graph/Graph;->DEBUG:Z

    if-eqz v5, :cond_0

    sget-object v5, Lcom/samsung/android/dualscreen/datastructure/graph/Graph;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "insertEdge() : startVertexItem="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " endVertexItem="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v3, 0x0

    const/4 v0, 0x0

    iget-object v5, p0, Lcom/samsung/android/dualscreen/datastructure/graph/Graph;->mVertices:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;

    invoke-virtual {v4}, Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;->getElement()Lcom/samsung/android/dualscreen/datastructure/graph/ItemWrapper;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/samsung/android/dualscreen/datastructure/graph/ItemWrapper;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v3, v4

    goto :goto_0

    :cond_2
    invoke-virtual {v4}, Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;->getElement()Lcom/samsung/android/dualscreen/datastructure/graph/ItemWrapper;

    move-result-object v5

    invoke-virtual {v5, p2}, Lcom/samsung/android/dualscreen/datastructure/graph/ItemWrapper;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v0, v4

    goto :goto_0

    :cond_3
    if-eqz v3, :cond_5

    if-eqz v0, :cond_5

    new-instance v1, Lcom/samsung/android/dualscreen/datastructure/graph/Edge;

    iget-wide v6, p0, Lcom/samsung/android/dualscreen/datastructure/graph/Graph;->mNextEdgeId:J

    const-wide/16 v8, 0x1

    add-long/2addr v8, v6

    iput-wide v8, p0, Lcom/samsung/android/dualscreen/datastructure/graph/Graph;->mNextEdgeId:J

    invoke-direct {v1, v6, v7, v3, v0}, Lcom/samsung/android/dualscreen/datastructure/graph/Edge;-><init>(JLcom/samsung/android/dualscreen/datastructure/graph/Vertex;Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;)V

    sget-boolean v5, Lcom/samsung/android/dualscreen/datastructure/graph/Graph;->DEBUG:Z

    if-eqz v5, :cond_4

    sget-object v5, Lcom/samsung/android/dualscreen/datastructure/graph/Graph;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "insertEdge() : create new edge="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v5, p0, Lcom/samsung/android/dualscreen/datastructure/graph/Graph;->mEdges:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v3}, Lcom/samsung/android/dualscreen/datastructure/graph/Graph;->incidentEdges(Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0}, Lcom/samsung/android/dualscreen/datastructure/graph/Graph;->incidentEdges(Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x1

    :goto_1
    return v5

    :cond_5
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public insertVertex(Lcom/samsung/android/dualscreen/datastructure/graph/ItemWrapper;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/dualscreen/datastructure/graph/ItemWrapper",
            "<TE;>;)Z"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/dualscreen/datastructure/graph/Graph;->getType()Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/dualscreen/datastructure/graph/Graph;->mVertices:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/dualscreen/datastructure/graph/Graph;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/samsung/android/dualscreen/datastructure/graph/ItemWrapper;->item:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/ClassCastException;

    invoke-direct {v1}, Ljava/lang/ClassCastException;-><init>()V

    throw v1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/ClassCastException;->printStackTrace()V

    new-instance v1, Ljava/lang/ClassCastException;

    invoke-direct {v1}, Ljava/lang/ClassCastException;-><init>()V

    throw v1

    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1}, Lcom/samsung/android/dualscreen/datastructure/graph/Graph;->insertVertex(Lcom/samsung/android/dualscreen/datastructure/graph/ItemWrapper;Lcom/samsung/android/dualscreen/datastructure/graph/ItemWrapper;)Z

    move-result v1

    return v1
.end method

.method public insertVertex(Lcom/samsung/android/dualscreen/datastructure/graph/ItemWrapper;Lcom/samsung/android/dualscreen/datastructure/graph/ItemWrapper;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/dualscreen/datastructure/graph/ItemWrapper",
            "<TE;>;",
            "Lcom/samsung/android/dualscreen/datastructure/graph/ItemWrapper",
            "<TE;>;)Z"
        }
    .end annotation

    sget-boolean v3, Lcom/samsung/android/dualscreen/datastructure/graph/Graph;->DEBUG:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/samsung/android/dualscreen/datastructure/graph/Graph;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "insertVertex() : item="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/dualscreen/datastructure/graph/Graph;->mVertices:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;

    invoke-virtual {v1}, Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;->getElement()Lcom/samsung/android/dualscreen/datastructure/graph/ItemWrapper;

    move-result-object v3

    invoke-virtual {v3, p2}, Lcom/samsung/android/dualscreen/datastructure/graph/ItemWrapper;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    :goto_0
    return v3

    :cond_2
    new-instance v2, Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;

    iget-wide v4, p0, Lcom/samsung/android/dualscreen/datastructure/graph/Graph;->mNextVertexId:J

    const-wide/16 v6, 0x1

    add-long/2addr v6, v4

    iput-wide v6, p0, Lcom/samsung/android/dualscreen/datastructure/graph/Graph;->mNextVertexId:J

    invoke-direct {v2, v4, v5, p2}, Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;-><init>(JLcom/samsung/android/dualscreen/datastructure/graph/ItemWrapper;)V

    sget-boolean v3, Lcom/samsung/android/dualscreen/datastructure/graph/Graph;->DEBUG:Z

    if-eqz v3, :cond_3

    sget-object v3, Lcom/samsung/android/dualscreen/datastructure/graph/Graph;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "insertVertex() : create new vertex="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v3, p0, Lcom/samsung/android/dualscreen/datastructure/graph/Graph;->mVertices:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p1, :cond_4

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/dualscreen/datastructure/graph/Graph;->insertEdge(Lcom/samsung/android/dualscreen/datastructure/graph/ItemWrapper;Lcom/samsung/android/dualscreen/datastructure/graph/ItemWrapper;)Z

    :cond_4
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public itemToVertex(Lcom/samsung/android/dualscreen/datastructure/graph/ItemWrapper;)Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/dualscreen/datastructure/graph/ItemWrapper",
            "<TE;>;)",
            "Lcom/samsung/android/dualscreen/datastructure/graph/Vertex",
            "<TE;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "item is null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/dualscreen/datastructure/graph/Graph;->mVertices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;

    invoke-virtual {v1}, Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;->getElement()Lcom/samsung/android/dualscreen/datastructure/graph/ItemWrapper;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/samsung/android/dualscreen/datastructure/graph/ItemWrapper;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    return-object v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public numEdges()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/dualscreen/datastructure/graph/Graph;->mEdges:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public numVertices()I
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/dualscreen/datastructure/graph/Graph;->mVertices:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public opposite(Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;Lcom/samsung/android/dualscreen/datastructure/graph/Edge;)Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/dualscreen/datastructure/graph/Vertex",
            "<TE;>;",
            "Lcom/samsung/android/dualscreen/datastructure/graph/Edge",
            "<TE;>;)",
            "Lcom/samsung/android/dualscreen/datastructure/graph/Vertex",
            "<TE;>;"
        }
    .end annotation

    iget-object v0, p2, Lcom/samsung/android/dualscreen/datastructure/graph/Edge;->startVertex:Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;

    if-ne v0, p1, :cond_0

    iget-object v0, p2, Lcom/samsung/android/dualscreen/datastructure/graph/Edge;->endVertex:Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p2, Lcom/samsung/android/dualscreen/datastructure/graph/Edge;->startVertex:Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;

    goto :goto_0
.end method

.method public origin(Lcom/samsung/android/dualscreen/datastructure/graph/Edge;)Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/dualscreen/datastructure/graph/Edge",
            "<TE;>;)",
            "Lcom/samsung/android/dualscreen/datastructure/graph/Vertex",
            "<TE;>;"
        }
    .end annotation

    iget-object v0, p1, Lcom/samsung/android/dualscreen/datastructure/graph/Edge;->startVertex:Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;

    return-object v0
.end method

.method public parentVertex(Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;)Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/dualscreen/datastructure/graph/Vertex",
            "<TE;>;)",
            "Lcom/samsung/android/dualscreen/datastructure/graph/Vertex",
            "<TE;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "v is null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/dualscreen/datastructure/graph/Graph;->incidentEdges(Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/dualscreen/datastructure/graph/Edge;

    invoke-virtual {p0, v0}, Lcom/samsung/android/dualscreen/datastructure/graph/Graph;->destination(Lcom/samsung/android/dualscreen/datastructure/graph/Edge;)Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;

    move-result-object v2

    if-ne v2, p1, :cond_1

    invoke-virtual {p0, v0}, Lcom/samsung/android/dualscreen/datastructure/graph/Graph;->origin(Lcom/samsung/android/dualscreen/datastructure/graph/Edge;)Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public removeEdge(Lcom/samsung/android/dualscreen/datastructure/graph/Edge;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/dualscreen/datastructure/graph/Edge",
            "<TE;>;)Z"
        }
    .end annotation

    iget-wide v0, p1, Lcom/samsung/android/dualscreen/datastructure/graph/Edge;->id:J

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/dualscreen/datastructure/graph/Graph;->removeEdge(J)Z

    move-result v0

    return v0
.end method

.method public removeVertex(Lcom/samsung/android/dualscreen/datastructure/graph/ItemWrapper;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/dualscreen/datastructure/graph/ItemWrapper",
            "<TE;>;)Z"
        }
    .end annotation

    const/4 v7, 0x0

    sget-boolean v8, Lcom/samsung/android/dualscreen/datastructure/graph/Graph;->DEBUG:Z

    if-eqz v8, :cond_0

    sget-object v8, Lcom/samsung/android/dualscreen/datastructure/graph/Graph;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "removeVertex() : item="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0, p1}, Lcom/samsung/android/dualscreen/datastructure/graph/Graph;->itemToVertex(Lcom/samsung/android/dualscreen/datastructure/graph/ItemWrapper;)Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;

    move-result-object v5

    if-nez v5, :cond_1

    :goto_0
    return v7

    :cond_1
    invoke-virtual {p0, v5}, Lcom/samsung/android/dualscreen/datastructure/graph/Graph;->parentVertex(Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;)Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;

    move-result-object v4

    invoke-virtual {p0, v5}, Lcom/samsung/android/dualscreen/datastructure/graph/Graph;->childVertices(Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;)Ljava/util/ArrayList;

    move-result-object v6

    if-nez v4, :cond_3

    invoke-virtual {p0, v5}, Lcom/samsung/android/dualscreen/datastructure/graph/Graph;->incidentEdges(Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-eqz v8, :cond_3

    iget-boolean v8, v5, Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;->dummy:Z

    if-eqz v8, :cond_2

    sget-object v8, Lcom/samsung/android/dualscreen/datastructure/graph/Graph;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "removeVertex() : cannot remove dummy vertex which does not have ancestor."

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    new-instance v8, Lcom/samsung/android/dualscreen/datastructure/graph/ItemWrapper;

    const/4 v9, 0x0

    invoke-direct {v8, v9}, Lcom/samsung/android/dualscreen/datastructure/graph/ItemWrapper;-><init>(Ljava/lang/Object;)V

    iget-object v9, p0, Lcom/samsung/android/dualscreen/datastructure/graph/Graph;->mVertices:Ljava/util/ArrayList;

    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v9

    invoke-virtual {p0, v8, v9}, Lcom/samsung/android/dualscreen/datastructure/graph/Graph;->insertDummyVertex(Lcom/samsung/android/dualscreen/datastructure/graph/ItemWrapper;I)Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;

    move-result-object v4

    sget-object v8, Lcom/samsung/android/dualscreen/datastructure/graph/Graph;->TAG:Ljava/lang/String;

    const-string/jumbo v9, "removeVertex() : insertDummyVertex, because there is no ancestor."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v8, p0, Lcom/samsung/android/dualscreen/datastructure/graph/Graph;->mVertices:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0, v5}, Lcom/samsung/android/dualscreen/datastructure/graph/Graph;->incidentEdges(Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;)Ljava/util/ArrayList;

    move-result-object v3

    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-eqz v8, :cond_4

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/dualscreen/datastructure/graph/Edge;

    iget-wide v8, v1, Lcom/samsung/android/dualscreen/datastructure/graph/Edge;->id:J

    invoke-direct {p0, v8, v9}, Lcom/samsung/android/dualscreen/datastructure/graph/Graph;->removeEdge(J)Z

    goto :goto_1

    :cond_4
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;

    invoke-virtual {v4}, Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;->getElement()Lcom/samsung/android/dualscreen/datastructure/graph/ItemWrapper;

    move-result-object v7

    invoke-virtual {v0}, Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;->getElement()Lcom/samsung/android/dualscreen/datastructure/graph/ItemWrapper;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/samsung/android/dualscreen/datastructure/graph/Graph;->insertEdge(Lcom/samsung/android/dualscreen/datastructure/graph/ItemWrapper;Lcom/samsung/android/dualscreen/datastructure/graph/ItemWrapper;)Z

    goto :goto_2

    :cond_5
    const/4 v7, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-class v1, Lcom/samsung/android/dualscreen/datastructure/graph/Graph;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " \n name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/dualscreen/datastructure/graph/Graph;->mGraphName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " \n vertex count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/dualscreen/datastructure/graph/Graph;->mVertices:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " \n edge count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/dualscreen/datastructure/graph/Graph;->mEdges:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " \n graph="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/dualscreen/datastructure/graph/Graph;->mDfs:Lcom/samsung/android/dualscreen/datastructure/DepthFirstSearch;

    invoke-virtual {v2}, Lcom/samsung/android/dualscreen/datastructure/DepthFirstSearch;->doDfsForAllVertices()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " \n Root vertices in graph="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/dualscreen/datastructure/graph/Graph;->mDfs:Lcom/samsung/android/dualscreen/datastructure/DepthFirstSearch;

    invoke-virtual {v2}, Lcom/samsung/android/dualscreen/datastructure/DepthFirstSearch;->getRootVertices()Ljava/util/ArrayList;

    move-result-object v2

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

.method public vertices()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/dualscreen/datastructure/graph/Vertex",
            "<TE;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/dualscreen/datastructure/graph/Graph;->mVertices:Ljava/util/ArrayList;

    return-object v0
.end method

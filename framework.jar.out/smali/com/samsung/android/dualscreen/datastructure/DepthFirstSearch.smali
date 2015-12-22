.class public Lcom/samsung/android/dualscreen/datastructure/DepthFirstSearch;
.super Ljava/lang/Object;
.source "DepthFirstSearch.java"


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
.field private final mGraph:Lcom/samsung/android/dualscreen/datastructure/graph/Graph;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/dualscreen/datastructure/graph/Graph",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/dualscreen/datastructure/DepthFirstSearch;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/dualscreen/datastructure/DepthFirstSearch;->TAG:Ljava/lang/String;

    sget-boolean v0, Lcom/samsung/android/dualscreen/ContextRelationManager;->DEBUG:Z

    sput-boolean v0, Lcom/samsung/android/dualscreen/datastructure/DepthFirstSearch;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/dualscreen/datastructure/graph/Graph;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/dualscreen/datastructure/graph/Graph",
            "<TE;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "graph is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/samsung/android/dualscreen/datastructure/DepthFirstSearch;->mGraph:Lcom/samsung/android/dualscreen/datastructure/graph/Graph;

    return-void
.end method

.method private addDescendants(Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/dualscreen/datastructure/graph/Vertex",
            "<TE;>;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/dualscreen/datastructure/graph/Vertex",
            "<TE;>;>;)V"
        }
    .end annotation

    iget-boolean v2, p1, Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;->marked:Z

    if-nez v2, :cond_1

    sget-boolean v2, Lcom/samsung/android/dualscreen/datastructure/DepthFirstSearch;->DEBUG:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/samsung/android/dualscreen/datastructure/DepthFirstSearch;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Adding descendant "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p1, Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;->marked:Z

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/dualscreen/datastructure/DepthFirstSearch;->mGraph:Lcom/samsung/android/dualscreen/datastructure/graph/Graph;

    invoke-virtual {v2, p1}, Lcom/samsung/android/dualscreen/datastructure/graph/Graph;->childVertices(Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/samsung/android/dualscreen/datastructure/DepthFirstSearch;->mGraph:Lcom/samsung/android/dualscreen/datastructure/graph/Graph;

    invoke-virtual {v2, p1}, Lcom/samsung/android/dualscreen/datastructure/graph/Graph;->childVertices(Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;

    invoke-direct {p0, v0, p2}, Lcom/samsung/android/dualscreen/datastructure/DepthFirstSearch;->addDescendants(Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;Ljava/util/ArrayList;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private doDfs(Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/dualscreen/datastructure/graph/Vertex",
            "<TE;>;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/dualscreen/datastructure/graph/Vertex",
            "<TE;>;>;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/dualscreen/datastructure/graph/Vertex",
            "<TE;>;>;"
        }
    .end annotation

    iget-boolean v3, p1, Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;->marked:Z

    if-nez v3, :cond_0

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x1

    iput-boolean v3, p1, Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;->marked:Z

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v3, p1, Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;->incidenceList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    iget-object v3, p1, Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;->incidenceList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/dualscreen/datastructure/graph/Edge;

    iget-object v3, p0, Lcom/samsung/android/dualscreen/datastructure/DepthFirstSearch;->mGraph:Lcom/samsung/android/dualscreen/datastructure/graph/Graph;

    invoke-virtual {v3, v0}, Lcom/samsung/android/dualscreen/datastructure/graph/Graph;->destination(Lcom/samsung/android/dualscreen/datastructure/graph/Edge;)Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;

    move-result-object v2

    iget-boolean v3, v2, Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;->marked:Z

    if-nez v3, :cond_1

    invoke-direct {p0, v2, p2}, Lcom/samsung/android/dualscreen/datastructure/DepthFirstSearch;->doDfs(Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object p2
.end method

.method private reinitializeVertices()V
    .locals 3

    iget-object v2, p0, Lcom/samsung/android/dualscreen/datastructure/DepthFirstSearch;->mGraph:Lcom/samsung/android/dualscreen/datastructure/graph/Graph;

    invoke-virtual {v2}, Lcom/samsung/android/dualscreen/datastructure/graph/Graph;->vertices()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;->marked:Z

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public doDfsForAllVertices()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/dualscreen/datastructure/graph/Vertex",
            "<TE;>;>;"
        }
    .end annotation

    sget-boolean v3, Lcom/samsung/android/dualscreen/datastructure/DepthFirstSearch;->DEBUG:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/samsung/android/dualscreen/datastructure/DepthFirstSearch;->TAG:Ljava/lang/String;

    const-string v4, "doDfsForAllVertices"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/dualscreen/datastructure/DepthFirstSearch;->mGraph:Lcom/samsung/android/dualscreen/datastructure/graph/Graph;

    invoke-virtual {v3}, Lcom/samsung/android/dualscreen/datastructure/graph/Graph;->vertices()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/dualscreen/datastructure/DepthFirstSearch;->getRootVertices()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;

    iget-boolean v3, v2, Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;->marked:Z

    if-nez v3, :cond_1

    invoke-direct {p0, v2, v1}, Lcom/samsung/android/dualscreen/datastructure/DepthFirstSearch;->doDfs(Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/dualscreen/datastructure/DepthFirstSearch;->reinitializeVertices()V

    :cond_3
    return-object v1
.end method

.method public getDescendantsOf(Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/dualscreen/datastructure/graph/Vertex",
            "<TE;>;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/dualscreen/datastructure/graph/Vertex",
            "<TE;>;>;)V"
        }
    .end annotation

    sget-boolean v0, Lcom/samsung/android/dualscreen/datastructure/DepthFirstSearch;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/dualscreen/datastructure/DepthFirstSearch;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDescendantsOf "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/dualscreen/datastructure/DepthFirstSearch;->addDescendants(Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;Ljava/util/ArrayList;)V

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/samsung/android/dualscreen/datastructure/DepthFirstSearch;->reinitializeVertices()V

    return-void
.end method

.method public getLeaf(Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;)Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/dualscreen/datastructure/graph/Vertex",
            "<TE;>;)",
            "Lcom/samsung/android/dualscreen/datastructure/graph/Vertex",
            "<TE;>;"
        }
    .end annotation

    const/4 v2, 0x0

    sget-object v4, Lcom/samsung/android/dualscreen/datastructure/DepthFirstSearch;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Finding leaf of subgraph "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v4, p1, Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;->marked:Z

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/dualscreen/datastructure/DepthFirstSearch;->mGraph:Lcom/samsung/android/dualscreen/datastructure/graph/Graph;

    invoke-virtual {v4, p1}, Lcom/samsung/android/dualscreen/datastructure/graph/Graph;->childVertices(Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_0

    move-object v2, p1

    move-object v3, v2

    :goto_0
    return-object v3

    :cond_0
    const/4 v4, 0x1

    iput-boolean v4, p1, Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;->marked:Z

    const/4 v1, 0x0

    :goto_1
    iget-object v4, p0, Lcom/samsung/android/dualscreen/datastructure/DepthFirstSearch;->mGraph:Lcom/samsung/android/dualscreen/datastructure/graph/Graph;

    invoke-virtual {v4, p1}, Lcom/samsung/android/dualscreen/datastructure/graph/Graph;->childVertices(Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    iget-object v4, p0, Lcom/samsung/android/dualscreen/datastructure/DepthFirstSearch;->mGraph:Lcom/samsung/android/dualscreen/datastructure/graph/Graph;

    invoke-virtual {v4, p1}, Lcom/samsung/android/dualscreen/datastructure/graph/Graph;->childVertices(Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;

    iget-boolean v4, v0, Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;->marked:Z

    if-nez v4, :cond_2

    invoke-virtual {p0, v0}, Lcom/samsung/android/dualscreen/datastructure/DepthFirstSearch;->getLeaf(Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;)Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;

    move-result-object v2

    if-eqz v2, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/dualscreen/datastructure/DepthFirstSearch;->reinitializeVertices()V

    move-object v3, v2

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public getRootVertices()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/dualscreen/datastructure/graph/Vertex",
            "<TE;>;>;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/dualscreen/datastructure/DepthFirstSearch;->mGraph:Lcom/samsung/android/dualscreen/datastructure/graph/Graph;

    invoke-virtual {v3}, Lcom/samsung/android/dualscreen/datastructure/graph/Graph;->vertices()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/dualscreen/datastructure/DepthFirstSearch;->mGraph:Lcom/samsung/android/dualscreen/datastructure/graph/Graph;

    invoke-virtual {v3}, Lcom/samsung/android/dualscreen/datastructure/graph/Graph;->vertices()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;

    iget-object v3, p0, Lcom/samsung/android/dualscreen/datastructure/DepthFirstSearch;->mGraph:Lcom/samsung/android/dualscreen/datastructure/graph/Graph;

    invoke-virtual {v3, v2}, Lcom/samsung/android/dualscreen/datastructure/graph/Graph;->parentVertex(Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;)Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;

    move-result-object v3

    if-nez v3, :cond_0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public marked(Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/dualscreen/datastructure/graph/Vertex",
            "<TE;>;)Z"
        }
    .end annotation

    iget-boolean v0, p1, Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;->marked:Z

    return v0
.end method

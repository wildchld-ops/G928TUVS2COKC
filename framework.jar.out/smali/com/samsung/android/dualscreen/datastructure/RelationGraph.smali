.class public Lcom/samsung/android/dualscreen/datastructure/RelationGraph;
.super Ljava/lang/Object;
.source "RelationGraph.java"


# static fields
.field static final DEBUG:Z

.field static final TAG:Ljava/lang/String;


# instance fields
.field private mGraph:Lcom/samsung/android/dualscreen/datastructure/graph/Graph;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/dualscreen/datastructure/graph/Graph",
            "<",
            "Lcom/samsung/android/dualscreen/datastructure/RelationObject;",
            ">;"
        }
    .end annotation
.end field

.field private mItemWrapperHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/samsung/android/dualscreen/datastructure/RelationObject;",
            "Lcom/samsung/android/dualscreen/datastructure/graph/ItemWrapper",
            "<",
            "Lcom/samsung/android/dualscreen/datastructure/RelationObject;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/dualscreen/datastructure/RelationGraph;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/dualscreen/datastructure/RelationGraph;->TAG:Ljava/lang/String;

    sget-boolean v0, Lcom/samsung/android/dualscreen/ContextRelationManager;->DEBUG:Z

    sput-boolean v0, Lcom/samsung/android/dualscreen/datastructure/RelationGraph;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/dualscreen/datastructure/RelationGraph;->mItemWrapperHashMap:Ljava/util/HashMap;

    new-instance v0, Lcom/samsung/android/dualscreen/datastructure/graph/Graph;

    const-class v1, Lcom/samsung/android/dualscreen/datastructure/RelationObject;

    invoke-direct {v0, v1, p1}, Lcom/samsung/android/dualscreen/datastructure/graph/Graph;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/dualscreen/datastructure/RelationGraph;->mGraph:Lcom/samsung/android/dualscreen/datastructure/graph/Graph;

    return-void
.end method


# virtual methods
.method public addRelation(Lcom/samsung/android/dualscreen/datastructure/RelationObject;Lcom/samsung/android/dualscreen/datastructure/RelationObject;)Z
    .locals 6

    const/4 v2, 0x0

    sget-boolean v3, Lcom/samsung/android/dualscreen/datastructure/RelationGraph;->DEBUG:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/samsung/android/dualscreen/datastructure/RelationGraph;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addRelation() : object="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez p2, :cond_2

    :cond_1
    :goto_0
    return v2

    :cond_2
    new-instance v0, Lcom/samsung/android/dualscreen/datastructure/graph/ItemWrapper;

    invoke-direct {v0, p2}, Lcom/samsung/android/dualscreen/datastructure/graph/ItemWrapper;-><init>(Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/samsung/android/dualscreen/datastructure/RelationGraph;->mItemWrapperHashMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/dualscreen/datastructure/graph/ItemWrapper;

    iget-object v3, p0, Lcom/samsung/android/dualscreen/datastructure/RelationGraph;->mGraph:Lcom/samsung/android/dualscreen/datastructure/graph/Graph;

    invoke-virtual {v3, v1, v0}, Lcom/samsung/android/dualscreen/datastructure/graph/Graph;->insertVertex(Lcom/samsung/android/dualscreen/datastructure/graph/ItemWrapper;Lcom/samsung/android/dualscreen/datastructure/graph/ItemWrapper;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v2, p0, Lcom/samsung/android/dualscreen/datastructure/RelationGraph;->mItemWrapperHashMap:Ljava/util/HashMap;

    invoke-virtual {v2, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/samsung/android/dualscreen/datastructure/RelationGraph;->garbageCollect()V

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public attachRelation(Lcom/samsung/android/dualscreen/datastructure/RelationObject;Lcom/samsung/android/dualscreen/datastructure/RelationObject;)Z
    .locals 6

    sget-object v3, Lcom/samsung/android/dualscreen/datastructure/RelationGraph;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "attachRelation() : new relation root="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : child root = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/dualscreen/datastructure/RelationGraph;->mItemWrapperHashMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/dualscreen/datastructure/graph/ItemWrapper;

    iget-object v3, p0, Lcom/samsung/android/dualscreen/datastructure/RelationGraph;->mItemWrapperHashMap:Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/dualscreen/datastructure/graph/ItemWrapper;

    if-eqz v0, :cond_0

    if-nez v1, :cond_2

    :cond_0
    sget-boolean v3, Lcom/samsung/android/dualscreen/datastructure/RelationGraph;->DEBUG:Z

    if-eqz v3, :cond_1

    sget-object v3, Lcom/samsung/android/dualscreen/datastructure/RelationGraph;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "no WrapperItem for object="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " OR object="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_2
    iget-object v3, p0, Lcom/samsung/android/dualscreen/datastructure/RelationGraph;->mGraph:Lcom/samsung/android/dualscreen/datastructure/graph/Graph;

    invoke-virtual {v3, v0, v1}, Lcom/samsung/android/dualscreen/datastructure/graph/Graph;->attachSubGraph(Lcom/samsung/android/dualscreen/datastructure/graph/ItemWrapper;Lcom/samsung/android/dualscreen/datastructure/graph/ItemWrapper;)Z

    move-result v2

    invoke-virtual {p0}, Lcom/samsung/android/dualscreen/datastructure/RelationGraph;->garbageCollect()V

    goto :goto_0
.end method

.method public detachRelation(Lcom/samsung/android/dualscreen/datastructure/RelationObject;)Z
    .locals 4

    sget-object v1, Lcom/samsung/android/dualscreen/datastructure/RelationGraph;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "detachRelation() : new relation root="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/dualscreen/datastructure/RelationGraph;->mItemWrapperHashMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/dualscreen/datastructure/graph/ItemWrapper;

    if-nez v0, :cond_1

    sget-boolean v1, Lcom/samsung/android/dualscreen/datastructure/RelationGraph;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/samsung/android/dualscreen/datastructure/RelationGraph;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "detachRelation() : no ItemWrapper for object="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/dualscreen/datastructure/RelationGraph;->mGraph:Lcom/samsung/android/dualscreen/datastructure/graph/Graph;

    invoke-virtual {v1, v0}, Lcom/samsung/android/dualscreen/datastructure/graph/Graph;->detachSubGraph(Lcom/samsung/android/dualscreen/datastructure/graph/ItemWrapper;)Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;

    invoke-virtual {p0}, Lcom/samsung/android/dualscreen/datastructure/RelationGraph;->garbageCollect()V

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public garbageCollect()V
    .locals 12

    sget-object v9, Lcom/samsung/android/dualscreen/datastructure/RelationGraph;->TAG:Ljava/lang/String;

    const-string v10, "garbageCollect()"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/samsung/android/dualscreen/datastructure/RelationGraph;->mGraph:Lcom/samsung/android/dualscreen/datastructure/graph/Graph;

    invoke-virtual {v9}, Lcom/samsung/android/dualscreen/datastructure/graph/Graph;->vertices()Ljava/util/ArrayList;

    move-result-object v7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;

    iget-boolean v9, v6, Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;->dummy:Z

    if-eqz v9, :cond_3

    iget-object v9, p0, Lcom/samsung/android/dualscreen/datastructure/RelationGraph;->mGraph:Lcom/samsung/android/dualscreen/datastructure/graph/Graph;

    invoke-virtual {v9, v6}, Lcom/samsung/android/dualscreen/datastructure/graph/Graph;->parentVertex(Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;)Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-boolean v9, v4, Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;->dummy:Z

    if-eqz v9, :cond_2

    sget-boolean v9, Lcom/samsung/android/dualscreen/datastructure/RelationGraph;->DEBUG:Z

    if-eqz v9, :cond_1

    sget-object v9, Lcom/samsung/android/dualscreen/datastructure/RelationGraph;->TAG:Ljava/lang/String;

    const-string v10, "garbageCollect() : release duplicated dummy"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v9, p0, Lcom/samsung/android/dualscreen/datastructure/RelationGraph;->mGraph:Lcom/samsung/android/dualscreen/datastructure/graph/Graph;

    invoke-virtual {v9, v6}, Lcom/samsung/android/dualscreen/datastructure/graph/Graph;->incidentEdges(Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-nez v9, :cond_0

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-virtual {v6}, Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;->getElement()Lcom/samsung/android/dualscreen/datastructure/graph/ItemWrapper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/dualscreen/datastructure/graph/ItemWrapper;->getWrappedItem()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/dualscreen/datastructure/RelationObject;

    if-eqz v5, :cond_4

    invoke-interface {v5}, Lcom/samsung/android/dualscreen/datastructure/RelationObject;->getObject()Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_0

    :cond_4
    sget-boolean v9, Lcom/samsung/android/dualscreen/datastructure/RelationGraph;->DEBUG:Z

    if-eqz v9, :cond_5

    sget-object v9, Lcom/samsung/android/dualscreen/datastructure/RelationGraph;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "garbageCollect() : release itemWrapper="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v9, p0, Lcom/samsung/android/dualscreen/datastructure/RelationGraph;->mItemWrapperHashMap:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/samsung/android/dualscreen/datastructure/graph/ItemWrapper;

    if-ne v8, v2, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    sget-boolean v9, Lcom/samsung/android/dualscreen/datastructure/RelationGraph;->DEBUG:Z

    if-eqz v9, :cond_6

    sget-object v9, Lcom/samsung/android/dualscreen/datastructure/RelationGraph;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Garbage collected "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_7
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;

    iget-object v9, p0, Lcom/samsung/android/dualscreen/datastructure/RelationGraph;->mGraph:Lcom/samsung/android/dualscreen/datastructure/graph/Graph;

    invoke-virtual {v6}, Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;->getElement()Lcom/samsung/android/dualscreen/datastructure/graph/ItemWrapper;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/samsung/android/dualscreen/datastructure/graph/Graph;->removeVertex(Lcom/samsung/android/dualscreen/datastructure/graph/ItemWrapper;)Z

    goto :goto_2

    :cond_8
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public getDescendantRelation(Lcom/samsung/android/dualscreen/datastructure/RelationObject;)Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/dualscreen/datastructure/RelationObject;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/dualscreen/datastructure/RelationObject;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v8, p0, Lcom/samsung/android/dualscreen/datastructure/RelationGraph;->mItemWrapperHashMap:Ljava/util/HashMap;

    invoke-virtual {v8, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/dualscreen/datastructure/graph/ItemWrapper;

    if-nez v3, :cond_1

    sget-boolean v8, Lcom/samsung/android/dualscreen/datastructure/RelationGraph;->DEBUG:Z

    if-eqz v8, :cond_0

    sget-object v8, Lcom/samsung/android/dualscreen/datastructure/RelationGraph;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getDescendantRelation() : no WrapperItem for object="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v0

    :cond_1
    iget-object v8, p0, Lcom/samsung/android/dualscreen/datastructure/RelationGraph;->mGraph:Lcom/samsung/android/dualscreen/datastructure/graph/Graph;

    invoke-virtual {v8, v3}, Lcom/samsung/android/dualscreen/datastructure/graph/Graph;->itemToVertex(Lcom/samsung/android/dualscreen/datastructure/graph/ItemWrapper;)Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;

    move-result-object v5

    iget-object v8, p0, Lcom/samsung/android/dualscreen/datastructure/RelationGraph;->mGraph:Lcom/samsung/android/dualscreen/datastructure/graph/Graph;

    invoke-virtual {v8, v5}, Lcom/samsung/android/dualscreen/datastructure/graph/Graph;->getRootVertex(Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;)Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;

    move-result-object v4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v4, :cond_4

    iget-object v8, p0, Lcom/samsung/android/dualscreen/datastructure/RelationGraph;->mGraph:Lcom/samsung/android/dualscreen/datastructure/graph/Graph;

    invoke-virtual {v8, v4}, Lcom/samsung/android/dualscreen/datastructure/graph/Graph;->descendantVertices(Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;->getElement()Lcom/samsung/android/dualscreen/datastructure/graph/ItemWrapper;

    move-result-object v7

    if-eqz v7, :cond_3

    invoke-virtual {v7}, Lcom/samsung/android/dualscreen/datastructure/graph/ItemWrapper;->getWrappedItem()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    if-eqz v5, :cond_2

    iget-object v8, p0, Lcom/samsung/android/dualscreen/datastructure/RelationGraph;->mGraph:Lcom/samsung/android/dualscreen/datastructure/graph/Graph;

    invoke-virtual {v8, v5}, Lcom/samsung/android/dualscreen/datastructure/graph/Graph;->descendantVertices(Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getGraph()Lcom/samsung/android/dualscreen/datastructure/graph/Graph;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/samsung/android/dualscreen/datastructure/graph/Graph",
            "<",
            "Lcom/samsung/android/dualscreen/datastructure/RelationObject;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/dualscreen/datastructure/RelationGraph;->mGraph:Lcom/samsung/android/dualscreen/datastructure/graph/Graph;

    return-object v0
.end method

.method public getLeafRelation(Lcom/samsung/android/dualscreen/datastructure/RelationObject;)Lcom/samsung/android/dualscreen/datastructure/RelationObject;
    .locals 7

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/samsung/android/dualscreen/datastructure/RelationGraph;->mItemWrapperHashMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/dualscreen/datastructure/graph/ItemWrapper;

    if-eqz v0, :cond_2

    iget-object v4, p0, Lcom/samsung/android/dualscreen/datastructure/RelationGraph;->mGraph:Lcom/samsung/android/dualscreen/datastructure/graph/Graph;

    invoke-virtual {v4, v0}, Lcom/samsung/android/dualscreen/datastructure/graph/Graph;->getLeafVertex(Lcom/samsung/android/dualscreen/datastructure/graph/ItemWrapper;)Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;->getElement()Lcom/samsung/android/dualscreen/datastructure/graph/ItemWrapper;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/dualscreen/datastructure/graph/ItemWrapper;->getWrappedItem()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/dualscreen/datastructure/RelationObject;

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    sget-boolean v4, Lcom/samsung/android/dualscreen/datastructure/RelationGraph;->DEBUG:Z

    if-eqz v4, :cond_0

    sget-object v4, Lcom/samsung/android/dualscreen/datastructure/RelationGraph;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getLeafRelation() : no vertex for itemWrapper="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    sget-boolean v4, Lcom/samsung/android/dualscreen/datastructure/RelationGraph;->DEBUG:Z

    if-eqz v4, :cond_0

    sget-object v4, Lcom/samsung/android/dualscreen/datastructure/RelationGraph;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getLeafRelation() : no WrapperItem for object="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getRootRelation(Lcom/samsung/android/dualscreen/datastructure/RelationObject;)Lcom/samsung/android/dualscreen/datastructure/RelationObject;
    .locals 7

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/samsung/android/dualscreen/datastructure/RelationGraph;->mItemWrapperHashMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/dualscreen/datastructure/graph/ItemWrapper;

    if-eqz v0, :cond_2

    iget-object v4, p0, Lcom/samsung/android/dualscreen/datastructure/RelationGraph;->mGraph:Lcom/samsung/android/dualscreen/datastructure/graph/Graph;

    invoke-virtual {v4, v0}, Lcom/samsung/android/dualscreen/datastructure/graph/Graph;->getRootVertex(Lcom/samsung/android/dualscreen/datastructure/graph/ItemWrapper;)Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/samsung/android/dualscreen/datastructure/graph/Vertex;->getElement()Lcom/samsung/android/dualscreen/datastructure/graph/ItemWrapper;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/dualscreen/datastructure/graph/ItemWrapper;->getWrappedItem()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/dualscreen/datastructure/RelationObject;

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    sget-boolean v4, Lcom/samsung/android/dualscreen/datastructure/RelationGraph;->DEBUG:Z

    if-eqz v4, :cond_0

    sget-object v4, Lcom/samsung/android/dualscreen/datastructure/RelationGraph;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getRootRelation() : no vertex for itemWrapper="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    sget-boolean v4, Lcom/samsung/android/dualscreen/datastructure/RelationGraph;->DEBUG:Z

    if-eqz v4, :cond_0

    sget-object v4, Lcom/samsung/android/dualscreen/datastructure/RelationGraph;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getRootRelation() : no WrapperItem for object="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public propagateChangedRelationInfo(Lcom/samsung/android/dualscreen/datastructure/RelationObject;Ljava/lang/Object;)V
    .locals 6

    sget-object v3, Lcom/samsung/android/dualscreen/datastructure/RelationGraph;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "propagateChangedRelation() : object="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " updateInfo="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/samsung/android/dualscreen/datastructure/RelationGraph;->getDescendantRelation(Lcom/samsung/android/dualscreen/datastructure/RelationObject;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_3

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/dualscreen/datastructure/RelationObject;

    if-eqz v2, :cond_0

    sget-boolean v3, Lcom/samsung/android/dualscreen/datastructure/RelationGraph;->DEBUG:Z

    if-eqz v3, :cond_1

    sget-object v3, Lcom/samsung/android/dualscreen/datastructure/RelationGraph;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " propagate to ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-interface {v2, v3}, Lcom/samsung/android/dualscreen/datastructure/RelationObject;->updateRelatedInfo([Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/dualscreen/datastructure/RelationGraph;->garbageCollect()V

    return-void

    :cond_3
    new-instance v3, Ljava/util/NoSuchElementException;

    invoke-direct {v3}, Ljava/util/NoSuchElementException;-><init>()V

    throw v3
.end method

.method public removeRelation(Lcom/samsung/android/dualscreen/datastructure/RelationObject;)Z
    .locals 4

    iget-object v1, p0, Lcom/samsung/android/dualscreen/datastructure/RelationGraph;->mItemWrapperHashMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/dualscreen/datastructure/graph/ItemWrapper;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/dualscreen/datastructure/RelationGraph;->mGraph:Lcom/samsung/android/dualscreen/datastructure/graph/Graph;

    invoke-virtual {v1, v0}, Lcom/samsung/android/dualscreen/datastructure/graph/Graph;->removeVertex(Lcom/samsung/android/dualscreen/datastructure/graph/ItemWrapper;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/dualscreen/datastructure/RelationGraph;->mItemWrapperHashMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/samsung/android/dualscreen/datastructure/RelationGraph;->garbageCollect()V

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    sget-boolean v1, Lcom/samsung/android/dualscreen/datastructure/RelationGraph;->DEBUG:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/samsung/android/dualscreen/datastructure/RelationGraph;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "no WrapperItem for object="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Graph \n "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/dualscreen/datastructure/RelationGraph;->mGraph:Lcom/samsung/android/dualscreen/datastructure/graph/Graph;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

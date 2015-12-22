.class public abstract Lcom/samsung/android/dualscreen/datastructure/ContextRelatedInstanceHandler;
.super Ljava/lang/Object;
.source "ContextRelatedInstanceHandler.java"


# static fields
.field static final DEBUG:Z


# instance fields
.field protected TAG:Ljava/lang/String;

.field protected final mContextRelatedInstanceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/dualscreen/datastructure/ContextRelatedInstance;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/samsung/android/dualscreen/ContextRelationManager;->DEBUG:Z

    sput-boolean v0, Lcom/samsung/android/dualscreen/datastructure/ContextRelatedInstanceHandler;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/dualscreen/datastructure/ContextRelatedInstance;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/dualscreen/datastructure/ContextRelatedInstanceHandler;->mContextRelatedInstanceList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public abstract createContextRelatedInstance(Landroid/content/Context;Ljava/lang/Object;)Z
.end method

.method public abstract dump(Ljava/io/PrintWriter;Ljava/lang/String;ZZ)V
.end method

.method findContextRelatedInstance(Landroid/content/Context;)Lcom/samsung/android/dualscreen/datastructure/ContextRelatedInstance;
    .locals 5

    const/4 v3, 0x0

    if-nez p1, :cond_0

    move-object v1, v3

    :goto_0
    return-object v1

    :cond_0
    iget-object v4, p0, Lcom/samsung/android/dualscreen/datastructure/ContextRelatedInstanceHandler;->mContextRelatedInstanceList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/dualscreen/datastructure/ContextRelatedInstance;

    invoke-interface {v1}, Lcom/samsung/android/dualscreen/datastructure/ContextRelatedInstance;->getObject()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Landroid/content/Context;

    if-eqz v4, :cond_1

    invoke-interface {v1}, Lcom/samsung/android/dualscreen/datastructure/ContextRelatedInstance;->getObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    if-eqz v2, :cond_1

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_2
    move-object v1, v3

    goto :goto_0
.end method

.method public garbageCollect()V
    .locals 5

    sget-boolean v3, Lcom/samsung/android/dualscreen/datastructure/ContextRelatedInstanceHandler;->DEBUG:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/dualscreen/datastructure/ContextRelatedInstanceHandler;->TAG:Ljava/lang/String;

    const-string v4, "garbageCollect()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/dualscreen/datastructure/ContextRelatedInstanceHandler;->mContextRelatedInstanceList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/dualscreen/datastructure/ContextRelatedInstance;

    invoke-interface {v1}, Lcom/samsung/android/dualscreen/datastructure/ContextRelatedInstance;->getObject()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    invoke-interface {v1}, Lcom/samsung/android/dualscreen/datastructure/ContextRelatedInstance;->release()V

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Lcom/samsung/android/dualscreen/datastructure/ContextRelatedInstance;->garbageCollect()V

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/samsung/android/dualscreen/datastructure/ContextRelatedInstanceHandler;->mContextRelatedInstanceList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    invoke-virtual {v2}, Ljava/util/LinkedList;->clear()V

    return-void
.end method

.method public propagateChangedRelationInfo(Ljava/util/ArrayList;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/Context;",
            ">;I)V"
        }
    .end annotation

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_3

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Context;

    sget-boolean v5, Lcom/samsung/android/dualscreen/datastructure/ContextRelatedInstanceHandler;->DEBUG:Z

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/samsung/android/dualscreen/datastructure/ContextRelatedInstanceHandler;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " propagate to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz v4, :cond_0

    instance-of v5, v4, Landroid/content/Context;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/samsung/android/dualscreen/datastructure/ContextRelatedInstanceHandler;->mContextRelatedInstanceList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/dualscreen/datastructure/ContextRelatedInstance;

    invoke-interface {v3}, Lcom/samsung/android/dualscreen/datastructure/ContextRelatedInstance;->getObject()Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Landroid/content/Context;

    if-eqz v5, :cond_2

    invoke-interface {v3}, Lcom/samsung/android/dualscreen/datastructure/ContextRelatedInstance;->getObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-interface {v3, v5}, Lcom/samsung/android/dualscreen/datastructure/ContextRelatedInstance;->updateRelatedInfo([Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/dualscreen/datastructure/ContextRelatedInstanceHandler;->garbageCollect()V

    return-void
.end method

.method public removeContext(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0, p1}, Lcom/samsung/android/dualscreen/datastructure/ContextRelatedInstanceHandler;->findContextRelatedInstance(Landroid/content/Context;)Lcom/samsung/android/dualscreen/datastructure/ContextRelatedInstance;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/dualscreen/datastructure/ContextRelatedInstance;->release()V

    iget-object v1, p0, Lcom/samsung/android/dualscreen/datastructure/ContextRelatedInstanceHandler;->mContextRelatedInstanceList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/dualscreen/datastructure/ContextRelatedInstanceHandler;->garbageCollect()V

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/dualscreen/datastructure/ContextRelatedInstanceHandler;->garbageCollect()V

    const/4 v1, 0x0

    goto :goto_0
.end method

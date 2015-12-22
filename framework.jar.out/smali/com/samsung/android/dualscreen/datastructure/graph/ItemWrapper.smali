.class public Lcom/samsung/android/dualscreen/datastructure/graph/ItemWrapper;
.super Ljava/lang/Object;
.source "ItemWrapper.java"


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
.field dummy:Z

.field item:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/dualscreen/datastructure/graph/ItemWrapper;->dummy:Z

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/dualscreen/datastructure/graph/ItemWrapper;->dummy:Z

    iput-object p1, p0, Lcom/samsung/android/dualscreen/datastructure/graph/ItemWrapper;->item:Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    instance-of v3, p1, Lcom/samsung/android/dualscreen/datastructure/graph/ItemWrapper;

    if-eqz v3, :cond_5

    move-object v0, p1

    check-cast v0, Lcom/samsung/android/dualscreen/datastructure/graph/ItemWrapper;

    invoke-virtual {v0}, Lcom/samsung/android/dualscreen/datastructure/graph/ItemWrapper;->getWrappedItem()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/samsung/android/dualscreen/datastructure/graph/ItemWrapper;->item:Ljava/lang/Object;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/samsung/android/dualscreen/datastructure/graph/ItemWrapper;->item:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    iget-object v4, v0, Lcom/samsung/android/dualscreen/datastructure/graph/ItemWrapper;->item:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/dualscreen/datastructure/graph/ItemWrapper;->item:Ljava/lang/Object;

    iget-object v4, v0, Lcom/samsung/android/dualscreen/datastructure/graph/ItemWrapper;->item:Ljava/lang/Object;

    if-ne v3, v4, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/lang/ClassCastException;

    invoke-direct {v1}, Ljava/lang/ClassCastException;-><init>()V

    throw v1

    :cond_3
    iget-object v3, v0, Lcom/samsung/android/dualscreen/datastructure/graph/ItemWrapper;->item:Ljava/lang/Object;

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/samsung/android/dualscreen/datastructure/graph/ItemWrapper;->item:Ljava/lang/Object;

    if-nez v3, :cond_4

    if-eq v0, p0, :cond_0

    move v1, v2

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_0

    :cond_5
    move v1, v2

    goto :goto_0
.end method

.method public getWrappedItem()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/dualscreen/datastructure/graph/ItemWrapper;->item:Ljava/lang/Object;

    return-object v0
.end method

.method public isDummyWrappedItem()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/dualscreen/datastructure/graph/ItemWrapper;->dummy:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-boolean v1, p0, Lcom/samsung/android/dualscreen/datastructure/graph/ItemWrapper;->dummy:Z

    if-eqz v1, :cond_0

    const-string v1, "dummy"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/dualscreen/datastructure/graph/ItemWrapper;->item:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

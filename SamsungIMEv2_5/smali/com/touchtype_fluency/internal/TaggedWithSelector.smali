.class public Lcom/touchtype_fluency/internal/TaggedWithSelector;
.super Ljava/lang/Object;
.source "TaggedWithSelector.java"

# interfaces
.implements Lcom/touchtype_fluency/TagSelector;


# instance fields
.field private withTags:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/touchtype_fluency/internal/TaggedWithSelector;->withTags:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public apply(Ljava/util/Set;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/touchtype_fluency/internal/TaggedWithSelector;->withTags:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/touchtype_fluency/internal/TaggedWithSelector;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/touchtype_fluency/internal/TaggedWithSelector;

    iget-object v1, p0, Lcom/touchtype_fluency/internal/TaggedWithSelector;->withTags:Ljava/util/Collection;

    iget-object v2, p1, Lcom/touchtype_fluency/internal/TaggedWithSelector;->withTags:Ljava/util/Collection;

    invoke-interface {v1, v2}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/touchtype_fluency/internal/TaggedWithSelector;->withTags:Ljava/util/Collection;

    iget-object v2, p0, Lcom/touchtype_fluency/internal/TaggedWithSelector;->withTags:Ljava/util/Collection;

    invoke-interface {v1, v2}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/touchtype_fluency/internal/TaggedWithSelector;->withTags:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    xor-int/2addr v0, v1

    move v1, v0

    goto :goto_0

    :cond_0
    return v1
.end method

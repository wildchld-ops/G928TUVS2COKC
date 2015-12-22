.class final Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;
.super Lcom/google/common/collect/RegularImmutableTable;
.source "RegularImmutableTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/RegularImmutableTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DenseImmutableTable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "C:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/RegularImmutableTable",
        "<TR;TC;TV;>;"
    }
.end annotation


# instance fields
.field private final columnKeyToIndex:Lcom/google/common/collect/ImmutableBiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableBiMap",
            "<TC;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final rowKeyToIndex:Lcom/google/common/collect/ImmutableBiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableBiMap",
            "<TR;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private volatile transient rowMap:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap",
            "<TR;",
            "Ljava/util/Map",
            "<TC;TV;>;>;"
        }
    .end annotation
.end field

.field private final values:[[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[[TV;"
        }
    .end annotation
.end field


# direct methods
.method private makeRowMap()Lcom/google/common/collect/ImmutableMap;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMap",
            "<TR;",
            "Ljava/util/Map",
            "<TC;TV;>;>;"
        }
    .end annotation

    const/4 v1, 0x0

    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v3

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;->values:[[Ljava/lang/Object;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;->values:[[Ljava/lang/Object;

    aget-object v4, v2, v0

    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->builder()Lcom/google/common/collect/ImmutableMap$Builder;

    move-result-object v5

    move v2, v1

    :goto_1
    array-length v6, v4

    if-ge v2, v6, :cond_1

    aget-object v6, v4, v2

    if-eqz v6, :cond_0

    iget-object v7, p0, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;->columnKeyToIndex:Lcom/google/common/collect/ImmutableBiMap;

    invoke-virtual {v7}, Lcom/google/common/collect/ImmutableBiMap;->inverse()Lcom/google/common/collect/ImmutableBiMap;

    move-result-object v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/common/collect/ImmutableBiMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v7, v6}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;->rowKeyToIndex:Lcom/google/common/collect/ImmutableBiMap;

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableBiMap;->inverse()Lcom/google/common/collect/ImmutableBiMap;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/common/collect/ImmutableBiMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v5}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lcom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic cellSet()Ljava/util/Set;
    .locals 1

    invoke-super {p0}, Lcom/google/common/collect/RegularImmutableTable;->cellSet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public rowMap()Lcom/google/common/collect/ImmutableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMap",
            "<TR;",
            "Ljava/util/Map",
            "<TC;TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;->rowMap:Lcom/google/common/collect/ImmutableMap;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;->makeRowMap()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/RegularImmutableTable$DenseImmutableTable;->rowMap:Lcom/google/common/collect/ImmutableMap;

    :cond_0
    return-object v0
.end method

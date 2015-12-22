.class final Lmf/org/apache/xerces/impl/dv/xs/ListDV$ListData;
.super Ljava/util/AbstractList;
.source "ListDV.java"

# interfaces
.implements Lmf/org/apache/xerces/xs/datatypes/ObjectList;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/impl/dv/xs/ListDV;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ListData"
.end annotation


# instance fields
.field private canonical:Ljava/lang/String;

.field final data:[Ljava/lang/Object;


# direct methods
.method public constructor <init>([Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    iput-object p1, p0, Lmf/org/apache/xerces/impl/dv/xs/ListDV$ListData;->data:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/ListDV$ListData;->data:[Ljava/lang/Object;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    const/4 v1, 0x0

    :goto_1
    return v1

    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/ListDV$ListData;->data:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-ne p1, v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v3, 0x0

    instance-of v4, p1, Lmf/org/apache/xerces/impl/dv/xs/ListDV$ListData;

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    check-cast p1, Lmf/org/apache/xerces/impl/dv/xs/ListDV$ListData;

    iget-object v2, p1, Lmf/org/apache/xerces/impl/dv/xs/ListDV$ListData;->data:[Ljava/lang/Object;

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/ListDV$ListData;->data:[Ljava/lang/Object;

    array-length v0, v4

    array-length v4, v2

    if-ne v0, v4, :cond_0

    const/4 v1, 0x0

    :goto_1
    if-lt v1, v0, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/ListDV$ListData;->data:[Ljava/lang/Object;

    aget-object v4, v4, v1

    aget-object v5, v2, v1

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public get(I)Ljava/lang/Object;
    .locals 3

    if-ltz p1, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/ListDV$ListData;->data:[Ljava/lang/Object;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/ListDV$ListData;->data:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Index: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getLength()I
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/ListDV$ListData;->data:[Ljava/lang/Object;

    array-length v0, v0

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dv/xs/ListDV$ListData;->data:[Ljava/lang/Object;

    array-length v2, v2

    if-lt v1, v2, :cond_0

    return v0

    :cond_0
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dv/xs/ListDV$ListData;->data:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public item(I)Ljava/lang/Object;
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/ListDV$ListData;->data:[Ljava/lang/Object;

    array-length v0, v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/ListDV$ListData;->data:[Ljava/lang/Object;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public size()I
    .locals 1

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/dv/xs/ListDV$ListData;->getLength()I

    move-result v0

    return v0
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lmf/org/apache/xerces/impl/dv/xs/ListDV$ListData;->canonical:Ljava/lang/String;

    if-nez v3, :cond_1

    iget-object v3, p0, Lmf/org/apache/xerces/impl/dv/xs/ListDV$ListData;->data:[Ljava/lang/Object;

    array-length v2, v3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    if-lez v2, :cond_0

    iget-object v3, p0, Lmf/org/apache/xerces/impl/dv/xs/ListDV$ListData;->data:[Ljava/lang/Object;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    const/4 v1, 0x1

    :goto_0
    if-lt v1, v2, :cond_2

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lmf/org/apache/xerces/impl/dv/xs/ListDV$ListData;->canonical:Ljava/lang/String;

    :cond_1
    iget-object v3, p0, Lmf/org/apache/xerces/impl/dv/xs/ListDV$ListData;->canonical:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v3

    :cond_2
    const/16 v3, 0x20

    :try_start_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/dv/xs/ListDV$ListData;->data:[Ljava/lang/Object;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3
.end method

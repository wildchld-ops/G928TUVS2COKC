.class public Lmf/org/apache/xerces/impl/xpath/regex/Match;
.super Ljava/lang/Object;
.source "Match.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field beginpos:[I

.field charSource:[C

.field ciSource:Ljava/text/CharacterIterator;

.field endpos:[I

.field nofgroups:I

.field strSource:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/Match;->beginpos:[I

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/Match;->endpos:[I

    const/4 v0, 0x0

    iput v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/Match;->nofgroups:I

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/Match;->ciSource:Ljava/text/CharacterIterator;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/Match;->strSource:Ljava/lang/String;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/Match;->charSource:[C

    return-void
.end method


# virtual methods
.method public declared-synchronized clone()Ljava/lang/Object;
    .locals 3

    monitor-enter p0

    :try_start_0
    new-instance v1, Lmf/org/apache/xerces/impl/xpath/regex/Match;

    invoke-direct {v1}, Lmf/org/apache/xerces/impl/xpath/regex/Match;-><init>()V

    iget v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/Match;->nofgroups:I

    if-lez v2, :cond_2

    iget v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/Match;->nofgroups:I

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/xpath/regex/Match;->setNumberOfGroups(I)V

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/Match;->ciSource:Ljava/text/CharacterIterator;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/Match;->ciSource:Ljava/text/CharacterIterator;

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/xpath/regex/Match;->setSource(Ljava/text/CharacterIterator;)V

    :cond_0
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/Match;->strSource:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/Match;->strSource:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/xpath/regex/Match;->setSource(Ljava/lang/String;)V

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/Match;->nofgroups:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v0, v2, :cond_3

    :cond_2
    monitor-exit p0

    return-object v1

    :cond_3
    :try_start_1
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/impl/xpath/regex/Match;->getBeginning(I)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lmf/org/apache/xerces/impl/xpath/regex/Match;->setBeginning(II)V

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/impl/xpath/regex/Match;->getEnd(I)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lmf/org/apache/xerces/impl/xpath/regex/Match;->setEnd(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public getBeginning(I)I
    .locals 3

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/Match;->beginpos:[I

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "A result is not set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-ltz p1, :cond_1

    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/Match;->nofgroups:I

    if-gt v0, p1, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The parameter must be less than "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/Match;->nofgroups:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/Match;->beginpos:[I

    aget v0, v0, p1

    return v0
.end method

.method public getCapturedText(I)Ljava/lang/String;
    .locals 6

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/Match;->beginpos:[I

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "match() has never been called."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    if-ltz p1, :cond_1

    iget v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/Match;->nofgroups:I

    if-gt v3, p1, :cond_2

    :cond_1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "The parameter must be less than "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/Match;->nofgroups:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/Match;->beginpos:[I

    aget v0, v3, p1

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/Match;->endpos:[I

    aget v1, v3, p1

    if-ltz v0, :cond_3

    if-gez v1, :cond_4

    :cond_3
    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_4
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/Match;->ciSource:Ljava/text/CharacterIterator;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/Match;->ciSource:Ljava/text/CharacterIterator;

    invoke-static {v3, v0, v1}, Lmf/org/apache/xerces/impl/xpath/regex/REUtil;->substring(Ljava/text/CharacterIterator;II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_5
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/Match;->strSource:Ljava/lang/String;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/Match;->strSource:Ljava/lang/String;

    invoke-virtual {v3, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_6
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/Match;->charSource:[C

    sub-int v4, v1, v0

    invoke-direct {v2, v3, v0, v4}, Ljava/lang/String;-><init>([CII)V

    goto :goto_0
.end method

.method public getEnd(I)I
    .locals 3

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/Match;->endpos:[I

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "A result is not set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-ltz p1, :cond_1

    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/Match;->nofgroups:I

    if-gt v0, p1, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The parameter must be less than "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/Match;->nofgroups:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/Match;->endpos:[I

    aget v0, v0, p1

    return v0
.end method

.method public getNumberOfGroups()I
    .locals 2

    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/Match;->nofgroups:I

    if-gtz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "A result is not set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/Match;->nofgroups:I

    return v0
.end method

.method protected setBeginning(II)V
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/Match;->beginpos:[I

    aput p2, v0, p1

    return-void
.end method

.method protected setEnd(II)V
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/Match;->endpos:[I

    aput p2, v0, p1

    return-void
.end method

.method protected setNumberOfGroups(I)V
    .locals 4

    const/4 v3, -0x1

    iget v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/Match;->nofgroups:I

    iput p1, p0, Lmf/org/apache/xerces/impl/xpath/regex/Match;->nofgroups:I

    if-lez v1, :cond_0

    if-lt v1, p1, :cond_0

    mul-int/lit8 v2, p1, 0x2

    if-ge v2, v1, :cond_1

    :cond_0
    new-array v2, p1, [I

    iput-object v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/Match;->beginpos:[I

    new-array v2, p1, [I

    iput-object v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/Match;->endpos:[I

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-lt v0, p1, :cond_2

    return-void

    :cond_2
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/Match;->beginpos:[I

    aput v3, v2, v0

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/Match;->endpos:[I

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected setSource(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/Match;->ciSource:Ljava/text/CharacterIterator;

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xpath/regex/Match;->strSource:Ljava/lang/String;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/Match;->charSource:[C

    return-void
.end method

.method protected setSource(Ljava/text/CharacterIterator;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xpath/regex/Match;->ciSource:Ljava/text/CharacterIterator;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/Match;->strSource:Ljava/lang/String;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/Match;->charSource:[C

    return-void
.end method

.method protected setSource([C)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/Match;->ciSource:Ljava/text/CharacterIterator;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/Match;->strSource:Ljava/lang/String;

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xpath/regex/Match;->charSource:[C

    return-void
.end method

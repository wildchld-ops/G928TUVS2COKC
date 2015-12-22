.class public Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;
.super Ljava/lang/Object;
.source "BMPattern.java"


# instance fields
.field final ignoreCase:Z

.field final pattern:[C

.field final shiftTable:[I


# direct methods
.method public constructor <init>(Ljava/lang/String;IZ)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v5

    iput-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->pattern:[C

    new-array v5, p2, [I

    iput-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->shiftTable:[I

    iput-boolean p3, p0, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->ignoreCase:Z

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->pattern:[C

    array-length v4, v5

    const/4 v2, 0x0

    :goto_0
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->shiftTable:[I

    array-length v5, v5

    if-lt v2, v5, :cond_0

    const/4 v2, 0x0

    :goto_1
    if-lt v2, v4, :cond_1

    return-void

    :cond_0
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->shiftTable:[I

    aput v4, v5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->pattern:[C

    aget-char v0, v5, v2

    sub-int v5, v4, v2

    add-int/lit8 v1, v5, -0x1

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->shiftTable:[I

    array-length v5, v5

    rem-int v3, v0, v5

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->shiftTable:[I

    aget v5, v5, v3

    if-ge v1, v5, :cond_2

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->shiftTable:[I

    aput v1, v5, v3

    :cond_2
    iget-boolean v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->ignoreCase:Z

    if-eqz v5, :cond_4

    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->shiftTable:[I

    array-length v5, v5

    rem-int v3, v0, v5

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->shiftTable:[I

    aget v5, v5, v3

    if-ge v1, v5, :cond_3

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->shiftTable:[I

    aput v1, v5, v3

    :cond_3
    invoke-static {v0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v0

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->shiftTable:[I

    array-length v5, v5

    rem-int v3, v0, v5

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->shiftTable:[I

    aget v5, v5, v3

    if-ge v1, v5, :cond_4

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->shiftTable:[I

    aput v1, v5, v3

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    const/16 v0, 0x100

    invoke-direct {p0, p1, v0, p2}, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;-><init>(Ljava/lang/String;IZ)V

    return-void
.end method


# virtual methods
.method public matches(Ljava/lang/String;II)I
    .locals 7

    iget-boolean v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->ignoreCase:Z

    if-eqz v5, :cond_1

    invoke-virtual {p0, p1, p2, p3}, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->matchesIgnoreCase(Ljava/lang/String;II)I

    move-result p2

    :cond_0
    :goto_0
    return p2

    :cond_1
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->pattern:[C

    array-length v4, v5

    if-eqz v4, :cond_0

    add-int v1, p2, v4

    :cond_2
    :goto_1
    if-le v1, p3, :cond_3

    const/4 p2, -0x1

    goto :goto_0

    :cond_3
    move v3, v4

    add-int/lit8 v2, v1, 0x1

    :cond_4
    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->pattern:[C

    add-int/lit8 v3, v3, -0x1

    aget-char v5, v5, v3

    if-eq v0, v5, :cond_5

    :goto_2
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->shiftTable:[I

    iget-object v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->shiftTable:[I

    array-length v6, v6

    rem-int v6, v0, v6

    aget v5, v5, v6

    add-int/lit8 v5, v5, 0x1

    add-int/2addr v1, v5

    if-ge v1, v2, :cond_2

    move v1, v2

    goto :goto_1

    :cond_5
    if-nez v3, :cond_6

    move p2, v1

    goto :goto_0

    :cond_6
    if-gtz v3, :cond_4

    goto :goto_2
.end method

.method public matches(Ljava/text/CharacterIterator;II)I
    .locals 7

    iget-boolean v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->ignoreCase:Z

    if-eqz v5, :cond_1

    invoke-virtual {p0, p1, p2, p3}, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->matchesIgnoreCase(Ljava/text/CharacterIterator;II)I

    move-result p2

    :cond_0
    :goto_0
    return p2

    :cond_1
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->pattern:[C

    array-length v4, v5

    if-eqz v4, :cond_0

    add-int v1, p2, v4

    :cond_2
    :goto_1
    if-le v1, p3, :cond_3

    const/4 p2, -0x1

    goto :goto_0

    :cond_3
    move v3, v4

    add-int/lit8 v2, v1, 0x1

    :cond_4
    add-int/lit8 v1, v1, -0x1

    invoke-interface {p1, v1}, Ljava/text/CharacterIterator;->setIndex(I)C

    move-result v0

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->pattern:[C

    add-int/lit8 v3, v3, -0x1

    aget-char v5, v5, v3

    if-eq v0, v5, :cond_5

    :goto_2
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->shiftTable:[I

    iget-object v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->shiftTable:[I

    array-length v6, v6

    rem-int v6, v0, v6

    aget v5, v5, v6

    add-int/lit8 v5, v5, 0x1

    add-int/2addr v1, v5

    if-ge v1, v2, :cond_2

    move v1, v2

    goto :goto_1

    :cond_5
    if-nez v3, :cond_6

    move p2, v1

    goto :goto_0

    :cond_6
    if-gtz v3, :cond_4

    goto :goto_2
.end method

.method public matches([CII)I
    .locals 7

    iget-boolean v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->ignoreCase:Z

    if-eqz v5, :cond_1

    invoke-virtual {p0, p1, p2, p3}, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->matchesIgnoreCase([CII)I

    move-result p2

    :cond_0
    :goto_0
    return p2

    :cond_1
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->pattern:[C

    array-length v4, v5

    if-eqz v4, :cond_0

    add-int v1, p2, v4

    :cond_2
    :goto_1
    if-le v1, p3, :cond_3

    const/4 p2, -0x1

    goto :goto_0

    :cond_3
    move v3, v4

    add-int/lit8 v2, v1, 0x1

    :cond_4
    add-int/lit8 v1, v1, -0x1

    aget-char v0, p1, v1

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->pattern:[C

    add-int/lit8 v3, v3, -0x1

    aget-char v5, v5, v3

    if-eq v0, v5, :cond_5

    :goto_2
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->shiftTable:[I

    iget-object v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->shiftTable:[I

    array-length v6, v6

    rem-int v6, v0, v6

    aget v5, v5, v6

    add-int/lit8 v5, v5, 0x1

    add-int/2addr v1, v5

    if-ge v1, v2, :cond_2

    move v1, v2

    goto :goto_1

    :cond_5
    if-nez v3, :cond_6

    move p2, v1

    goto :goto_0

    :cond_6
    if-gtz v3, :cond_4

    goto :goto_2
.end method

.method matchesIgnoreCase(Ljava/lang/String;II)I
    .locals 9

    iget-object v7, p0, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->pattern:[C

    array-length v6, v7

    if-nez v6, :cond_0

    :goto_0
    return p2

    :cond_0
    add-int v3, p2, v6

    :cond_1
    :goto_1
    if-le v3, p3, :cond_2

    const/4 p2, -0x1

    goto :goto_0

    :cond_2
    move v5, v6

    add-int/lit8 v4, v3, 0x1

    :cond_3
    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    move v1, v0

    iget-object v7, p0, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->pattern:[C

    add-int/lit8 v5, v5, -0x1

    aget-char v2, v7, v5

    if-eq v1, v2, :cond_4

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v2

    if-eq v1, v2, :cond_4

    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v7

    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v8

    if-eq v7, v8, :cond_4

    :goto_2
    iget-object v7, p0, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->shiftTable:[I

    iget-object v8, p0, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->shiftTable:[I

    array-length v8, v8

    rem-int v8, v0, v8

    aget v7, v7, v8

    add-int/lit8 v7, v7, 0x1

    add-int/2addr v3, v7

    if-ge v3, v4, :cond_1

    move v3, v4

    goto :goto_1

    :cond_4
    if-nez v5, :cond_5

    move p2, v3

    goto :goto_0

    :cond_5
    if-gtz v5, :cond_3

    goto :goto_2
.end method

.method matchesIgnoreCase(Ljava/text/CharacterIterator;II)I
    .locals 9

    iget-object v7, p0, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->pattern:[C

    array-length v6, v7

    if-nez v6, :cond_0

    :goto_0
    return p2

    :cond_0
    add-int v3, p2, v6

    :cond_1
    :goto_1
    if-le v3, p3, :cond_2

    const/4 p2, -0x1

    goto :goto_0

    :cond_2
    move v5, v6

    add-int/lit8 v4, v3, 0x1

    :cond_3
    add-int/lit8 v3, v3, -0x1

    invoke-interface {p1, v3}, Ljava/text/CharacterIterator;->setIndex(I)C

    move-result v0

    move v1, v0

    iget-object v7, p0, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->pattern:[C

    add-int/lit8 v5, v5, -0x1

    aget-char v2, v7, v5

    if-eq v1, v2, :cond_4

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v2

    if-eq v1, v2, :cond_4

    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v7

    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v8

    if-eq v7, v8, :cond_4

    :goto_2
    iget-object v7, p0, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->shiftTable:[I

    iget-object v8, p0, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->shiftTable:[I

    array-length v8, v8

    rem-int v8, v0, v8

    aget v7, v7, v8

    add-int/lit8 v7, v7, 0x1

    add-int/2addr v3, v7

    if-ge v3, v4, :cond_1

    move v3, v4

    goto :goto_1

    :cond_4
    if-nez v5, :cond_5

    move p2, v3

    goto :goto_0

    :cond_5
    if-gtz v5, :cond_3

    goto :goto_2
.end method

.method matchesIgnoreCase([CII)I
    .locals 9

    iget-object v7, p0, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->pattern:[C

    array-length v6, v7

    if-nez v6, :cond_0

    :goto_0
    return p2

    :cond_0
    add-int v3, p2, v6

    :cond_1
    :goto_1
    if-le v3, p3, :cond_2

    const/4 p2, -0x1

    goto :goto_0

    :cond_2
    move v5, v6

    add-int/lit8 v4, v3, 0x1

    :cond_3
    add-int/lit8 v3, v3, -0x1

    aget-char v0, p1, v3

    move v1, v0

    iget-object v7, p0, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->pattern:[C

    add-int/lit8 v5, v5, -0x1

    aget-char v2, v7, v5

    if-eq v1, v2, :cond_4

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v2

    if-eq v1, v2, :cond_4

    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v7

    invoke-static {v2}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v8

    if-eq v7, v8, :cond_4

    :goto_2
    iget-object v7, p0, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->shiftTable:[I

    iget-object v8, p0, Lmf/org/apache/xerces/impl/xpath/regex/BMPattern;->shiftTable:[I

    array-length v8, v8

    rem-int v8, v0, v8

    aget v7, v7, v8

    add-int/lit8 v7, v7, 0x1

    add-int/2addr v3, v7

    if-ge v3, v4, :cond_1

    move v3, v4

    goto :goto_1

    :cond_4
    if-nez v5, :cond_5

    move p2, v3

    goto :goto_0

    :cond_5
    if-gtz v5, :cond_3

    goto :goto_2
.end method

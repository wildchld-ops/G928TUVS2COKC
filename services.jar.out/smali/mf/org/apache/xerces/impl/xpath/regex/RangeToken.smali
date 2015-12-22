.class final Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;
.super Lmf/org/apache/xerces/impl/xpath/regex/Token;
.source "RangeToken.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final MAPSIZE:I = 0x100

.field private static final serialVersionUID:J = -0x7b024b6ae8cc53eL


# instance fields
.field compacted:Z

.field icaseCache:Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

.field map:[I

.field nonMapIndex:I

.field ranges:[I

.field sorted:Z


# direct methods
.method constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;-><init>(I)V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->icaseCache:Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->map:[I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->setSorted(Z)V

    return-void
.end method

.method static complementRanges(Lmf/org/apache/xerces/impl/xpath/regex/Token;)Lmf/org/apache/xerces/impl/xpath/regex/Token;
    .locals 11

    const v10, 0x10ffff

    const/4 v9, 0x0

    iget v7, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->type:I

    const/4 v8, 0x4

    if-eq v7, v8, :cond_0

    iget v7, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->type:I

    const/4 v8, 0x5

    if-eq v7, v8, :cond_0

    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Token#complementRanges(): must be RANGE: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v9, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->type:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_0
    move-object v4, p0

    check-cast v4, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->sortRanges()V

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->compactRanges()V

    iget-object v7, v4, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    array-length v7, v7

    add-int/lit8 v2, v7, 0x2

    iget-object v7, v4, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aget v7, v7, v9

    if-nez v7, :cond_1

    add-int/lit8 v2, v2, -0x2

    :cond_1
    iget-object v7, v4, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    iget-object v8, v4, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    array-length v8, v8

    add-int/lit8 v8, v8, -0x1

    aget v1, v7, v8

    if-ne v1, v10, :cond_2

    add-int/lit8 v2, v2, -0x2

    :cond_2
    invoke-static {}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createRange()Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    move-result-object v3

    new-array v7, v2, [I

    iput-object v7, v3, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    const/4 v5, 0x0

    iget-object v7, v4, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aget v7, v7, v9

    if-lez v7, :cond_3

    iget-object v7, v3, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v6, v5, 0x1

    aput v9, v7, v5

    iget-object v7, v3, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v5, v6, 0x1

    iget-object v8, v4, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aget v8, v8, v9

    add-int/lit8 v8, v8, -0x1

    aput v8, v7, v6

    :cond_3
    const/4 v0, 0x1

    :goto_0
    iget-object v7, v4, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    array-length v7, v7

    add-int/lit8 v7, v7, -0x2

    if-lt v0, v7, :cond_5

    if-eq v1, v10, :cond_4

    iget-object v7, v3, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v6, v5, 0x1

    add-int/lit8 v8, v1, 0x1

    aput v8, v7, v5

    iget-object v7, v3, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aput v10, v7, v6

    move v5, v6

    :cond_4
    invoke-direct {v3}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->setCompacted()V

    return-object v3

    :cond_5
    iget-object v7, v3, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v6, v5, 0x1

    iget-object v8, v4, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aget v8, v8, v0

    add-int/lit8 v8, v8, 0x1

    aput v8, v7, v5

    iget-object v7, v3, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v5, v6, 0x1

    iget-object v8, v4, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v9, v0, 0x1

    aget v8, v8, v9

    add-int/lit8 v8, v8, -0x1

    aput v8, v7, v6

    add-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method private createMap()V
    .locals 12

    const/16 v11, 0x100

    const/16 v0, 0x8

    new-array v4, v0, [I

    iget-object v7, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    array-length v5, v7

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v0, :cond_0

    const/4 v2, 0x0

    :goto_1
    iget-object v7, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    array-length v7, v7

    if-lt v2, v7, :cond_1

    :goto_2
    iput-object v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->map:[I

    iput v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->nonMapIndex:I

    return-void

    :cond_0
    const/4 v7, 0x0

    aput v7, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v7, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aget v6, v7, v2

    iget-object v7, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v8, v2, 0x1

    aget v1, v7, v8

    if-ge v6, v11, :cond_4

    move v3, v6

    :goto_3
    if-gt v3, v1, :cond_2

    if-lt v3, v11, :cond_3

    :cond_2
    if-lt v1, v11, :cond_5

    move v5, v2

    goto :goto_2

    :cond_3
    div-int/lit8 v7, v3, 0x20

    aget v8, v4, v7

    const/4 v9, 0x1

    and-int/lit8 v10, v3, 0x1f

    shl-int/2addr v9, v10

    or-int/2addr v8, v9

    aput v8, v4, v7

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_4
    move v5, v2

    goto :goto_2

    :cond_5
    add-int/lit8 v2, v2, 0x2

    goto :goto_1
.end method

.method private static escapeCharInCharClass(I)Ljava/lang/String;
    .locals 5

    sparse-switch p0, :sswitch_data_0

    const/16 v2, 0x20

    if-ge p0, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "0"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\\x"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :sswitch_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\\"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-char v3, p0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :sswitch_1
    const-string v1, "\\f"

    goto :goto_0

    :sswitch_2
    const-string v1, "\\n"

    goto :goto_0

    :sswitch_3
    const-string v1, "\\r"

    goto :goto_0

    :sswitch_4
    const-string v1, "\\t"

    goto :goto_0

    :sswitch_5
    const-string v1, "\\e"

    goto :goto_0

    :cond_0
    const/high16 v2, 0x10000

    if-lt p0, v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "0"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\\v"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    int-to-char v3, p0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_4
        0xa -> :sswitch_2
        0xc -> :sswitch_1
        0xd -> :sswitch_3
        0x1b -> :sswitch_5
        0x2c -> :sswitch_0
        0x2d -> :sswitch_0
        0x5b -> :sswitch_0
        0x5c -> :sswitch_0
        0x5d -> :sswitch_0
        0x5e -> :sswitch_0
    .end sparse-switch
.end method

.method private final isCompacted()Z
    .locals 1

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->compacted:Z

    return v0
.end method

.method private final isSorted()Z
    .locals 1

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->sorted:Z

    return v0
.end method

.method private final setCompacted()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->compacted:Z

    return-void
.end method

.method private final setSorted(Z)V
    .locals 1

    iput-boolean p1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->sorted:Z

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->compacted:Z

    :cond_0
    return-void
.end method


# virtual methods
.method protected addRange(II)V
    .locals 8

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v5, 0x0

    iput-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->icaseCache:Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    if-gt p1, p2, :cond_0

    move v2, p1

    move v3, p2

    :goto_0
    const/4 v0, 0x0

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    if-nez v5, :cond_1

    const/4 v5, 0x2

    new-array v5, v5, [I

    iput-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aput v2, v5, v7

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aput v3, v5, v6

    invoke-direct {p0, v6}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->setSorted(Z)V

    :goto_1
    return-void

    :cond_0
    move v2, p2

    move v3, p1

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    array-length v0, v5

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v6, v0, -0x1

    aget v5, v5, v6

    add-int/lit8 v5, v5, 0x1

    if-ne v5, v2, :cond_2

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v6, v0, -0x1

    aput v3, v5, v6

    goto :goto_1

    :cond_2
    add-int/lit8 v5, v0, 0x2

    new-array v4, v5, [I

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    invoke-static {v5, v7, v4, v7, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v6, v0, -0x1

    aget v5, v5, v6

    if-lt v5, v2, :cond_3

    invoke-direct {p0, v7}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->setSorted(Z)V

    :cond_3
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v1, v0, 0x1

    aput v2, v5, v0

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aput v3, v5, v1

    iget-boolean v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->sorted:Z

    if-nez v5, :cond_4

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->sortRanges()V

    :cond_4
    move v0, v1

    goto :goto_1
.end method

.method protected compactRanges()V
    .locals 11

    const/4 v10, 0x0

    const/4 v0, 0x0

    iget-object v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    if-eqz v6, :cond_0

    iget-object v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    array-length v6, v6

    const/4 v7, 0x2

    if-gt v6, v7, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->isCompacted()Z

    move-result v6

    if-nez v6, :cond_0

    const/4 v1, 0x0

    const/4 v4, 0x0

    :goto_1
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    array-length v6, v6

    if-lt v4, v6, :cond_3

    iget-object v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    array-length v6, v6

    if-eq v1, v6, :cond_2

    new-array v3, v1, [I

    iget-object v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    invoke-static {v6, v10, v3, v10, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    :cond_2
    invoke-direct {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->setCompacted()V

    goto :goto_0

    :cond_3
    if-eq v1, v4, :cond_5

    iget-object v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    iget-object v7, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v5, v4, 0x1

    aget v7, v7, v4

    aput v7, v6, v1

    iget-object v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v7, v1, 0x1

    iget-object v8, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v4, v5, 0x1

    aget v8, v8, v5

    aput v8, v6, v7

    :goto_2
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v7, v1, 0x1

    aget v2, v6, v7

    :goto_3
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    array-length v6, v6

    if-lt v4, v6, :cond_6

    :cond_4
    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    :cond_5
    add-int/lit8 v4, v4, 0x2

    goto :goto_2

    :cond_6
    add-int/lit8 v6, v2, 0x1

    iget-object v7, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aget v7, v7, v4

    if-lt v6, v7, :cond_4

    add-int/lit8 v6, v2, 0x1

    iget-object v7, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aget v7, v7, v4

    if-ne v6, v7, :cond_8

    if-eqz v0, :cond_7

    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Token#compactRanges(): Compaction: ["

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aget v8, v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v9, v1, 0x1

    aget v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "], ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aget v8, v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v9, v4, 0x1

    aget v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] -> ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aget v8, v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v9, v4, 0x1

    aget v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_7
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v7, v1, 0x1

    iget-object v8, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v9, v4, 0x1

    aget v8, v8, v9

    aput v8, v6, v7

    iget-object v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v7, v1, 0x1

    aget v2, v6, v7

    add-int/lit8 v4, v4, 0x2

    goto/16 :goto_3

    :cond_8
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v7, v4, 0x1

    aget v6, v6, v7

    if-lt v2, v6, :cond_a

    if-eqz v0, :cond_9

    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Token#compactRanges(): Compaction: ["

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aget v8, v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v9, v1, 0x1

    aget v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "], ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aget v8, v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v9, v4, 0x1

    aget v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] -> ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aget v8, v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v9, v1, 0x1

    aget v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_9
    add-int/lit8 v4, v4, 0x2

    goto/16 :goto_3

    :cond_a
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v7, v4, 0x1

    aget v6, v6, v7

    if-ge v2, v6, :cond_c

    if-eqz v0, :cond_b

    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Token#compactRanges(): Compaction: ["

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aget v8, v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v9, v1, 0x1

    aget v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "], ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aget v8, v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v9, v4, 0x1

    aget v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] -> ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aget v8, v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v9, v4, 0x1

    aget v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_b
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v7, v1, 0x1

    iget-object v8, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v9, v4, 0x1

    aget v8, v8, v9

    aput v8, v6, v7

    iget-object v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v7, v1, 0x1

    aget v2, v6, v7

    add-int/lit8 v4, v4, 0x2

    goto/16 :goto_3

    :cond_c
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Token#compactRanges(): Internel Error: ["

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aget v8, v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v9, v1, 0x1

    aget v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "] ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aget v8, v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v9, v4, 0x1

    aget v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method dumpRanges()V
    .locals 5

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "RANGE: "

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    if-nez v1, :cond_0

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, " NULL"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    array-length v1, v1

    if-lt v0, v1, :cond_1

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "["

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v4, v0, 0x1

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x2

    goto :goto_1
.end method

.method declared-synchronized getCaseInsensitiveToken()Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;
    .locals 9

    const v8, 0xffff

    const/4 v7, 0x4

    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->icaseCache:Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    if-eqz v5, :cond_0

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->icaseCache:Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v2

    :cond_0
    :try_start_1
    iget v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->type:I

    if-ne v5, v7, :cond_1

    invoke-static {}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createRange()Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    move-result-object v4

    :goto_1
    const/4 v1, 0x0

    :goto_2
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    array-length v5, v5

    if-lt v1, v5, :cond_2

    iget v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->type:I

    if-ne v5, v7, :cond_5

    invoke-static {}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createRange()Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    move-result-object v2

    :goto_3
    const/4 v1, 0x0

    :goto_4
    iget-object v5, v4, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    array-length v5, v5

    if-lt v1, v5, :cond_6

    invoke-virtual {v2, v4}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->mergeRanges(Lmf/org/apache/xerces/impl/xpath/regex/Token;)V

    invoke-virtual {v2, p0}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->mergeRanges(Lmf/org/apache/xerces/impl/xpath/regex/Token;)V

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->compactRanges()V

    iput-object v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->icaseCache:Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    :cond_1
    :try_start_2
    invoke-static {}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createNRange()Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    move-result-object v4

    goto :goto_1

    :cond_2
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aget v0, v5, v1

    :goto_5
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v6, v1, 0x1

    aget v5, v5, v6

    if-le v0, v5, :cond_3

    add-int/lit8 v1, v1, 0x2

    goto :goto_2

    :cond_3
    if-le v0, v8, :cond_4

    invoke-virtual {v4, v0, v0}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->addRange(II)V

    :goto_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_4
    int-to-char v5, v0

    invoke-static {v5}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    invoke-virtual {v4, v3, v3}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->addRange(II)V

    goto :goto_6

    :cond_5
    invoke-static {}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createNRange()Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    move-result-object v2

    goto :goto_3

    :cond_6
    iget-object v5, v4, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aget v0, v5, v1

    :goto_7
    iget-object v5, v4, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v6, v1, 0x1

    aget v5, v5, v6

    if-le v0, v5, :cond_7

    add-int/lit8 v1, v1, 0x2

    goto :goto_4

    :cond_7
    if-le v0, v8, :cond_8

    invoke-virtual {v2, v0, v0}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->addRange(II)V

    :goto_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_8
    int-to-char v5, v0

    invoke-static {v5}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    invoke-virtual {v2, v3, v3}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->addRange(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_8
.end method

.method protected intersectRanges(Lmf/org/apache/xerces/impl/xpath/regex/Token;)V
    .locals 15

    move-object/from16 v8, p1

    check-cast v8, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    iget-object v11, v8, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    if-eqz v11, :cond_0

    iget-object v11, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    if-nez v11, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v11, 0x0

    iput-object v11, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->icaseCache:Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->sortRanges()V

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->compactRanges()V

    invoke-virtual {v8}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->sortRanges()V

    invoke-virtual {v8}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->compactRanges()V

    iget-object v11, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    array-length v11, v11

    iget-object v12, v8, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    array-length v12, v12

    add-int/2addr v11, v12

    new-array v0, v11, [I

    const/4 v9, 0x0

    const/4 v1, 0x0

    const/4 v5, 0x0

    :goto_1
    iget-object v11, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    array-length v11, v11

    if-ge v1, v11, :cond_2

    iget-object v11, v8, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    array-length v11, v11

    if-lt v5, v11, :cond_3

    :cond_2
    :goto_2
    iget-object v11, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    array-length v11, v11

    if-lt v1, v11, :cond_a

    new-array v11, v9, [I

    iput-object v11, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    const/4 v11, 0x0

    iget-object v12, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    const/4 v13, 0x0

    invoke-static {v0, v11, v12, v13, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_3
    iget-object v11, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aget v3, v11, v1

    iget-object v11, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v12, v1, 0x1

    aget v4, v11, v12

    iget-object v11, v8, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aget v6, v11, v5

    iget-object v11, v8, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v12, v5, 0x1

    aget v7, v11, v12

    if-ge v4, v6, :cond_4

    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    :cond_4
    if-lt v4, v6, :cond_8

    if-gt v3, v7, :cond_8

    if-gt v6, v3, :cond_5

    if-gt v4, v7, :cond_5

    add-int/lit8 v10, v9, 0x1

    aput v3, v0, v9

    add-int/lit8 v9, v10, 0x1

    aput v4, v0, v10

    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    :cond_5
    if-gt v6, v3, :cond_6

    add-int/lit8 v10, v9, 0x1

    aput v3, v0, v9

    add-int/lit8 v9, v10, 0x1

    aput v7, v0, v10

    iget-object v11, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v12, v7, 0x1

    aput v12, v11, v1

    add-int/lit8 v5, v5, 0x2

    goto :goto_1

    :cond_6
    if-gt v4, v7, :cond_7

    add-int/lit8 v10, v9, 0x1

    aput v6, v0, v9

    add-int/lit8 v9, v10, 0x1

    aput v4, v0, v10

    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    :cond_7
    add-int/lit8 v10, v9, 0x1

    aput v6, v0, v9

    add-int/lit8 v9, v10, 0x1

    aput v7, v0, v10

    iget-object v11, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v12, v7, 0x1

    aput v12, v11, v1

    goto :goto_1

    :cond_8
    if-ge v7, v3, :cond_9

    add-int/lit8 v5, v5, 0x2

    goto :goto_1

    :cond_9
    new-instance v11, Ljava/lang/RuntimeException;

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "Token#intersectRanges(): Internal Error: ["

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v13, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aget v13, v13, v1

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v14, v1, 0x1

    aget v13, v13, v14

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "] & ["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v8, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aget v13, v13, v5

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ","

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v8, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v14, v5, 0x1

    aget v13, v13, v14

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "]"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v11

    :cond_a
    add-int/lit8 v10, v9, 0x1

    iget-object v11, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v2, v1, 0x1

    aget v11, v11, v1

    aput v11, v0, v9

    add-int/lit8 v9, v10, 0x1

    iget-object v11, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v1, v2, 0x1

    aget v11, v11, v2

    aput v11, v0, v10

    goto/16 :goto_2
.end method

.method match(I)Z
    .locals 7

    const/16 v6, 0x100

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->map:[I

    if-nez v4, :cond_0

    invoke-direct {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->createMap()V

    :cond_0
    iget v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->type:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_5

    if-ge p1, v6, :cond_3

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->map:[I

    div-int/lit8 v5, p1, 0x20

    aget v4, v4, v5

    and-int/lit8 v5, p1, 0x1f

    shl-int v5, v2, v5

    and-int/2addr v4, v5

    if-eqz v4, :cond_2

    move v1, v2

    :cond_1
    :goto_0
    return v1

    :cond_2
    move v1, v3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->nonMapIndex:I

    :goto_1
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    array-length v3, v3

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aget v3, v3, v0

    if-gt v3, p1, :cond_4

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v4, v0, 0x1

    aget v3, v3, v4

    if-gt p1, v3, :cond_4

    move v1, v2

    goto :goto_0

    :cond_4
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_5
    if-ge p1, v6, :cond_7

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->map:[I

    div-int/lit8 v5, p1, 0x20

    aget v4, v4, v5

    and-int/lit8 v5, p1, 0x1f

    shl-int v5, v2, v5

    and-int/2addr v4, v5

    if-nez v4, :cond_6

    move v1, v2

    goto :goto_0

    :cond_6
    move v1, v3

    goto :goto_0

    :cond_7
    const/4 v1, 0x1

    iget v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->nonMapIndex:I

    :goto_2
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aget v2, v2, v0

    if-gt v2, p1, :cond_8

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v4, v0, 0x1

    aget v2, v2, v4

    if-gt p1, v2, :cond_8

    move v1, v3

    goto :goto_0

    :cond_8
    add-int/lit8 v0, v0, 0x2

    goto :goto_2
.end method

.method protected mergeRanges(Lmf/org/apache/xerces/impl/xpath/regex/Token;)V
    .locals 12

    const/4 v11, 0x0

    move-object v7, p1

    check-cast v7, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->sortRanges()V

    invoke-virtual {v7}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->sortRanges()V

    iget-object v8, v7, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    if-nez v8, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v8, 0x0

    iput-object v8, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->icaseCache:Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    const/4 v8, 0x1

    invoke-direct {p0, v8}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->setSorted(Z)V

    iget-object v8, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    if-nez v8, :cond_1

    iget-object v8, v7, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    array-length v8, v8

    new-array v8, v8, [I

    iput-object v8, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    iget-object v8, v7, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    iget-object v9, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    iget-object v10, v7, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    array-length v10, v10

    invoke-static {v8, v11, v9, v11, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_1
    iget-object v8, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    array-length v8, v8

    iget-object v9, v7, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    array-length v9, v9

    add-int/2addr v8, v9

    new-array v6, v8, [I

    const/4 v0, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_1
    iget-object v8, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    array-length v8, v8

    if-lt v0, v8, :cond_2

    iget-object v8, v7, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    array-length v8, v8

    if-lt v2, v8, :cond_2

    iput-object v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    goto :goto_0

    :cond_2
    iget-object v8, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    array-length v8, v8

    if-lt v0, v8, :cond_3

    add-int/lit8 v5, v4, 0x1

    iget-object v8, v7, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v3, v2, 0x1

    aget v8, v8, v2

    aput v8, v6, v4

    add-int/lit8 v4, v5, 0x1

    iget-object v8, v7, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v2, v3, 0x1

    aget v8, v8, v3

    aput v8, v6, v5

    goto :goto_1

    :cond_3
    iget-object v8, v7, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    array-length v8, v8

    if-lt v2, v8, :cond_4

    add-int/lit8 v5, v4, 0x1

    iget-object v8, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v1, v0, 0x1

    aget v8, v8, v0

    aput v8, v6, v4

    add-int/lit8 v4, v5, 0x1

    iget-object v8, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v0, v1, 0x1

    aget v8, v8, v1

    aput v8, v6, v5

    goto :goto_1

    :cond_4
    iget-object v8, v7, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aget v8, v8, v2

    iget-object v9, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aget v9, v9, v0

    if-lt v8, v9, :cond_5

    iget-object v8, v7, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aget v8, v8, v2

    iget-object v9, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aget v9, v9, v0

    if-ne v8, v9, :cond_6

    iget-object v8, v7, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v9, v2, 0x1

    aget v8, v8, v9

    iget-object v9, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v10, v0, 0x1

    aget v9, v9, v10

    if-ge v8, v9, :cond_6

    :cond_5
    add-int/lit8 v5, v4, 0x1

    iget-object v8, v7, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v3, v2, 0x1

    aget v8, v8, v2

    aput v8, v6, v4

    add-int/lit8 v4, v5, 0x1

    iget-object v8, v7, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v2, v3, 0x1

    aget v8, v8, v3

    aput v8, v6, v5

    goto :goto_1

    :cond_6
    add-int/lit8 v5, v4, 0x1

    iget-object v8, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v1, v0, 0x1

    aget v8, v8, v0

    aput v8, v6, v4

    add-int/lit8 v4, v5, 0x1

    iget-object v8, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v0, v1, 0x1

    aget v8, v8, v1

    aput v8, v6, v5

    goto/16 :goto_1
.end method

.method protected sortRanges()V
    .locals 7

    invoke-direct {p0}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->isSorted()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    if-eqz v3, :cond_0

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    array-length v3, v3

    add-int/lit8 v0, v3, -0x4

    :goto_1
    if-gez v0, :cond_2

    const/4 v3, 0x1

    invoke-direct {p0, v3}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->setSorted(Z)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_2
    if-le v1, v0, :cond_3

    add-int/lit8 v0, v0, -0x2

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aget v3, v3, v1

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v5, v1, 0x2

    aget v4, v4, v5

    if-gt v3, v4, :cond_4

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aget v3, v3, v1

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v5, v1, 0x2

    aget v4, v4, v5

    if-ne v3, v4, :cond_5

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v4, v1, 0x1

    aget v3, v3, v4

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v5, v1, 0x3

    aget v4, v4, v5

    if-le v3, v4, :cond_5

    :cond_4
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v4, v1, 0x2

    aget v2, v3, v4

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v4, v1, 0x2

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aget v5, v5, v1

    aput v5, v3, v4

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aput v2, v3, v1

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v4, v1, 0x3

    aget v2, v3, v4

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v4, v1, 0x3

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v6, v1, 0x1

    aget v5, v5, v6

    aput v5, v3, v4

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v4, v1, 0x1

    aput v2, v3, v4

    :cond_5
    add-int/lit8 v1, v1, 0x2

    goto :goto_2
.end method

.method protected subtractRanges(Lmf/org/apache/xerces/impl/xpath/regex/Token;)V
    .locals 16

    move-object/from16 v0, p1

    iget v12, v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;->type:I

    const/4 v13, 0x5

    if-ne v12, v13, :cond_1

    invoke-virtual/range {p0 .. p1}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->intersectRanges(Lmf/org/apache/xerces/impl/xpath/regex/Token;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v9, p1

    check-cast v9, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    iget-object v12, v9, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    if-eqz v12, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    if-eqz v12, :cond_0

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->icaseCache:Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;

    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->sortRanges()V

    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->compactRanges()V

    invoke-virtual {v9}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->sortRanges()V

    invoke-virtual {v9}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->compactRanges()V

    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    array-length v12, v12

    iget-object v13, v9, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    array-length v13, v13

    add-int/2addr v12, v13

    new-array v1, v12, [I

    const/4 v10, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    array-length v12, v12

    if-ge v2, v12, :cond_2

    iget-object v12, v9, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    array-length v12, v12

    if-lt v6, v12, :cond_3

    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    array-length v12, v12

    if-lt v2, v12, :cond_a

    new-array v12, v10, [I

    move-object/from16 v0, p0

    iput-object v12, v0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    const/4 v14, 0x0

    invoke-static {v1, v12, v13, v14, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aget v4, v12, v2

    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v13, v2, 0x1

    aget v5, v12, v13

    iget-object v12, v9, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aget v7, v12, v6

    iget-object v12, v9, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v13, v6, 0x1

    aget v8, v12, v13

    if-ge v5, v7, :cond_4

    add-int/lit8 v11, v10, 0x1

    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v3, v2, 0x1

    aget v12, v12, v2

    aput v12, v1, v10

    add-int/lit8 v10, v11, 0x1

    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v2, v3, 0x1

    aget v12, v12, v3

    aput v12, v1, v11

    goto :goto_1

    :cond_4
    if-lt v5, v7, :cond_8

    if-gt v4, v8, :cond_8

    if-gt v7, v4, :cond_5

    if-gt v5, v8, :cond_5

    add-int/lit8 v2, v2, 0x2

    goto :goto_1

    :cond_5
    if-gt v7, v4, :cond_6

    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v13, v8, 0x1

    aput v13, v12, v2

    add-int/lit8 v6, v6, 0x2

    goto :goto_1

    :cond_6
    if-gt v5, v8, :cond_7

    add-int/lit8 v11, v10, 0x1

    aput v4, v1, v10

    add-int/lit8 v10, v11, 0x1

    add-int/lit8 v12, v7, -0x1

    aput v12, v1, v11

    add-int/lit8 v2, v2, 0x2

    goto :goto_1

    :cond_7
    add-int/lit8 v11, v10, 0x1

    aput v4, v1, v10

    add-int/lit8 v10, v11, 0x1

    add-int/lit8 v12, v7, -0x1

    aput v12, v1, v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v13, v8, 0x1

    aput v13, v12, v2

    add-int/lit8 v6, v6, 0x2

    goto/16 :goto_1

    :cond_8
    if-ge v8, v4, :cond_9

    add-int/lit8 v6, v6, 0x2

    goto/16 :goto_1

    :cond_9
    new-instance v12, Ljava/lang/RuntimeException;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "Token#subtractRanges(): Internal Error: ["

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aget v14, v14, v2

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ","

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v15, v2, 0x1

    aget v14, v14, v15

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "] - ["

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v9, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aget v14, v14, v6

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ","

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v9, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v15, v6, 0x1

    aget v14, v14, v15

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "]"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v12

    :cond_a
    add-int/lit8 v11, v10, 0x1

    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v3, v2, 0x1

    aget v12, v12, v2

    aput v12, v1, v10

    add-int/lit8 v10, v11, 0x1

    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v2, v3, 0x1

    aget v12, v12, v3

    aput v12, v1, v11

    goto/16 :goto_2
.end method

.method public toString(I)Ljava/lang/String;
    .locals 9

    const/16 v8, 0x5d

    const/16 v7, 0x2d

    const/16 v6, 0x2c

    iget v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->type:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_7

    sget-object v3, Lmf/org/apache/xerces/impl/xpath/regex/Token;->token_dot:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    if-ne p0, v3, :cond_0

    const-string v1, "."

    :goto_0
    return-object v1

    :cond_0
    sget-object v3, Lmf/org/apache/xerces/impl/xpath/regex/Token;->token_0to9:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    if-ne p0, v3, :cond_1

    const-string v1, "\\d"

    goto :goto_0

    :cond_1
    sget-object v3, Lmf/org/apache/xerces/impl/xpath/regex/Token;->token_wordchars:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    if-ne p0, v3, :cond_2

    const-string v1, "\\w"

    goto :goto_0

    :cond_2
    sget-object v3, Lmf/org/apache/xerces/impl/xpath/regex/Token;->token_spaces:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    if-ne p0, v3, :cond_3

    const-string v1, "\\s"

    goto :goto_0

    :cond_3
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v3, 0x5b

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    :goto_1
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    array-length v3, v3

    if-lt v0, v3, :cond_4

    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_4
    and-int/lit16 v3, p1, 0x400

    if-eqz v3, :cond_5

    if-lez v0, :cond_5

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_5
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aget v3, v3, v0

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v5, v0, 0x1

    aget v4, v4, v5

    if-ne v3, v4, :cond_6

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aget v3, v3, v0

    invoke-static {v3}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->escapeCharInCharClass(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_2
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_6
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aget v3, v3, v0

    invoke-static {v3}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->escapeCharInCharClass(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v4, v0, 0x1

    aget v3, v3, v4

    invoke-static {v3}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->escapeCharInCharClass(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_7
    sget-object v3, Lmf/org/apache/xerces/impl/xpath/regex/Token;->token_not_0to9:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    if-ne p0, v3, :cond_8

    const-string v1, "\\D"

    goto :goto_0

    :cond_8
    sget-object v3, Lmf/org/apache/xerces/impl/xpath/regex/Token;->token_not_wordchars:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    if-ne p0, v3, :cond_9

    const-string v1, "\\W"

    goto :goto_0

    :cond_9
    sget-object v3, Lmf/org/apache/xerces/impl/xpath/regex/Token;->token_not_spaces:Lmf/org/apache/xerces/impl/xpath/regex/Token;

    if-ne p0, v3, :cond_a

    const-string v1, "\\S"

    goto/16 :goto_0

    :cond_a
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "[^"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    :goto_3
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    array-length v3, v3

    if-lt v0, v3, :cond_b

    invoke-virtual {v2, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_b
    and-int/lit16 v3, p1, 0x400

    if-eqz v3, :cond_c

    if-lez v0, :cond_c

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_c
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aget v3, v3, v0

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v5, v0, 0x1

    aget v4, v4, v5

    if-ne v3, v4, :cond_d

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aget v3, v3, v0

    invoke-static {v3}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->escapeCharInCharClass(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_4
    add-int/lit8 v0, v0, 0x2

    goto :goto_3

    :cond_d
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    aget v3, v3, v0

    invoke-static {v3}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->escapeCharInCharClass(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->ranges:[I

    add-int/lit8 v4, v0, 0x1

    aget v3, v3, v4

    invoke-static {v3}, Lmf/org/apache/xerces/impl/xpath/regex/RangeToken;->escapeCharInCharClass(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4
.end method

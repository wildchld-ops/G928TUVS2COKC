.class Lcom/a/a/m;
.super Lcom/a/a/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/a/a/m$1;,
        Lcom/a/a/m$a;
    }
.end annotation


# instance fields
.field protected final c:[B

.field private d:I


# direct methods
.method constructor <init>([B)V
    .locals 1

    invoke-direct {p0}, Lcom/a/a/c;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/a/a/m;->d:I

    iput-object p1, p0, Lcom/a/a/m;->c:[B

    return-void
.end method


# virtual methods
.method protected a(III)I
    .locals 3

    invoke-virtual {p0}, Lcom/a/a/m;->j()I

    move-result v0

    add-int/2addr v0, p2

    iget-object v1, p0, Lcom/a/a/m;->c:[B

    add-int v2, v0, p3

    invoke-static {p1, v1, v0, v2}, Lcom/a/a/w;->a(I[BII)I

    move-result v0

    return v0
.end method

.method public a()Lcom/a/a/c$a;
    .locals 2

    new-instance v0, Lcom/a/a/m$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/a/a/m$a;-><init>(Lcom/a/a/m;Lcom/a/a/m$1;)V

    return-object v0
.end method

.method a(Lcom/a/a/m;II)Z
    .locals 7

    invoke-virtual {p1}, Lcom/a/a/m;->b()I

    move-result v0

    if-le p3, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Length too large: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/a/a/m;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    add-int v0, p2, p3

    invoke-virtual {p1}, Lcom/a/a/m;->b()I

    move-result v1

    if-le v0, v1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ran off end of other: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/a/a/m;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v2, p0, Lcom/a/a/m;->c:[B

    iget-object v3, p1, Lcom/a/a/m;->c:[B

    invoke-virtual {p0}, Lcom/a/a/m;->j()I

    move-result v0

    add-int v4, v0, p3

    invoke-virtual {p0}, Lcom/a/a/m;->j()I

    move-result v1

    invoke-virtual {p1}, Lcom/a/a/m;->j()I

    move-result v0

    add-int/2addr v0, p2

    :goto_0
    if-ge v1, v4, :cond_3

    aget-byte v5, v2, v1

    aget-byte v6, v3, v0

    if-eq v5, v6, :cond_2

    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public b(I)B
    .locals 1

    iget-object v0, p0, Lcom/a/a/m;->c:[B

    aget-byte v0, v0, p1

    return v0
.end method

.method public b()I
    .locals 1

    iget-object v0, p0, Lcom/a/a/m;->c:[B

    array-length v0, v0

    return v0
.end method

.method protected b(III)I
    .locals 5

    iget-object v1, p0, Lcom/a/a/m;->c:[B

    invoke-virtual {p0}, Lcom/a/a/m;->j()I

    move-result v0

    add-int/2addr v0, p2

    add-int v2, v0, p3

    :goto_0
    if-ge v0, v2, :cond_0

    mul-int/lit8 v3, p1, 0x1f

    aget-byte v4, v1, v0

    add-int p1, v3, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return p1
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/a/a/m;->c:[B

    invoke-virtual {p0}, Lcom/a/a/m;->j()I

    move-result v2

    invoke-virtual {p0}, Lcom/a/a/m;->b()I

    move-result v3

    invoke-direct {v0, v1, v2, v3, p1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    return-object v0
.end method

.method protected b([BIII)V
    .locals 1

    iget-object v0, p0, Lcom/a/a/m;->c:[B

    invoke-static {v0, p2, p1, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, p0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lcom/a/a/c;

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/a/a/m;->b()I

    move-result v3

    move-object v0, p1

    check-cast v0, Lcom/a/a/c;

    invoke-virtual {v0}, Lcom/a/a/c;->b()I

    move-result v0

    if-eq v3, v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/a/a/m;->b()I

    move-result v0

    if-nez v0, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    instance-of v0, p1, Lcom/a/a/m;

    if-eqz v0, :cond_4

    check-cast p1, Lcom/a/a/m;

    invoke-virtual {p0}, Lcom/a/a/m;->b()I

    move-result v0

    invoke-virtual {p0, p1, v2, v0}, Lcom/a/a/m;->a(Lcom/a/a/m;II)Z

    move-result v0

    goto :goto_0

    :cond_4
    instance-of v0, p1, Lcom/a/a/q;

    if-eqz v0, :cond_5

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Has a new type of ByteString been created? Found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public f()Z
    .locals 3

    invoke-virtual {p0}, Lcom/a/a/m;->j()I

    move-result v0

    iget-object v1, p0, Lcom/a/a/m;->c:[B

    invoke-virtual {p0}, Lcom/a/a/m;->b()I

    move-result v2

    add-int/2addr v2, v0

    invoke-static {v1, v0, v2}, Lcom/a/a/w;->a([BII)Z

    move-result v0

    return v0
.end method

.method public g()Ljava/io/InputStream;
    .locals 4

    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lcom/a/a/m;->c:[B

    invoke-virtual {p0}, Lcom/a/a/m;->j()I

    move-result v2

    invoke-virtual {p0}, Lcom/a/a/m;->b()I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    return-object v0
.end method

.method public h()Lcom/a/a/d;
    .locals 3

    iget-object v0, p0, Lcom/a/a/m;->c:[B

    invoke-virtual {p0}, Lcom/a/a/m;->j()I

    move-result v1

    invoke-virtual {p0}, Lcom/a/a/m;->b()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/a/a/d;->a([BII)Lcom/a/a/d;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/a/a/m;->d:I

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/a/a/m;->b()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, v0}, Lcom/a/a/m;->b(III)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput v0, p0, Lcom/a/a/m;->d:I

    :cond_1
    return v0
.end method

.method protected i()I
    .locals 1

    iget v0, p0, Lcom/a/a/m;->d:I

    return v0
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .locals 1

    invoke-virtual {p0}, Lcom/a/a/m;->a()Lcom/a/a/c$a;

    move-result-object v0

    return-object v0
.end method

.method protected j()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

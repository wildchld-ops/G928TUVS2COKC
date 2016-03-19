.class public final Lcom/nuance/nmdp/speechkit/dp;
.super Lcom/nuance/nmdp/speechkit/dy;

# interfaces
.implements Lcom/nuance/nmdp/speechkit/cl$b;
.implements Lcom/nuance/nmdp/speechkit/cx;


# instance fields
.field private a:I

.field private b:Lcom/nuance/nmdp/speechkit/dk;

.field private c:Z

.field private d:Lcom/nuance/nmdp/speechkit/cl;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/nuance/nmdp/speechkit/dk;Lcom/nuance/nmdp/speechkit/cl;)V
    .locals 3

    const/4 v2, 0x1

    invoke-direct {p0, p1, v2}, Lcom/nuance/nmdp/speechkit/dy;-><init>(Ljava/lang/String;B)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/nmdp/speechkit/dp;->c:Z

    iput-object p2, p0, Lcom/nuance/nmdp/speechkit/dp;->b:Lcom/nuance/nmdp/speechkit/dk;

    iput-object p3, p0, Lcom/nuance/nmdp/speechkit/dp;->d:Lcom/nuance/nmdp/speechkit/cl;

    invoke-virtual {p2}, Lcom/nuance/nmdp/speechkit/dk;->a()I

    move-result v0

    iput v0, p0, Lcom/nuance/nmdp/speechkit/dp;->a:I

    new-instance v0, Lcom/nuance/nmdp/speechkit/cl$a;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v1}, Lcom/nuance/nmdp/speechkit/cl$a;-><init>(BLjava/lang/Object;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-interface {p3}, Lcom/nuance/nmdp/speechkit/cl;->a()[Ljava/lang/Object;

    invoke-interface {p3, v0, p0, v1}, Lcom/nuance/nmdp/speechkit/cl;->a(Ljava/lang/Object;Lcom/nuance/nmdp/speechkit/cl$b;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 1

    iget v0, p0, Lcom/nuance/nmdp/speechkit/dp;->a:I

    return v0
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    const/4 v5, 0x0

    check-cast p1, Lcom/nuance/nmdp/speechkit/cl$a;

    iget-byte v0, p1, Lcom/nuance/nmdp/speechkit/cl$a;->a:B

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/dp;->b:Lcom/nuance/nmdp/speechkit/dk;

    iget v1, p0, Lcom/nuance/nmdp/speechkit/dp;->a:I

    invoke-virtual {v0, v1}, Lcom/nuance/nmdp/speechkit/dk;->a(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p1, Lcom/nuance/nmdp/speechkit/cl$a;->b:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    aget-object v1, v0, v5

    check-cast v1, [B

    const/4 v2, 0x1

    aget-object v0, v0, v2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/dp;->b:Lcom/nuance/nmdp/speechkit/dk;

    invoke-virtual {v2}, Lcom/nuance/nmdp/speechkit/dk;->g()Lcom/nuance/nmdp/speechkit/cj;

    move-result-object v2

    invoke-static {v2}, Lcom/nuance/nmdp/speechkit/cs;->b(Lcom/nuance/nmdp/speechkit/cj;)Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    array-length v3, v1

    const/16 v4, 0x80

    if-ge v3, v4, :cond_2

    array-length v3, v1

    and-int/lit8 v3, v3, 0x7f

    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :goto_1
    array-length v3, v1

    invoke-virtual {v2, v1, v5, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/dp;->b:Lcom/nuance/nmdp/speechkit/dk;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    iget v3, p0, Lcom/nuance/nmdp/speechkit/dp;->a:I

    invoke-virtual {v1, v2, v3}, Lcom/nuance/nmdp/speechkit/dk;->a([BI)V

    :cond_1
    :goto_2
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/dp;->b:Lcom/nuance/nmdp/speechkit/dk;

    iget v1, p0, Lcom/nuance/nmdp/speechkit/dp;->a:I

    invoke-virtual {v0, v1}, Lcom/nuance/nmdp/speechkit/dk;->b(I)V

    goto :goto_0

    :cond_2
    array-length v3, v1

    const/16 v4, 0x4000

    if-ge v3, v4, :cond_3

    array-length v3, v1

    shr-int/lit8 v3, v3, 0x7

    and-int/lit8 v3, v3, 0x7f

    or-int/lit16 v3, v3, 0x80

    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    array-length v3, v1

    and-int/lit8 v3, v3, 0x7f

    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_1

    :cond_3
    array-length v3, v1

    const/high16 v4, 0x200000

    if-ge v3, v4, :cond_4

    array-length v3, v1

    shr-int/lit8 v3, v3, 0xe

    and-int/lit8 v3, v3, 0x7f

    or-int/lit16 v3, v3, 0x80

    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    array-length v3, v1

    shr-int/lit8 v3, v3, 0x7

    and-int/lit8 v3, v3, 0x7f

    or-int/lit16 v3, v3, 0x80

    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    array-length v3, v1

    and-int/lit8 v3, v3, 0x7f

    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_1

    :cond_4
    array-length v3, v1

    const/high16 v4, 0x10000000

    if-ge v3, v4, :cond_0

    array-length v3, v1

    shr-int/lit8 v3, v3, 0x15

    and-int/lit8 v3, v3, 0x7f

    or-int/lit16 v3, v3, 0x80

    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    array-length v3, v1

    shr-int/lit8 v3, v3, 0xe

    and-int/lit8 v3, v3, 0x7f

    or-int/lit16 v3, v3, 0x80

    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    array-length v3, v1

    shr-int/lit8 v3, v3, 0x7

    and-int/lit8 v3, v3, 0x7f

    or-int/lit16 v3, v3, 0x80

    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    array-length v3, v1

    and-int/lit8 v3, v3, 0x7f

    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/dp;->b:Lcom/nuance/nmdp/speechkit/dk;

    iget v3, p0, Lcom/nuance/nmdp/speechkit/dp;->a:I

    invoke-virtual {v2, v1, v3}, Lcom/nuance/nmdp/speechkit/dk;->a([BI)V

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final a([BIIZ)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/nuance/nmdp/speechkit/dc;
        }
    .end annotation

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    if-nez p4, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "in (NMSPAudioSink)PDXAudioParam.addAudioBuf(), the param \"buffer\" is null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-eqz p1, :cond_1

    if-gez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "the offset of the \"buffer\" is less than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-eqz p1, :cond_2

    if-gtz p3, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "the indicated length of the \"buffer\" is less than 1 byte"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-boolean v0, p0, Lcom/nuance/nmdp/speechkit/dp;->c:Z

    if-eqz v0, :cond_3

    new-instance v0, Lcom/nuance/nmdp/speechkit/dc;

    const-string v1, "last audio buffer already added!"

    invoke-direct {v0, v1}, Lcom/nuance/nmdp/speechkit/dc;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    if-eqz p4, :cond_4

    iput-boolean v3, p0, Lcom/nuance/nmdp/speechkit/dp;->c:Z

    :cond_4
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    new-array v0, p3, [B

    invoke-static {p1, p2, v0, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_5
    new-array v1, v4, [Ljava/lang/Object;

    aput-object v0, v1, v2

    new-instance v0, Ljava/lang/Boolean;

    invoke-direct {v0, p4}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v0, v1, v3

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/dp;->d:Lcom/nuance/nmdp/speechkit/cl;

    new-instance v2, Lcom/nuance/nmdp/speechkit/cl$a;

    invoke-direct {v2, v4, v1}, Lcom/nuance/nmdp/speechkit/cl$a;-><init>(BLjava/lang/Object;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    iget-object v3, p0, Lcom/nuance/nmdp/speechkit/dp;->d:Lcom/nuance/nmdp/speechkit/cl;

    invoke-interface {v3}, Lcom/nuance/nmdp/speechkit/cl;->a()[Ljava/lang/Object;

    invoke-interface {v0, v2, p0, v1}, Lcom/nuance/nmdp/speechkit/cl;->a(Ljava/lang/Object;Lcom/nuance/nmdp/speechkit/cl$b;Ljava/lang/Object;)V

    return-void
.end method

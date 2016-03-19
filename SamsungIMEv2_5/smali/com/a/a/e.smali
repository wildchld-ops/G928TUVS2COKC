.class public final Lcom/a/a/e;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/a/a/e$a;
    }
.end annotation


# instance fields
.field private final a:[B

.field private final b:I

.field private c:I

.field private final d:Ljava/io/OutputStream;


# direct methods
.method private constructor <init>(Ljava/io/OutputStream;[B)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/a/a/e;->d:Ljava/io/OutputStream;

    iput-object p2, p0, Lcom/a/a/e;->a:[B

    const/4 v0, 0x0

    iput v0, p0, Lcom/a/a/e;->c:I

    array-length v0, p2

    iput v0, p0, Lcom/a/a/e;->b:I

    return-void
.end method

.method private constructor <init>([BII)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/a/a/e;->d:Ljava/io/OutputStream;

    iput-object p1, p0, Lcom/a/a/e;->a:[B

    iput p2, p0, Lcom/a/a/e;->c:I

    add-int v0, p2, p3

    iput v0, p0, Lcom/a/a/e;->b:I

    return-void
.end method

.method static a(I)I
    .locals 1

    const/16 v0, 0x1000

    if-le p0, v0, :cond_0

    move p0, v0

    :cond_0
    return p0
.end method

.method public static a(Ljava/io/OutputStream;I)Lcom/a/a/e;
    .locals 2

    new-instance v0, Lcom/a/a/e;

    new-array v1, p1, [B

    invoke-direct {v0, p0, v1}, Lcom/a/a/e;-><init>(Ljava/io/OutputStream;[B)V

    return-object v0
.end method

.method public static a([B)Lcom/a/a/e;
    .locals 2

    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/a/a/e;->a([BII)Lcom/a/a/e;

    move-result-object v0

    return-object v0
.end method

.method public static a([BII)Lcom/a/a/e;
    .locals 1

    new-instance v0, Lcom/a/a/e;

    invoke-direct {v0, p0, p1, p2}, Lcom/a/a/e;-><init>([BII)V

    return-object v0
.end method

.method public static b(II)I
    .locals 2

    invoke-static {p0}, Lcom/a/a/e;->e(I)I

    move-result v0

    invoke-static {p1}, Lcom/a/a/e;->c(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static b(IJ)I
    .locals 3

    invoke-static {p0}, Lcom/a/a/e;->e(I)I

    move-result v0

    invoke-static {p1, p2}, Lcom/a/a/e;->b(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static b(ILcom/a/a/c;)I
    .locals 2

    invoke-static {p0}, Lcom/a/a/e;->e(I)I

    move-result v0

    invoke-static {p1}, Lcom/a/a/e;->b(Lcom/a/a/c;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static b(ILcom/a/a/n;)I
    .locals 2

    invoke-static {p0}, Lcom/a/a/e;->e(I)I

    move-result v0

    invoke-static {p1}, Lcom/a/a/e;->b(Lcom/a/a/n;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static b(J)I
    .locals 2

    invoke-static {p0, p1}, Lcom/a/a/e;->d(J)I

    move-result v0

    return v0
.end method

.method public static b(Lcom/a/a/c;)I
    .locals 2

    invoke-virtual {p0}, Lcom/a/a/c;->b()I

    move-result v0

    invoke-static {v0}, Lcom/a/a/e;->g(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/a/a/c;->b()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static b(Lcom/a/a/n;)I
    .locals 2

    invoke-interface {p0}, Lcom/a/a/n;->getSerializedSize()I

    move-result v0

    invoke-static {v0}, Lcom/a/a/e;->g(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static c(I)I
    .locals 1

    invoke-static {p0}, Lcom/a/a/e;->g(I)I

    move-result v0

    return v0
.end method

.method public static d(J)I
    .locals 4

    const-wide/16 v2, 0x0

    const-wide/16 v0, -0x80

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const-wide/16 v0, -0x4000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const-wide/32 v0, -0x200000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    :cond_2
    const-wide/32 v0, -0x10000000

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    const/4 v0, 0x4

    goto :goto_0

    :cond_3
    const-wide v0, -0x800000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    const/4 v0, 0x5

    goto :goto_0

    :cond_4
    const-wide v0, -0x40000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_5

    const/4 v0, 0x6

    goto :goto_0

    :cond_5
    const-wide/high16 v0, -0x2000000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_6

    const/4 v0, 0x7

    goto :goto_0

    :cond_6
    const-wide/high16 v0, -0x100000000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_7

    const/16 v0, 0x8

    goto :goto_0

    :cond_7
    const-wide/high16 v0, -0x8000000000000000L

    and-long/2addr v0, p0

    cmp-long v0, v0, v2

    if-nez v0, :cond_8

    const/16 v0, 0x9

    goto :goto_0

    :cond_8
    const/16 v0, 0xa

    goto :goto_0
.end method

.method private d()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/a/a/e;->d:Ljava/io/OutputStream;

    if-nez v0, :cond_0

    new-instance v0, Lcom/a/a/e$a;

    invoke-direct {v0}, Lcom/a/a/e$a;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/a/a/e;->d:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/a/a/e;->a:[B

    iget v2, p0, Lcom/a/a/e;->c:I

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    iput v3, p0, Lcom/a/a/e;->c:I

    return-void
.end method

.method public static e(I)I
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/a/a/x;->a(II)I

    move-result v0

    invoke-static {v0}, Lcom/a/a/e;->g(I)I

    move-result v0

    return v0
.end method

.method public static g(I)I
    .locals 1

    and-int/lit8 v0, p0, -0x80

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    and-int/lit16 v0, p0, -0x4000

    if-nez v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const/high16 v0, -0x200000

    and-int/2addr v0, p0

    if-nez v0, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    :cond_2
    const/high16 v0, -0x10000000

    and-int/2addr v0, p0

    if-nez v0, :cond_3

    const/4 v0, 0x4

    goto :goto_0

    :cond_3
    const/4 v0, 0x5

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/a/a/e;->d:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/a/a/e;->d()V

    :cond_0
    return-void
.end method

.method public a(B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/a/a/e;->c:I

    iget v1, p0, Lcom/a/a/e;->b:I

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/a/a/e;->d()V

    :cond_0
    iget-object v0, p0, Lcom/a/a/e;->a:[B

    iget v1, p0, Lcom/a/a/e;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/a/a/e;->c:I

    aput-byte p1, v0, v1

    return-void
.end method

.method public a(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/a/a/e;->c(II)V

    invoke-virtual {p0, p2}, Lcom/a/a/e;->b(I)V

    return-void
.end method

.method public a(IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/a/a/e;->c(II)V

    invoke-virtual {p0, p2, p3}, Lcom/a/a/e;->a(J)V

    return-void
.end method

.method public a(ILcom/a/a/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/a/a/e;->c(II)V

    invoke-virtual {p0, p2}, Lcom/a/a/e;->a(Lcom/a/a/c;)V

    return-void
.end method

.method public a(ILcom/a/a/n;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/a/a/e;->c(II)V

    invoke-virtual {p0, p2}, Lcom/a/a/e;->a(Lcom/a/a/n;)V

    return-void
.end method

.method public a(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/a/a/e;->c(J)V

    return-void
.end method

.method public a(Lcom/a/a/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/a/a/c;->b()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/a/a/e;->f(I)V

    invoke-virtual {p0, p1}, Lcom/a/a/e;->c(Lcom/a/a/c;)V

    return-void
.end method

.method public a(Lcom/a/a/c;II)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v8, 0x0

    iget v0, p0, Lcom/a/a/e;->b:I

    iget v1, p0, Lcom/a/a/e;->c:I

    sub-int/2addr v0, v1

    if-lt v0, p3, :cond_1

    iget-object v0, p0, Lcom/a/a/e;->a:[B

    iget v1, p0, Lcom/a/a/e;->c:I

    invoke-virtual {p1, v0, p2, v1, p3}, Lcom/a/a/c;->a([BIII)V

    iget v0, p0, Lcom/a/a/e;->c:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/a/a/e;->c:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/a/a/e;->b:I

    iget v1, p0, Lcom/a/a/e;->c:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/a/a/e;->a:[B

    iget v2, p0, Lcom/a/a/e;->c:I

    invoke-virtual {p1, v1, p2, v2, v0}, Lcom/a/a/c;->a([BIII)V

    add-int v1, p2, v0

    sub-int v0, p3, v0

    iget v2, p0, Lcom/a/a/e;->b:I

    iput v2, p0, Lcom/a/a/e;->c:I

    invoke-direct {p0}, Lcom/a/a/e;->d()V

    iget v2, p0, Lcom/a/a/e;->b:I

    if-gt v0, v2, :cond_2

    iget-object v2, p0, Lcom/a/a/e;->a:[B

    invoke-virtual {p1, v2, v1, v8, v0}, Lcom/a/a/c;->a([BIII)V

    iput v0, p0, Lcom/a/a/e;->c:I

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/a/a/c;->g()Ljava/io/InputStream;

    move-result-object v2

    int-to-long v4, v1

    int-to-long v6, v1

    invoke-virtual {v2, v6, v7}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-eqz v1, :cond_4

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Skip failed? Should never happen."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-object v1, p0, Lcom/a/a/e;->d:Ljava/io/OutputStream;

    iget-object v4, p0, Lcom/a/a/e;->a:[B

    invoke-virtual {v1, v4, v8, v3}, Ljava/io/OutputStream;->write([BII)V

    sub-int/2addr v0, v3

    :cond_4
    if-lez v0, :cond_0

    iget v1, p0, Lcom/a/a/e;->b:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v3, p0, Lcom/a/a/e;->a:[B

    invoke-virtual {v2, v3, v8, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    if-eq v3, v1, :cond_3

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Read failed? Should never happen"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lcom/a/a/n;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Lcom/a/a/n;->getSerializedSize()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/a/a/e;->f(I)V

    invoke-interface {p1, p0}, Lcom/a/a/n;->writeTo(Lcom/a/a/e;)V

    return-void
.end method

.method public b()I
    .locals 2

    iget-object v0, p0, Lcom/a/a/e;->d:Ljava/io/OutputStream;

    if-nez v0, :cond_0

    iget v0, p0, Lcom/a/a/e;->b:I

    iget v1, p0, Lcom/a/a/e;->c:I

    sub-int/2addr v0, v1

    return v0

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "spaceLeft() can only be called on CodedOutputStreams that are writing to a flat array."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/a/a/e;->f(I)V

    return-void
.end method

.method public c()V
    .locals 2

    invoke-virtual {p0}, Lcom/a/a/e;->b()I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Did not write as much data as expected."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public c(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/a/a/x;->a(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/a/a/e;->f(I)V

    return-void
.end method

.method public c(J)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    const-wide/16 v0, -0x80

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    long-to-int v0, p1

    invoke-virtual {p0, v0}, Lcom/a/a/e;->d(I)V

    return-void

    :cond_0
    long-to-int v0, p1

    and-int/lit8 v0, v0, 0x7f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lcom/a/a/e;->d(I)V

    const/4 v0, 0x7

    ushr-long/2addr p1, v0

    goto :goto_0
.end method

.method public c(Lcom/a/a/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/a/a/c;->b()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/a/a/e;->a(Lcom/a/a/c;II)V

    return-void
.end method

.method public d(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    int-to-byte v0, p1

    invoke-virtual {p0, v0}, Lcom/a/a/e;->a(B)V

    return-void
.end method

.method public f(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/a/a/e;->d(I)V

    return-void

    :cond_0
    and-int/lit8 v0, p1, 0x7f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p0, v0}, Lcom/a/a/e;->d(I)V

    ushr-int/lit8 p1, p1, 0x7

    goto :goto_0
.end method

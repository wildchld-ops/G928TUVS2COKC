.class public final Lmf/org/apache/xerces/impl/io/UCSReader;
.super Ljava/io/Reader;
.source "UCSReader.java"


# static fields
.field public static final DEFAULT_BUFFER_SIZE:I = 0x2000

.field public static final UCS2BE:S = 0x2s

.field public static final UCS2LE:S = 0x1s

.field public static final UCS4BE:S = 0x8s

.field public static final UCS4LE:S = 0x4s


# instance fields
.field protected final fBuffer:[B

.field protected final fEncoding:S

.field protected final fInputStream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;IS)V
    .locals 1

    new-array v0, p2, [B

    invoke-direct {p0, p1, v0, p3}, Lmf/org/apache/xerces/impl/io/UCSReader;-><init>(Ljava/io/InputStream;[BS)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;S)V
    .locals 1

    const/16 v0, 0x2000

    invoke-direct {p0, p1, v0, p2}, Lmf/org/apache/xerces/impl/io/UCSReader;-><init>(Ljava/io/InputStream;IS)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;[BS)V
    .locals 0

    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    iput-object p1, p0, Lmf/org/apache/xerces/impl/io/UCSReader;->fInputStream:Ljava/io/InputStream;

    iput-object p2, p0, Lmf/org/apache/xerces/impl/io/UCSReader;->fBuffer:[B

    iput-short p3, p0, Lmf/org/apache/xerces/impl/io/UCSReader;->fEncoding:S

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/impl/io/UCSReader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public mark(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/impl/io/UCSReader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V

    return-void
.end method

.method public markSupported()Z
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/io/UCSReader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    return v0
.end method

.method public read()I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v7, 0xff

    const/4 v4, -0x1

    iget-object v5, p0, Lmf/org/apache/xerces/impl/io/UCSReader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v5}, Ljava/io/InputStream;->read()I

    move-result v5

    and-int/lit16 v0, v5, 0xff

    if-ne v0, v7, :cond_1

    :cond_0
    :goto_0
    return v4

    :cond_1
    iget-object v5, p0, Lmf/org/apache/xerces/impl/io/UCSReader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v5}, Ljava/io/InputStream;->read()I

    move-result v5

    and-int/lit16 v1, v5, 0xff

    if-eq v1, v7, :cond_0

    iget-short v5, p0, Lmf/org/apache/xerces/impl/io/UCSReader;->fEncoding:S

    const/4 v6, 0x4

    if-lt v5, v6, :cond_3

    iget-object v5, p0, Lmf/org/apache/xerces/impl/io/UCSReader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v5}, Ljava/io/InputStream;->read()I

    move-result v5

    and-int/lit16 v2, v5, 0xff

    if-eq v2, v7, :cond_0

    iget-object v5, p0, Lmf/org/apache/xerces/impl/io/UCSReader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v5}, Ljava/io/InputStream;->read()I

    move-result v5

    and-int/lit16 v3, v5, 0xff

    if-eq v3, v7, :cond_0

    iget-short v4, p0, Lmf/org/apache/xerces/impl/io/UCSReader;->fEncoding:S

    const/16 v5, 0x8

    if-ne v4, v5, :cond_2

    shl-int/lit8 v4, v0, 0x18

    shl-int/lit8 v5, v1, 0x10

    add-int/2addr v4, v5

    shl-int/lit8 v5, v2, 0x8

    add-int/2addr v4, v5

    add-int/2addr v4, v3

    goto :goto_0

    :cond_2
    shl-int/lit8 v4, v3, 0x18

    shl-int/lit8 v5, v2, 0x10

    add-int/2addr v4, v5

    shl-int/lit8 v5, v1, 0x8

    add-int/2addr v4, v5

    add-int/2addr v4, v0

    goto :goto_0

    :cond_3
    iget-short v4, p0, Lmf/org/apache/xerces/impl/io/UCSReader;->fEncoding:S

    const/4 v5, 0x2

    if-ne v4, v5, :cond_4

    shl-int/lit8 v4, v0, 0x8

    add-int/2addr v4, v1

    goto :goto_0

    :cond_4
    shl-int/lit8 v4, v1, 0x8

    add-int/2addr v4, v0

    goto :goto_0
.end method

.method public read([CII)I
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-short v14, v0, Lmf/org/apache/xerces/impl/io/UCSReader;->fEncoding:S

    const/4 v15, 0x4

    if-lt v14, v15, :cond_2

    const/4 v14, 0x2

    :goto_0
    shl-int v5, p3, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xerces/impl/io/UCSReader;->fBuffer:[B

    array-length v14, v14

    if-le v5, v14, :cond_0

    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xerces/impl/io/UCSReader;->fBuffer:[B

    array-length v5, v14

    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xerces/impl/io/UCSReader;->fInputStream:Ljava/io/InputStream;

    move-object/from16 v0, p0

    iget-object v15, v0, Lmf/org/apache/xerces/impl/io/UCSReader;->fBuffer:[B

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v14, v15, v0, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v7

    const/4 v14, -0x1

    if-ne v7, v14, :cond_3

    const/4 v12, -0x1

    :cond_1
    return v12

    :cond_2
    const/4 v14, 0x1

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-short v14, v0, Lmf/org/apache/xerces/impl/io/UCSReader;->fEncoding:S

    const/4 v15, 0x4

    if-lt v14, v15, :cond_8

    and-int/lit8 v14, v7, 0x3

    rsub-int/lit8 v14, v14, 0x4

    and-int/lit8 v13, v14, 0x3

    const/4 v10, 0x0

    :goto_1
    if-lt v10, v13, :cond_6

    :cond_4
    add-int/2addr v7, v13

    :cond_5
    :goto_2
    move-object/from16 v0, p0

    iget-short v14, v0, Lmf/org/apache/xerces/impl/io/UCSReader;->fEncoding:S

    const/4 v15, 0x4

    if-lt v14, v15, :cond_a

    const/4 v14, 0x2

    :goto_3
    shr-int v12, v7, v14

    const/4 v8, 0x0

    const/4 v10, 0x0

    move v9, v8

    :goto_4
    if-ge v10, v12, :cond_1

    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xerces/impl/io/UCSReader;->fBuffer:[B

    add-int/lit8 v8, v9, 0x1

    aget-byte v14, v14, v9

    and-int/lit16 v1, v14, 0xff

    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xerces/impl/io/UCSReader;->fBuffer:[B

    add-int/lit8 v9, v8, 0x1

    aget-byte v14, v14, v8

    and-int/lit16 v2, v14, 0xff

    move-object/from16 v0, p0

    iget-short v14, v0, Lmf/org/apache/xerces/impl/io/UCSReader;->fEncoding:S

    const/4 v15, 0x4

    if-lt v14, v15, :cond_c

    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xerces/impl/io/UCSReader;->fBuffer:[B

    add-int/lit8 v8, v9, 0x1

    aget-byte v14, v14, v9

    and-int/lit16 v3, v14, 0xff

    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xerces/impl/io/UCSReader;->fBuffer:[B

    add-int/lit8 v9, v8, 0x1

    aget-byte v14, v14, v8

    and-int/lit16 v4, v14, 0xff

    move-object/from16 v0, p0

    iget-short v14, v0, Lmf/org/apache/xerces/impl/io/UCSReader;->fEncoding:S

    const/16 v15, 0x8

    if-ne v14, v15, :cond_b

    add-int v14, p2, v10

    shl-int/lit8 v15, v1, 0x18

    shl-int/lit8 v16, v2, 0x10

    add-int v15, v15, v16

    shl-int/lit8 v16, v3, 0x8

    add-int v15, v15, v16

    add-int/2addr v15, v4

    int-to-char v15, v15

    aput-char v15, p1, v14

    move v8, v9

    :goto_5
    add-int/lit8 v10, v10, 0x1

    move v9, v8

    goto :goto_4

    :cond_6
    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xerces/impl/io/UCSReader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v14}, Ljava/io/InputStream;->read()I

    move-result v6

    const/4 v14, -0x1

    if-ne v6, v14, :cond_7

    move v11, v10

    :goto_6
    if-ge v11, v13, :cond_4

    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xerces/impl/io/UCSReader;->fBuffer:[B

    add-int v15, v7, v11

    const/16 v16, 0x0

    aput-byte v16, v14, v15

    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    :cond_7
    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xerces/impl/io/UCSReader;->fBuffer:[B

    add-int v15, v7, v10

    int-to-byte v0, v6

    move/from16 v16, v0

    aput-byte v16, v14, v15

    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    :cond_8
    and-int/lit8 v13, v7, 0x1

    if-eqz v13, :cond_5

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xerces/impl/io/UCSReader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v14}, Ljava/io/InputStream;->read()I

    move-result v6

    const/4 v14, -0x1

    if-ne v6, v14, :cond_9

    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xerces/impl/io/UCSReader;->fBuffer:[B

    const/4 v15, 0x0

    aput-byte v15, v14, v7

    goto/16 :goto_2

    :cond_9
    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xerces/impl/io/UCSReader;->fBuffer:[B

    int-to-byte v15, v6

    aput-byte v15, v14, v7

    goto/16 :goto_2

    :cond_a
    const/4 v14, 0x1

    goto/16 :goto_3

    :cond_b
    add-int v14, p2, v10

    shl-int/lit8 v15, v4, 0x18

    shl-int/lit8 v16, v3, 0x10

    add-int v15, v15, v16

    shl-int/lit8 v16, v2, 0x8

    add-int v15, v15, v16

    add-int/2addr v15, v1

    int-to-char v15, v15

    aput-char v15, p1, v14

    move v8, v9

    goto :goto_5

    :cond_c
    move-object/from16 v0, p0

    iget-short v14, v0, Lmf/org/apache/xerces/impl/io/UCSReader;->fEncoding:S

    const/4 v15, 0x2

    if-ne v14, v15, :cond_d

    add-int v14, p2, v10

    shl-int/lit8 v15, v1, 0x8

    add-int/2addr v15, v2

    int-to-char v15, v15

    aput-char v15, p1, v14

    move v8, v9

    goto :goto_5

    :cond_d
    add-int v14, p2, v10

    shl-int/lit8 v15, v2, 0x8

    add-int/2addr v15, v1

    int-to-char v15, v15

    aput-char v15, p1, v14

    move v8, v9

    goto :goto_5
.end method

.method public ready()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public reset()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/impl/io/UCSReader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    return-void
.end method

.method public skip(J)J
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-short v3, p0, Lmf/org/apache/xerces/impl/io/UCSReader;->fEncoding:S

    const/4 v4, 0x4

    if-lt v3, v4, :cond_0

    const/4 v2, 0x2

    :goto_0
    iget-object v3, p0, Lmf/org/apache/xerces/impl/io/UCSReader;->fInputStream:Ljava/io/InputStream;

    shl-long v4, p1, v2

    invoke-virtual {v3, v4, v5}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v0

    or-int/lit8 v3, v2, 0x1

    int-to-long v4, v3

    and-long/2addr v4, v0

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_1

    shr-long v4, v0, v2

    :goto_1
    return-wide v4

    :cond_0
    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    shr-long v4, v0, v2

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    goto :goto_1
.end method

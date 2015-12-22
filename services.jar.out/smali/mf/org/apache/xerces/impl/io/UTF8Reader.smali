.class public final Lmf/org/apache/xerces/impl/io/UTF8Reader;
.super Ljava/io/Reader;
.source "UTF8Reader.java"


# static fields
.field private static final DEBUG_READ:Z = false

.field public static final DEFAULT_BUFFER_SIZE:I = 0x800


# instance fields
.field protected final fBuffer:[B

.field private final fFormatter:Lmf/org/apache/xerces/util/MessageFormatter;

.field protected final fInputStream:Ljava/io/InputStream;

.field private final fLocale:Ljava/util/Locale;

.field protected fOffset:I

.field private fSurrogate:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 3

    const/16 v0, 0x800

    new-instance v1, Lmf/org/apache/xerces/impl/msg/XMLMessageFormatter;

    invoke-direct {v1}, Lmf/org/apache/xerces/impl/msg/XMLMessageFormatter;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Lmf/org/apache/xerces/impl/io/UTF8Reader;-><init>(Ljava/io/InputStream;ILmf/org/apache/xerces/util/MessageFormatter;Ljava/util/Locale;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;ILmf/org/apache/xerces/util/MessageFormatter;Ljava/util/Locale;)V
    .locals 1

    new-array v0, p2, [B

    invoke-direct {p0, p1, v0, p3, p4}, Lmf/org/apache/xerces/impl/io/UTF8Reader;-><init>(Ljava/io/InputStream;[BLmf/org/apache/xerces/util/MessageFormatter;Ljava/util/Locale;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Lmf/org/apache/xerces/util/MessageFormatter;Ljava/util/Locale;)V
    .locals 1

    const/16 v0, 0x800

    invoke-direct {p0, p1, v0, p2, p3}, Lmf/org/apache/xerces/impl/io/UTF8Reader;-><init>(Ljava/io/InputStream;ILmf/org/apache/xerces/util/MessageFormatter;Ljava/util/Locale;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;[BLmf/org/apache/xerces/util/MessageFormatter;Ljava/util/Locale;)V
    .locals 1

    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fSurrogate:I

    iput-object p1, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fInputStream:Ljava/io/InputStream;

    iput-object p2, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    iput-object p3, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fFormatter:Lmf/org/apache/xerces/util/MessageFormatter;

    iput-object p4, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fLocale:Ljava/util/Locale;

    return-void
.end method

.method private expectedByte(II)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException;
        }
    .end annotation

    new-instance v0, Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fFormatter:Lmf/org/apache/xerces/util/MessageFormatter;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fLocale:Ljava/util/Locale;

    const-string/jumbo v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v4, "ExpectedByte"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-direct/range {v0 .. v5}, Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException;-><init>(Lmf/org/apache/xerces/util/MessageFormatter;Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method private invalidByte(III)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException;
        }
    .end annotation

    new-instance v0, Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fFormatter:Lmf/org/apache/xerces/util/MessageFormatter;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fLocale:Ljava/util/Locale;

    const-string/jumbo v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v4, "InvalidByte"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-direct/range {v0 .. v5}, Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException;-><init>(Lmf/org/apache/xerces/util/MessageFormatter;Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method

.method private invalidSurrogate(I)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException;
        }
    .end annotation

    new-instance v0, Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fFormatter:Lmf/org/apache/xerces/util/MessageFormatter;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fLocale:Ljava/util/Locale;

    const-string/jumbo v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v4, "InvalidHighSurrogate"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-direct/range {v0 .. v5}, Lmf/org/apache/xerces/impl/io/MalformedByteSequenceException;-><init>(Lmf/org/apache/xerces/util/MessageFormatter;Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public mark(I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/IOException;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fFormatter:Lmf/org/apache/xerces/util/MessageFormatter;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fLocale:Ljava/util/Locale;

    const-string v3, "OperationNotSupported"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string/jumbo v6, "mark()"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "UTF-8"

    aput-object v6, v4, v5

    invoke-interface {v1, v2, v3, v4}, Lmf/org/apache/xerces/util/MessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public markSupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v4, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fSurrogate:I

    iget v11, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fSurrogate:I

    const/4 v12, -0x1

    if-ne v11, v12, :cond_1c

    const/4 v6, 0x0

    iget v11, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fOffset:I

    if-ne v6, v11, :cond_0

    iget-object v11, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v11}, Ljava/io/InputStream;->read()I

    move-result v0

    move v7, v6

    :goto_0
    const/4 v11, -0x1

    if-ne v0, v11, :cond_1

    const/4 v11, -0x1

    :goto_1
    return v11

    :cond_0
    iget-object v11, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    add-int/lit8 v7, v6, 0x1

    aget-byte v11, v11, v6

    and-int/lit16 v0, v11, 0xff

    goto :goto_0

    :cond_1
    const/16 v11, 0x80

    if-ge v0, v11, :cond_2

    int-to-char v4, v0

    :goto_2
    move v11, v4

    goto :goto_1

    :cond_2
    and-int/lit16 v11, v0, 0xe0

    const/16 v12, 0xc0

    if-ne v11, v12, :cond_6

    and-int/lit8 v11, v0, 0x1e

    if-eqz v11, :cond_6

    iget v11, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fOffset:I

    if-ne v7, v11, :cond_5

    iget-object v11, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v11}, Ljava/io/InputStream;->read()I

    move-result v1

    move v6, v7

    :goto_3
    const/4 v11, -0x1

    if-ne v1, v11, :cond_3

    const/4 v11, 0x2

    const/4 v12, 0x2

    invoke-direct {p0, v11, v12}, Lmf/org/apache/xerces/impl/io/UTF8Reader;->expectedByte(II)V

    :cond_3
    and-int/lit16 v11, v1, 0xc0

    const/16 v12, 0x80

    if-eq v11, v12, :cond_4

    const/4 v11, 0x2

    const/4 v12, 0x2

    invoke-direct {p0, v11, v12, v1}, Lmf/org/apache/xerces/impl/io/UTF8Reader;->invalidByte(III)V

    :cond_4
    shl-int/lit8 v11, v0, 0x6

    and-int/lit16 v11, v11, 0x7c0

    and-int/lit8 v12, v1, 0x3f

    or-int v4, v11, v12

    goto :goto_2

    :cond_5
    iget-object v11, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    add-int/lit8 v6, v7, 0x1

    aget-byte v11, v11, v7

    and-int/lit16 v1, v11, 0xff

    goto :goto_3

    :cond_6
    and-int/lit16 v11, v0, 0xf0

    const/16 v12, 0xe0

    if-ne v11, v12, :cond_f

    iget v11, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fOffset:I

    if-ne v7, v11, :cond_d

    iget-object v11, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v11}, Ljava/io/InputStream;->read()I

    move-result v1

    :goto_4
    const/4 v11, -0x1

    if-ne v1, v11, :cond_7

    const/4 v11, 0x2

    const/4 v12, 0x3

    invoke-direct {p0, v11, v12}, Lmf/org/apache/xerces/impl/io/UTF8Reader;->expectedByte(II)V

    :cond_7
    and-int/lit16 v11, v1, 0xc0

    const/16 v12, 0x80

    if-ne v11, v12, :cond_9

    const/16 v11, 0xed

    if-ne v0, v11, :cond_8

    const/16 v11, 0xa0

    if-ge v1, v11, :cond_9

    :cond_8
    and-int/lit8 v11, v0, 0xf

    if-nez v11, :cond_a

    and-int/lit8 v11, v1, 0x20

    if-nez v11, :cond_a

    :cond_9
    const/4 v11, 0x2

    const/4 v12, 0x3

    invoke-direct {p0, v11, v12, v1}, Lmf/org/apache/xerces/impl/io/UTF8Reader;->invalidByte(III)V

    :cond_a
    iget v11, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fOffset:I

    if-ne v7, v11, :cond_e

    iget-object v11, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v11}, Ljava/io/InputStream;->read()I

    move-result v2

    move v6, v7

    :goto_5
    const/4 v11, -0x1

    if-ne v2, v11, :cond_b

    const/4 v11, 0x3

    const/4 v12, 0x3

    invoke-direct {p0, v11, v12}, Lmf/org/apache/xerces/impl/io/UTF8Reader;->expectedByte(II)V

    :cond_b
    and-int/lit16 v11, v2, 0xc0

    const/16 v12, 0x80

    if-eq v11, v12, :cond_c

    const/4 v11, 0x3

    const/4 v12, 0x3

    invoke-direct {p0, v11, v12, v2}, Lmf/org/apache/xerces/impl/io/UTF8Reader;->invalidByte(III)V

    :cond_c
    shl-int/lit8 v11, v0, 0xc

    const v12, 0xf000

    and-int/2addr v11, v12

    shl-int/lit8 v12, v1, 0x6

    and-int/lit16 v12, v12, 0xfc0

    or-int/2addr v11, v12

    and-int/lit8 v12, v2, 0x3f

    or-int v4, v11, v12

    goto/16 :goto_2

    :cond_d
    iget-object v11, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    add-int/lit8 v6, v7, 0x1

    aget-byte v11, v11, v7

    and-int/lit16 v1, v11, 0xff

    move v7, v6

    goto :goto_4

    :cond_e
    iget-object v11, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    add-int/lit8 v6, v7, 0x1

    aget-byte v11, v11, v7

    and-int/lit16 v2, v11, 0xff

    goto :goto_5

    :cond_f
    and-int/lit16 v11, v0, 0xf8

    const/16 v12, 0xf0

    if-ne v11, v12, :cond_1b

    iget v11, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fOffset:I

    if-ne v7, v11, :cond_18

    iget-object v11, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v11}, Ljava/io/InputStream;->read()I

    move-result v1

    :goto_6
    const/4 v11, -0x1

    if-ne v1, v11, :cond_10

    const/4 v11, 0x2

    const/4 v12, 0x4

    invoke-direct {p0, v11, v12}, Lmf/org/apache/xerces/impl/io/UTF8Reader;->expectedByte(II)V

    :cond_10
    and-int/lit16 v11, v1, 0xc0

    const/16 v12, 0x80

    if-ne v11, v12, :cond_11

    and-int/lit8 v11, v1, 0x30

    if-nez v11, :cond_12

    and-int/lit8 v11, v0, 0x7

    if-nez v11, :cond_12

    :cond_11
    const/4 v11, 0x2

    const/4 v12, 0x3

    invoke-direct {p0, v11, v12, v1}, Lmf/org/apache/xerces/impl/io/UTF8Reader;->invalidByte(III)V

    :cond_12
    iget v11, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fOffset:I

    if-ne v7, v11, :cond_19

    iget-object v11, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v11}, Ljava/io/InputStream;->read()I

    move-result v2

    :goto_7
    const/4 v11, -0x1

    if-ne v2, v11, :cond_13

    const/4 v11, 0x3

    const/4 v12, 0x4

    invoke-direct {p0, v11, v12}, Lmf/org/apache/xerces/impl/io/UTF8Reader;->expectedByte(II)V

    :cond_13
    and-int/lit16 v11, v2, 0xc0

    const/16 v12, 0x80

    if-eq v11, v12, :cond_14

    const/4 v11, 0x3

    const/4 v12, 0x3

    invoke-direct {p0, v11, v12, v2}, Lmf/org/apache/xerces/impl/io/UTF8Reader;->invalidByte(III)V

    :cond_14
    iget v11, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fOffset:I

    if-ne v7, v11, :cond_1a

    iget-object v11, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v11}, Ljava/io/InputStream;->read()I

    move-result v3

    move v6, v7

    :goto_8
    const/4 v11, -0x1

    if-ne v3, v11, :cond_15

    const/4 v11, 0x4

    const/4 v12, 0x4

    invoke-direct {p0, v11, v12}, Lmf/org/apache/xerces/impl/io/UTF8Reader;->expectedByte(II)V

    :cond_15
    and-int/lit16 v11, v3, 0xc0

    const/16 v12, 0x80

    if-eq v11, v12, :cond_16

    const/4 v11, 0x4

    const/4 v12, 0x4

    invoke-direct {p0, v11, v12, v3}, Lmf/org/apache/xerces/impl/io/UTF8Reader;->invalidByte(III)V

    :cond_16
    shl-int/lit8 v11, v0, 0x2

    and-int/lit8 v11, v11, 0x1c

    shr-int/lit8 v12, v1, 0x4

    and-int/lit8 v12, v12, 0x3

    or-int v9, v11, v12

    const/16 v11, 0x10

    if-le v9, v11, :cond_17

    invoke-direct {p0, v9}, Lmf/org/apache/xerces/impl/io/UTF8Reader;->invalidSurrogate(I)V

    :cond_17
    add-int/lit8 v10, v9, -0x1

    const v11, 0xd800

    shl-int/lit8 v12, v10, 0x6

    and-int/lit16 v12, v12, 0x3c0

    or-int/2addr v11, v12

    shl-int/lit8 v12, v1, 0x2

    and-int/lit8 v12, v12, 0x3c

    or-int/2addr v11, v12

    shr-int/lit8 v12, v2, 0x4

    and-int/lit8 v12, v12, 0x3

    or-int v5, v11, v12

    const v11, 0xdc00

    shl-int/lit8 v12, v2, 0x6

    and-int/lit16 v12, v12, 0x3c0

    or-int/2addr v11, v12

    and-int/lit8 v12, v3, 0x3f

    or-int v8, v11, v12

    move v4, v5

    iput v8, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fSurrogate:I

    goto/16 :goto_2

    :cond_18
    iget-object v11, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    add-int/lit8 v6, v7, 0x1

    aget-byte v11, v11, v7

    and-int/lit16 v1, v11, 0xff

    move v7, v6

    goto/16 :goto_6

    :cond_19
    iget-object v11, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    add-int/lit8 v6, v7, 0x1

    aget-byte v11, v11, v7

    and-int/lit16 v2, v11, 0xff

    move v7, v6

    goto :goto_7

    :cond_1a
    iget-object v11, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    add-int/lit8 v6, v7, 0x1

    aget-byte v11, v11, v7

    and-int/lit16 v3, v11, 0xff

    goto :goto_8

    :cond_1b
    const/4 v11, 0x1

    const/4 v12, 0x1

    invoke-direct {p0, v11, v12, v0}, Lmf/org/apache/xerces/impl/io/UTF8Reader;->invalidByte(III)V

    goto/16 :goto_2

    :cond_1c
    const/4 v11, -0x1

    iput v11, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fSurrogate:I

    goto/16 :goto_2
.end method

.method public read([CII)I
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move/from16 v15, p2

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fOffset:I

    move/from16 v23, v0

    if-nez v23, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, p3

    move/from16 v1, v23

    if-le v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 p3, v0

    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fSurrogate:I

    move/from16 v23, v0

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_1

    add-int/lit8 v16, v15, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fSurrogate:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-char v0, v0

    move/from16 v23, v0

    aput-char v23, p1, v15

    const/16 v23, -0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fSurrogate:I

    add-int/lit8 p3, p3, -0x1

    move/from16 v15, v16

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fInputStream:Ljava/io/InputStream;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v11

    const/16 v23, -0x1

    move/from16 v0, v23

    if-ne v11, v0, :cond_2

    const/16 v23, -0x1

    :goto_0
    return v23

    :cond_2
    sub-int v23, v15, p2

    add-int v11, v11, v23

    :goto_1
    move/from16 v17, v11

    const/4 v8, 0x0

    const/4 v13, 0x0

    move/from16 v16, v15

    :goto_2
    move/from16 v0, v17

    if-lt v13, v0, :cond_5

    :cond_3
    :goto_3
    move/from16 v0, v17

    if-lt v13, v0, :cond_6

    move/from16 v15, v16

    move/from16 v23, v11

    goto :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget v11, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fOffset:I

    const/16 v23, 0x0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fOffset:I

    goto :goto_1

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v23, v0

    aget-byte v9, v23, v13

    if-ltz v9, :cond_3

    add-int/lit8 v15, v16, 0x1

    int-to-char v0, v9

    move/from16 v23, v0

    aput-char v23, p1, v16

    add-int/lit8 v13, v13, 0x1

    move/from16 v16, v15

    goto :goto_2

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v23, v0

    aget-byte v9, v23, v13

    if-ltz v9, :cond_7

    add-int/lit8 v15, v16, 0x1

    int-to-char v0, v9

    move/from16 v23, v0

    aput-char v23, p1, v16

    :goto_4
    add-int/lit8 v13, v13, 0x1

    move/from16 v16, v15

    goto :goto_3

    :cond_7
    and-int/lit16 v4, v9, 0xff

    and-int/lit16 v0, v4, 0xe0

    move/from16 v23, v0

    const/16 v24, 0xc0

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_d

    and-int/lit8 v23, v4, 0x1e

    if-eqz v23, :cond_d

    const/4 v5, -0x1

    add-int/lit8 v13, v13, 0x1

    move/from16 v0, v17

    if-ge v13, v0, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v23, v0

    aget-byte v23, v23, v13

    move/from16 v0, v23

    and-int/lit16 v5, v0, 0xff

    :goto_5
    and-int/lit16 v0, v5, 0xc0

    move/from16 v23, v0

    const/16 v24, 0x80

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_c

    move/from16 v0, v16

    move/from16 v1, p2

    if-le v0, v1, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v23, v0

    const/16 v24, 0x0

    int-to-byte v0, v4

    move/from16 v25, v0

    aput-byte v25, v23, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v23, v0

    const/16 v24, 0x1

    int-to-byte v0, v5

    move/from16 v25, v0

    aput-byte v25, v23, v24

    const/16 v23, 0x2

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fOffset:I

    sub-int v23, v16, p2

    move/from16 v15, v16

    goto/16 :goto_0

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fInputStream:Ljava/io/InputStream;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/io/InputStream;->read()I

    move-result v5

    const/16 v23, -0x1

    move/from16 v0, v23

    if-ne v5, v0, :cond_a

    move/from16 v0, v16

    move/from16 v1, p2

    if-le v0, v1, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v23, v0

    const/16 v24, 0x0

    int-to-byte v0, v4

    move/from16 v25, v0

    aput-byte v25, v23, v24

    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fOffset:I

    sub-int v23, v16, p2

    move/from16 v15, v16

    goto/16 :goto_0

    :cond_9
    const/16 v23, 0x2

    const/16 v24, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lmf/org/apache/xerces/impl/io/UTF8Reader;->expectedByte(II)V

    :cond_a
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    :cond_b
    const/16 v23, 0x2

    const/16 v24, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2, v5}, Lmf/org/apache/xerces/impl/io/UTF8Reader;->invalidByte(III)V

    :cond_c
    shl-int/lit8 v23, v4, 0x6

    move/from16 v0, v23

    and-int/lit16 v0, v0, 0x7c0

    move/from16 v23, v0

    and-int/lit8 v24, v5, 0x3f

    or-int v10, v23, v24

    add-int/lit8 v15, v16, 0x1

    int-to-char v0, v10

    move/from16 v23, v0

    aput-char v23, p1, v16

    add-int/lit8 v11, v11, -0x1

    goto/16 :goto_4

    :cond_d
    and-int/lit16 v0, v4, 0xf0

    move/from16 v23, v0

    const/16 v24, 0xe0

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_1a

    const/4 v5, -0x1

    add-int/lit8 v13, v13, 0x1

    move/from16 v0, v17

    if-ge v13, v0, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v23, v0

    aget-byte v23, v23, v13

    move/from16 v0, v23

    and-int/lit16 v5, v0, 0xff

    :goto_6
    and-int/lit16 v0, v5, 0xc0

    move/from16 v23, v0

    const/16 v24, 0x80

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_f

    const/16 v23, 0xed

    move/from16 v0, v23

    if-ne v4, v0, :cond_e

    const/16 v23, 0xa0

    move/from16 v0, v23

    if-ge v5, v0, :cond_f

    :cond_e
    and-int/lit8 v23, v4, 0xf

    if-nez v23, :cond_14

    and-int/lit8 v23, v5, 0x20

    if-nez v23, :cond_14

    :cond_f
    move/from16 v0, v16

    move/from16 v1, p2

    if-le v0, v1, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v23, v0

    const/16 v24, 0x0

    int-to-byte v0, v4

    move/from16 v25, v0

    aput-byte v25, v23, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v23, v0

    const/16 v24, 0x1

    int-to-byte v0, v5

    move/from16 v25, v0

    aput-byte v25, v23, v24

    const/16 v23, 0x2

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fOffset:I

    sub-int v23, v16, p2

    move/from16 v15, v16

    goto/16 :goto_0

    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fInputStream:Ljava/io/InputStream;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/io/InputStream;->read()I

    move-result v5

    const/16 v23, -0x1

    move/from16 v0, v23

    if-ne v5, v0, :cond_12

    move/from16 v0, v16

    move/from16 v1, p2

    if-le v0, v1, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v23, v0

    const/16 v24, 0x0

    int-to-byte v0, v4

    move/from16 v25, v0

    aput-byte v25, v23, v24

    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fOffset:I

    sub-int v23, v16, p2

    move/from16 v15, v16

    goto/16 :goto_0

    :cond_11
    const/16 v23, 0x2

    const/16 v24, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lmf/org/apache/xerces/impl/io/UTF8Reader;->expectedByte(II)V

    :cond_12
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_6

    :cond_13
    const/16 v23, 0x2

    const/16 v24, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2, v5}, Lmf/org/apache/xerces/impl/io/UTF8Reader;->invalidByte(III)V

    :cond_14
    const/4 v6, -0x1

    add-int/lit8 v13, v13, 0x1

    move/from16 v0, v17

    if-ge v13, v0, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v23, v0

    aget-byte v23, v23, v13

    move/from16 v0, v23

    and-int/lit16 v6, v0, 0xff

    :goto_7
    and-int/lit16 v0, v6, 0xc0

    move/from16 v23, v0

    const/16 v24, 0x80

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_19

    move/from16 v0, v16

    move/from16 v1, p2

    if-le v0, v1, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v23, v0

    const/16 v24, 0x0

    int-to-byte v0, v4

    move/from16 v25, v0

    aput-byte v25, v23, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v23, v0

    const/16 v24, 0x1

    int-to-byte v0, v5

    move/from16 v25, v0

    aput-byte v25, v23, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v23, v0

    const/16 v24, 0x2

    int-to-byte v0, v6

    move/from16 v25, v0

    aput-byte v25, v23, v24

    const/16 v23, 0x3

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fOffset:I

    sub-int v23, v16, p2

    move/from16 v15, v16

    goto/16 :goto_0

    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fInputStream:Ljava/io/InputStream;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/io/InputStream;->read()I

    move-result v6

    const/16 v23, -0x1

    move/from16 v0, v23

    if-ne v6, v0, :cond_17

    move/from16 v0, v16

    move/from16 v1, p2

    if-le v0, v1, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v23, v0

    const/16 v24, 0x0

    int-to-byte v0, v4

    move/from16 v25, v0

    aput-byte v25, v23, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v23, v0

    const/16 v24, 0x1

    int-to-byte v0, v5

    move/from16 v25, v0

    aput-byte v25, v23, v24

    const/16 v23, 0x2

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fOffset:I

    sub-int v23, v16, p2

    move/from16 v15, v16

    goto/16 :goto_0

    :cond_16
    const/16 v23, 0x3

    const/16 v24, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lmf/org/apache/xerces/impl/io/UTF8Reader;->expectedByte(II)V

    :cond_17
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_7

    :cond_18
    const/16 v23, 0x3

    const/16 v24, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2, v6}, Lmf/org/apache/xerces/impl/io/UTF8Reader;->invalidByte(III)V

    :cond_19
    shl-int/lit8 v23, v4, 0xc

    const v24, 0xf000

    and-int v23, v23, v24

    shl-int/lit8 v24, v5, 0x6

    move/from16 v0, v24

    and-int/lit16 v0, v0, 0xfc0

    move/from16 v24, v0

    or-int v23, v23, v24

    and-int/lit8 v24, v6, 0x3f

    or-int v10, v23, v24

    add-int/lit8 v15, v16, 0x1

    int-to-char v0, v10

    move/from16 v23, v0

    aput-char v23, p1, v16

    add-int/lit8 v11, v11, -0x2

    goto/16 :goto_4

    :cond_1a
    and-int/lit16 v0, v4, 0xf8

    move/from16 v23, v0

    const/16 v24, 0xf0

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_2d

    const/4 v5, -0x1

    add-int/lit8 v13, v13, 0x1

    move/from16 v0, v17

    if-ge v13, v0, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v23, v0

    aget-byte v23, v23, v13

    move/from16 v0, v23

    and-int/lit16 v5, v0, 0xff

    :goto_8
    and-int/lit16 v0, v5, 0xc0

    move/from16 v23, v0

    const/16 v24, 0x80

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_1b

    and-int/lit8 v23, v5, 0x30

    if-nez v23, :cond_20

    and-int/lit8 v23, v4, 0x7

    if-nez v23, :cond_20

    :cond_1b
    move/from16 v0, v16

    move/from16 v1, p2

    if-le v0, v1, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v23, v0

    const/16 v24, 0x0

    int-to-byte v0, v4

    move/from16 v25, v0

    aput-byte v25, v23, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v23, v0

    const/16 v24, 0x1

    int-to-byte v0, v5

    move/from16 v25, v0

    aput-byte v25, v23, v24

    const/16 v23, 0x2

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fOffset:I

    sub-int v23, v16, p2

    move/from16 v15, v16

    goto/16 :goto_0

    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fInputStream:Ljava/io/InputStream;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/io/InputStream;->read()I

    move-result v5

    const/16 v23, -0x1

    move/from16 v0, v23

    if-ne v5, v0, :cond_1e

    move/from16 v0, v16

    move/from16 v1, p2

    if-le v0, v1, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v23, v0

    const/16 v24, 0x0

    int-to-byte v0, v4

    move/from16 v25, v0

    aput-byte v25, v23, v24

    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fOffset:I

    sub-int v23, v16, p2

    move/from16 v15, v16

    goto/16 :goto_0

    :cond_1d
    const/16 v23, 0x2

    const/16 v24, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lmf/org/apache/xerces/impl/io/UTF8Reader;->expectedByte(II)V

    :cond_1e
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_8

    :cond_1f
    const/16 v23, 0x2

    const/16 v24, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2, v5}, Lmf/org/apache/xerces/impl/io/UTF8Reader;->invalidByte(III)V

    :cond_20
    const/4 v6, -0x1

    add-int/lit8 v13, v13, 0x1

    move/from16 v0, v17

    if-ge v13, v0, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v23, v0

    aget-byte v23, v23, v13

    move/from16 v0, v23

    and-int/lit16 v6, v0, 0xff

    :goto_9
    and-int/lit16 v0, v6, 0xc0

    move/from16 v23, v0

    const/16 v24, 0x80

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_25

    move/from16 v0, v16

    move/from16 v1, p2

    if-le v0, v1, :cond_24

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v23, v0

    const/16 v24, 0x0

    int-to-byte v0, v4

    move/from16 v25, v0

    aput-byte v25, v23, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v23, v0

    const/16 v24, 0x1

    int-to-byte v0, v5

    move/from16 v25, v0

    aput-byte v25, v23, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v23, v0

    const/16 v24, 0x2

    int-to-byte v0, v6

    move/from16 v25, v0

    aput-byte v25, v23, v24

    const/16 v23, 0x3

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fOffset:I

    sub-int v23, v16, p2

    move/from16 v15, v16

    goto/16 :goto_0

    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fInputStream:Ljava/io/InputStream;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/io/InputStream;->read()I

    move-result v6

    const/16 v23, -0x1

    move/from16 v0, v23

    if-ne v6, v0, :cond_23

    move/from16 v0, v16

    move/from16 v1, p2

    if-le v0, v1, :cond_22

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v23, v0

    const/16 v24, 0x0

    int-to-byte v0, v4

    move/from16 v25, v0

    aput-byte v25, v23, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v23, v0

    const/16 v24, 0x1

    int-to-byte v0, v5

    move/from16 v25, v0

    aput-byte v25, v23, v24

    const/16 v23, 0x2

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fOffset:I

    sub-int v23, v16, p2

    move/from16 v15, v16

    goto/16 :goto_0

    :cond_22
    const/16 v23, 0x3

    const/16 v24, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lmf/org/apache/xerces/impl/io/UTF8Reader;->expectedByte(II)V

    :cond_23
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_9

    :cond_24
    const/16 v23, 0x3

    const/16 v24, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2, v6}, Lmf/org/apache/xerces/impl/io/UTF8Reader;->invalidByte(III)V

    :cond_25
    const/4 v7, -0x1

    add-int/lit8 v13, v13, 0x1

    move/from16 v0, v17

    if-ge v13, v0, :cond_26

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v23, v0

    aget-byte v23, v23, v13

    move/from16 v0, v23

    and-int/lit16 v7, v0, 0xff

    :goto_a
    and-int/lit16 v0, v7, 0xc0

    move/from16 v23, v0

    const/16 v24, 0x80

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_2a

    move/from16 v0, v16

    move/from16 v1, p2

    if-le v0, v1, :cond_29

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v23, v0

    const/16 v24, 0x0

    int-to-byte v0, v4

    move/from16 v25, v0

    aput-byte v25, v23, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v23, v0

    const/16 v24, 0x1

    int-to-byte v0, v5

    move/from16 v25, v0

    aput-byte v25, v23, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v23, v0

    const/16 v24, 0x2

    int-to-byte v0, v6

    move/from16 v25, v0

    aput-byte v25, v23, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v23, v0

    const/16 v24, 0x3

    int-to-byte v0, v7

    move/from16 v25, v0

    aput-byte v25, v23, v24

    const/16 v23, 0x4

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fOffset:I

    sub-int v23, v16, p2

    move/from16 v15, v16

    goto/16 :goto_0

    :cond_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fInputStream:Ljava/io/InputStream;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/io/InputStream;->read()I

    move-result v7

    const/16 v23, -0x1

    move/from16 v0, v23

    if-ne v7, v0, :cond_28

    move/from16 v0, v16

    move/from16 v1, p2

    if-le v0, v1, :cond_27

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v23, v0

    const/16 v24, 0x0

    int-to-byte v0, v4

    move/from16 v25, v0

    aput-byte v25, v23, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v23, v0

    const/16 v24, 0x1

    int-to-byte v0, v5

    move/from16 v25, v0

    aput-byte v25, v23, v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v23, v0

    const/16 v24, 0x2

    int-to-byte v0, v6

    move/from16 v25, v0

    aput-byte v25, v23, v24

    const/16 v23, 0x3

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fOffset:I

    sub-int v23, v16, p2

    move/from16 v15, v16

    goto/16 :goto_0

    :cond_27
    const/16 v23, 0x4

    const/16 v24, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lmf/org/apache/xerces/impl/io/UTF8Reader;->expectedByte(II)V

    :cond_28
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_a

    :cond_29
    const/16 v23, 0x4

    const/16 v24, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2, v6}, Lmf/org/apache/xerces/impl/io/UTF8Reader;->invalidByte(III)V

    :cond_2a
    shl-int/lit8 v23, v4, 0x2

    and-int/lit8 v23, v23, 0x1c

    shr-int/lit8 v24, v5, 0x4

    and-int/lit8 v24, v24, 0x3

    or-int v18, v23, v24

    const/16 v23, 0x10

    move/from16 v0, v18

    move/from16 v1, v23

    if-le v0, v1, :cond_2b

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/impl/io/UTF8Reader;->invalidSurrogate(I)V

    :cond_2b
    add-int/lit8 v19, v18, -0x1

    and-int/lit8 v22, v5, 0xf

    and-int/lit8 v21, v6, 0x3f

    and-int/lit8 v20, v7, 0x3f

    const v23, 0xd800

    shl-int/lit8 v24, v19, 0x6

    move/from16 v0, v24

    and-int/lit16 v0, v0, 0x3c0

    move/from16 v24, v0

    or-int v23, v23, v24

    shl-int/lit8 v24, v22, 0x2

    or-int v23, v23, v24

    shr-int/lit8 v24, v21, 0x4

    or-int v12, v23, v24

    const v23, 0xdc00

    shl-int/lit8 v24, v21, 0x6

    move/from16 v0, v24

    and-int/lit16 v0, v0, 0x3c0

    move/from16 v24, v0

    or-int v23, v23, v24

    or-int v14, v23, v20

    add-int/lit8 v15, v16, 0x1

    int-to-char v0, v12

    move/from16 v23, v0

    aput-char v23, p1, v16

    add-int/lit8 v11, v11, -0x2

    move/from16 v0, p3

    if-gt v11, v0, :cond_2c

    add-int/lit8 v16, v15, 0x1

    int-to-char v0, v14

    move/from16 v23, v0

    aput-char v23, p1, v15

    move/from16 v15, v16

    goto/16 :goto_4

    :cond_2c
    move-object/from16 v0, p0

    iput v14, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fSurrogate:I

    add-int/lit8 v11, v11, -0x1

    goto/16 :goto_4

    :cond_2d
    move/from16 v0, v16

    move/from16 v1, p2

    if-le v0, v1, :cond_2e

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    move-object/from16 v23, v0

    const/16 v24, 0x0

    int-to-byte v0, v4

    move/from16 v25, v0

    aput-byte v25, v23, v24

    const/16 v23, 0x1

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fOffset:I

    sub-int v23, v16, p2

    move/from16 v15, v16

    goto/16 :goto_0

    :cond_2e
    const/16 v23, 0x1

    const/16 v24, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-direct {v0, v1, v2, v4}, Lmf/org/apache/xerces/impl/io/UTF8Reader;->invalidByte(III)V

    move/from16 v15, v16

    goto/16 :goto_4
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

    const/4 v0, 0x0

    iput v0, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fOffset:I

    const/4 v0, -0x1

    iput v0, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fSurrogate:I

    return-void
.end method

.method public skip(J)J
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-wide v4, p1

    iget-object v3, p0, Lmf/org/apache/xerces/impl/io/UTF8Reader;->fBuffer:[B

    array-length v3, v3

    new-array v0, v3, [C

    :cond_0
    array-length v3, v0

    int-to-long v8, v3

    cmp-long v3, v8, v4

    if-gez v3, :cond_2

    array-length v2, v0

    :goto_0
    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3, v2}, Lmf/org/apache/xerces/impl/io/UTF8Reader;->read([CII)I

    move-result v1

    if-lez v1, :cond_1

    int-to-long v8, v1

    sub-long/2addr v4, v8

    const-wide/16 v8, 0x0

    cmp-long v3, v4, v8

    if-gtz v3, :cond_0

    :cond_1
    sub-long v6, p1, v4

    return-wide v6

    :cond_2
    long-to-int v2, v4

    goto :goto_0
.end method

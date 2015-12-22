.class public final Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;
.super Ljava/io/InputStream;
.source "XMLEntityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/impl/XMLEntityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x14
    name = "RewindableInputStream"
.end annotation


# instance fields
.field private fData:[B

.field private fEndOffset:I

.field private fInputStream:Ljava/io/InputStream;

.field private fLength:I

.field private fMark:I

.field private fOffset:I

.field private fStartOffset:I

.field final synthetic this$0:Lmf/org/apache/xerces/impl/XMLEntityManager;


# direct methods
.method public constructor <init>(Lmf/org/apache/xerces/impl/XMLEntityManager;Ljava/io/InputStream;)V
    .locals 2

    const/4 v1, 0x0

    iput-object p1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->this$0:Lmf/org/apache/xerces/impl/XMLEntityManager;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/16 v0, 0x40

    new-array v0, v0, [B

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fData:[B

    iput-object p2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fInputStream:Ljava/io/InputStream;

    iput v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fStartOffset:I

    const/4 v0, -0x1

    iput v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fEndOffset:I

    iput v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fOffset:I

    iput v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fLength:I

    iput v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fMark:I

    return-void
.end method


# virtual methods
.method public available()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fLength:I

    iget v2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fOffset:I

    sub-int v0, v1, v2

    if-nez v0, :cond_2

    iget v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fOffset:I

    iget v2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fEndOffset:I

    if-ne v1, v2, :cond_0

    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->this$0:Lmf/org/apache/xerces/impl/XMLEntityManager;

    iget-object v1, v1, Lmf/org/apache/xerces/impl/XMLEntityManager;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-boolean v1, v1, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->mayReadChunks:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    move v1, v0

    goto :goto_0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fInputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fInputStream:Ljava/io/InputStream;

    :cond_0
    return-void
.end method

.method public mark(I)V
    .locals 1

    iget v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fOffset:I

    iput v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fMark:I

    return-void
.end method

.method public markSupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fOffset:I

    iget v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fLength:I

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fData:[B

    iget v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fOffset:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fOffset:I

    iget v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fEndOffset:I

    if-ne v0, v1, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->this$0:Lmf/org/apache/xerces/impl/XMLEntityManager;

    iget-object v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-boolean v0, v0, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->mayReadChunks:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->readAndBuffer()I

    move-result v0

    goto :goto_0
.end method

.method public read([BII)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, -0x1

    iget v3, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fLength:I

    iget v4, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fOffset:I

    sub-int v0, v3, v4

    if-nez v0, :cond_3

    iget v3, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fOffset:I

    iget v4, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fEndOffset:I

    if-ne v3, v4, :cond_0

    :goto_0
    return v2

    :cond_0
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->this$0:Lmf/org/apache/xerces/impl/XMLEntityManager;

    iget-object v3, v3, Lmf/org/apache/xerces/impl/XMLEntityManager;->fCurrentEntity:Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;

    iget-boolean v3, v3, Lmf/org/apache/xerces/impl/XMLEntityManager$ScannedEntity;->mayReadChunks:Z

    if-eqz v3, :cond_1

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v2, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->readAndBuffer()I

    move-result v1

    if-ne v1, v2, :cond_2

    iget v3, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fOffset:I

    iput v3, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fEndOffset:I

    goto :goto_0

    :cond_2
    int-to-byte v2, v1

    aput-byte v2, p1, p2

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    if-ge p3, v0, :cond_4

    if-gtz p3, :cond_5

    const/4 v2, 0x0

    goto :goto_0

    :cond_4
    move p3, v0

    :cond_5
    if-eqz p1, :cond_6

    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fData:[B

    iget v3, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fOffset:I

    invoke-static {v2, v3, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_6
    iget v2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fOffset:I

    add-int/2addr v2, p3

    iput v2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fOffset:I

    move v2, p3

    goto :goto_0
.end method

.method public readAndBuffer()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v2, -0x1

    iget v3, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fOffset:I

    iget-object v4, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fData:[B

    array-length v4, v4

    if-ne v3, v4, :cond_0

    iget v3, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fOffset:I

    shl-int/lit8 v3, v3, 0x1

    new-array v1, v3, [B

    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fData:[B

    iget v4, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fOffset:I

    invoke-static {v3, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fData:[B

    :cond_0
    iget-object v3, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v0

    if-ne v0, v2, :cond_1

    iget v3, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fOffset:I

    iput v3, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fEndOffset:I

    :goto_0
    return v2

    :cond_1
    iget-object v2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fData:[B

    iget v3, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fLength:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fLength:I

    int-to-byte v4, v0

    aput-byte v4, v2, v3

    iget v2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fOffset:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fOffset:I

    and-int/lit16 v2, v0, 0xff

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    iget v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fMark:I

    iput v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fOffset:I

    return-void
.end method

.method public rewind()V
    .locals 1

    iget v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fStartOffset:I

    iput v0, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fOffset:I

    return-void
.end method

.method public setStartOffset(I)V
    .locals 0

    iput p1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fStartOffset:I

    return-void
.end method

.method public skip(J)J
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-gtz v1, :cond_1

    :cond_0
    :goto_0
    return-wide v2

    :cond_1
    iget v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fLength:I

    iget v4, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fOffset:I

    sub-int v0, v1, v4

    if-nez v0, :cond_2

    iget v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fOffset:I

    iget v4, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fEndOffset:I

    if-eq v1, v4, :cond_0

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v1, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v2

    goto :goto_0

    :cond_2
    int-to-long v2, v0

    cmp-long v1, p1, v2

    if-gtz v1, :cond_3

    iget v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fOffset:I

    int-to-long v2, v1

    add-long/2addr v2, p1

    long-to-int v1, v2

    iput v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fOffset:I

    move-wide v2, p1

    goto :goto_0

    :cond_3
    iget v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fOffset:I

    add-int/2addr v1, v0

    iput v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fOffset:I

    iget v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fOffset:I

    iget v2, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fEndOffset:I

    if-ne v1, v2, :cond_4

    int-to-long v2, v0

    goto :goto_0

    :cond_4
    int-to-long v2, v0

    sub-long/2addr p1, v2

    iget-object v1, p0, Lmf/org/apache/xerces/impl/XMLEntityManager$RewindableInputStream;->fInputStream:Ljava/io/InputStream;

    invoke-virtual {v1, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v2

    int-to-long v4, v0

    add-long/2addr v2, v4

    goto :goto_0
.end method

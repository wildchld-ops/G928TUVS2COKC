.class final Lmf/org/apache/xerces/impl/dv/xs/Base64BinaryDV$XBase64;
.super Lmf/org/apache/xerces/impl/dv/util/ByteListImpl;
.source "Base64BinaryDV.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/impl/dv/xs/Base64BinaryDV;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "XBase64"
.end annotation


# direct methods
.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/dv/util/ByteListImpl;-><init>([B)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v3, 0x0

    instance-of v4, p1, Lmf/org/apache/xerces/impl/dv/xs/Base64BinaryDV$XBase64;

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    check-cast p1, Lmf/org/apache/xerces/impl/dv/xs/Base64BinaryDV$XBase64;

    iget-object v2, p1, Lmf/org/apache/xerces/impl/dv/xs/Base64BinaryDV$XBase64;->data:[B

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/Base64BinaryDV$XBase64;->data:[B

    array-length v1, v4

    array-length v4, v2

    if-ne v1, v4, :cond_0

    const/4 v0, 0x0

    :goto_1
    if-lt v0, v1, :cond_2

    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/Base64BinaryDV$XBase64;->data:[B

    aget-byte v4, v4, v0

    aget-byte v5, v2, v0

    if-ne v4, v5, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public hashCode()I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dv/xs/Base64BinaryDV$XBase64;->data:[B

    array-length v2, v2

    if-lt v1, v2, :cond_0

    return v0

    :cond_0
    mul-int/lit8 v2, v0, 0x25

    iget-object v3, p0, Lmf/org/apache/xerces/impl/dv/xs/Base64BinaryDV$XBase64;->data:[B

    aget-byte v3, v3, v1

    and-int/lit16 v3, v3, 0xff

    add-int v0, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/Base64BinaryDV$XBase64;->canonical:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/Base64BinaryDV$XBase64;->data:[B

    invoke-static {v0}, Lmf/org/apache/xerces/impl/dv/util/Base64;->encode([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/Base64BinaryDV$XBase64;->canonical:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/Base64BinaryDV$XBase64;->canonical:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

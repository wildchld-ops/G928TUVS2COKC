.class public Lmf/org/apache/xerces/dom/DeferredDocumentImpl;
.super Lmf/org/apache/xerces/dom/DocumentImpl;
.source "DeferredDocumentImpl.java"

# interfaces
.implements Lmf/org/apache/xerces/dom/DeferredNode;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xerces/dom/DeferredDocumentImpl$IntVector;,
        Lmf/org/apache/xerces/dom/DeferredDocumentImpl$RefCount;
    }
.end annotation


# static fields
.field protected static final CHUNK_MASK:I = 0x7ff

.field protected static final CHUNK_SHIFT:I = 0xb

.field protected static final CHUNK_SIZE:I = 0x800

.field private static final DEBUG_IDS:Z = false

.field private static final DEBUG_PRINT_REF_COUNTS:Z = false

.field private static final DEBUG_PRINT_TABLES:Z = false

.field protected static final INITIAL_CHUNK_COUNT:I = 0x20

.field private static final INIT_ARRAY:[I

.field static final serialVersionUID:J = 0x47f985d180d03de9L


# instance fields
.field private final transient fBufferStr:Ljava/lang/StringBuffer;

.field protected transient fIdCount:I

.field protected transient fIdElement:[I

.field protected transient fIdName:[Ljava/lang/String;

.field protected fNamespacesEnabled:Z

.field protected transient fNodeCount:I

.field protected transient fNodeExtra:[[I

.field protected transient fNodeLastChild:[[I

.field protected transient fNodeName:[[Ljava/lang/Object;

.field protected transient fNodeParent:[[I

.field protected transient fNodePrevSib:[[I

.field protected transient fNodeType:[[I

.field protected transient fNodeURI:[[Ljava/lang/Object;

.field protected transient fNodeValue:[[Ljava/lang/Object;

.field private final transient fStrChunks:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v1, 0x801

    new-array v1, v1, [I

    sput-object v1, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->INIT_ARRAY:[I

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x800

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    sget-object v1, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->INIT_ARRAY:[I

    const/4 v2, -0x1

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;-><init>(ZZ)V

    return-void
.end method

.method public constructor <init>(ZZ)V
    .locals 2

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, p2}, Lmf/org/apache/xerces/dom/DocumentImpl;-><init>(Z)V

    iput v0, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeCount:I

    iput-boolean v0, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNamespacesEnabled:Z

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fBufferStr:Ljava/lang/StringBuffer;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fStrChunks:Ljava/util/ArrayList;

    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->needsSyncData(Z)V

    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->needsSyncChildren(Z)V

    iput-boolean p1, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNamespacesEnabled:Z

    return-void
.end method

.method protected static binarySearch([IIII)I
    .locals 3

    :goto_0
    if-le p1, p2, :cond_1

    const/4 v0, -0x1

    :cond_0
    return v0

    :cond_1
    add-int v2, p1, p2

    ushr-int/lit8 v0, v2, 0x1

    aget v1, p0, v0

    if-ne v1, p3, :cond_2

    :goto_1
    if-lez v0, :cond_0

    add-int/lit8 v2, v0, -0x1

    aget v2, p0, v2

    if-ne v2, p3, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_2
    if-le v1, p3, :cond_3

    add-int/lit8 p2, v0, -0x1

    goto :goto_0

    :cond_3
    add-int/lit8 p1, v0, 0x1

    goto :goto_0
.end method

.method private final clearChunkIndex([[III)I
    .locals 5

    const/16 v4, 0x800

    const/4 v1, -0x1

    aget-object v2, p1, p2

    if-eqz v2, :cond_1

    aget-object v2, p1, p2

    aget v0, v2, p3

    :goto_0
    if-eq v0, v1, :cond_0

    aget-object v2, p1, p2

    aget v3, v2, v4

    add-int/lit8 v3, v3, -0x1

    aput v3, v2, v4

    aget-object v2, p1, p2

    aput v1, v2, p3

    aget-object v1, p1, p2

    aget v1, v1, v4

    if-nez v1, :cond_0

    const/4 v1, 0x0

    aput-object v1, p1, p2

    :cond_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private final clearChunkValue([[Ljava/lang/Object;II)Ljava/lang/String;
    .locals 5

    const/4 v3, 0x0

    aget-object v2, p1, p2

    if-eqz v2, :cond_1

    aget-object v2, p1, p2

    aget-object v2, v2, p3

    check-cast v2, Ljava/lang/String;

    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_0

    aget-object v2, p1, p2

    aput-object v3, v2, p3

    aget-object v2, p1, p2

    const/16 v4, 0x800

    aget-object v0, v2, v4

    check-cast v0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl$RefCount;

    iget v2, v0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl$RefCount;->fCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, v0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl$RefCount;->fCount:I

    iget v2, v0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl$RefCount;->fCount:I

    if-nez v2, :cond_0

    aput-object v3, p1, p2

    :cond_0
    return-object v1

    :cond_1
    move-object v1, v3

    goto :goto_0
.end method

.method private final createChunk([[II)V
    .locals 4

    const/4 v3, 0x0

    const/16 v0, 0x801

    new-array v0, v0, [I

    aput-object v0, p1, p2

    sget-object v0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->INIT_ARRAY:[I

    aget-object v1, p1, p2

    const/16 v2, 0x800

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method private final createChunk([[Ljava/lang/Object;I)V
    .locals 3

    const/16 v0, 0x801

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v0, p1, p2

    aget-object v0, p1, p2

    const/16 v1, 0x800

    new-instance v2, Lmf/org/apache/xerces/dom/DeferredDocumentImpl$RefCount;

    invoke-direct {v2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl$RefCount;-><init>()V

    aput-object v2, v0, v1

    return-void
.end method

.method private final getChunkIndex([[III)I
    .locals 1

    aget-object v0, p1, p2

    if-eqz v0, :cond_0

    aget-object v0, p1, p2

    aget v0, v0, p3

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private final getChunkValue([[Ljava/lang/Object;II)Ljava/lang/String;
    .locals 1

    aget-object v0, p1, p2

    if-eqz v0, :cond_0

    aget-object v0, p1, p2

    aget-object v0, v0, p3

    check-cast v0, Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final getNodeValue(II)Ljava/lang/String;
    .locals 2

    iget-object v1, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    aget-object v1, v1, p1

    aget-object v0, v1, p2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static print([IIIII)V
    .locals 0

    return-void
.end method

.method private final putIdentifier0(Ljava/lang/String;Lmf/org/w3c/dom/Element;)V
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->identifiers:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->identifiers:Ljava/util/Hashtable;

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->identifiers:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final setChunkIndex([[IIII)I
    .locals 4

    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    invoke-direct {p0, p1, p3, p4}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->clearChunkIndex([[III)I

    move-result v1

    :goto_0
    return v1

    :cond_0
    aget-object v0, p1, p3

    if-nez v0, :cond_1

    invoke-direct {p0, p1, p3}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->createChunk([[II)V

    aget-object v0, p1, p3

    :cond_1
    aget v1, v0, p4

    if-ne v1, v2, :cond_2

    const/16 v2, 0x800

    aget v3, v0, v2

    add-int/lit8 v3, v3, 0x1

    aput v3, v0, v2

    :cond_2
    aput p2, v0, p4

    goto :goto_0
.end method

.method private final setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;
    .locals 4

    if-nez p2, :cond_0

    invoke-direct {p0, p1, p3, p4}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->clearChunkValue([[Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    aget-object v1, p1, p3

    if-nez v1, :cond_1

    invoke-direct {p0, p1, p3}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->createChunk([[Ljava/lang/Object;I)V

    aget-object v1, p1, p3

    :cond_1
    aget-object v2, v1, p4

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_2

    const/16 v3, 0x800

    aget-object v0, v1, v3

    check-cast v0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl$RefCount;

    iget v3, v0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl$RefCount;->fCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl$RefCount;->fCount:I

    :cond_2
    aput-object p2, v1, p4

    goto :goto_0
.end method


# virtual methods
.method public appendChild(II)V
    .locals 6

    shr-int/lit8 v3, p1, 0xb

    and-int/lit16 v4, p1, 0x7ff

    shr-int/lit8 v0, p2, 0xb

    and-int/lit16 v1, p2, 0x7ff

    iget-object v5, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeParent:[[I

    invoke-direct {p0, v5, p1, v0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkIndex([[IIII)I

    iget-object v5, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeLastChild:[[I

    invoke-direct {p0, v5, v3, v4}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getChunkIndex([[III)I

    move-result v2

    iget-object v5, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodePrevSib:[[I

    invoke-direct {p0, v5, v2, v0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkIndex([[IIII)I

    iget-object v5, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeLastChild:[[I

    invoke-direct {p0, v5, p2, v3, v4}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkIndex([[IIII)I

    return-void
.end method

.method public cloneNode(IZ)I
    .locals 12

    shr-int/lit8 v6, p1, 0xb

    and-int/lit16 v7, p1, 0x7ff

    iget-object v10, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeType:[[I

    aget-object v10, v10, v6

    aget v8, v10, v7

    int-to-short v10, v8

    invoke-virtual {p0, v10}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->createNode(S)I

    move-result v3

    shr-int/lit8 v0, v3, 0xb

    and-int/lit16 v2, v3, 0x7ff

    iget-object v10, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeName:[[Ljava/lang/Object;

    iget-object v11, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeName:[[Ljava/lang/Object;

    aget-object v11, v11, v6

    aget-object v11, v11, v7

    invoke-direct {p0, v10, v11, v0, v2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    iget-object v10, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    iget-object v11, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    aget-object v11, v11, v6

    aget-object v11, v11, v7

    invoke-direct {p0, v10, v11, v0, v2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    iget-object v10, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeURI:[[Ljava/lang/Object;

    iget-object v11, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeURI:[[Ljava/lang/Object;

    aget-object v11, v11, v6

    aget-object v11, v11, v7

    invoke-direct {p0, v10, v11, v0, v2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    iget-object v10, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeExtra:[[I

    aget-object v10, v10, v6

    aget v5, v10, v7

    const/4 v10, -0x1

    if-eq v5, v10, :cond_1

    const/4 v10, 0x2

    if-eq v8, v10, :cond_0

    const/4 v10, 0x3

    if-eq v8, v10, :cond_0

    const/4 v10, 0x0

    invoke-virtual {p0, v5, v10}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->cloneNode(IZ)I

    move-result v5

    :cond_0
    iget-object v10, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeExtra:[[I

    invoke-direct {p0, v10, v5, v0, v2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkIndex([[IIII)I

    :cond_1
    if-eqz p2, :cond_2

    const/4 v9, -0x1

    const/4 v10, 0x0

    invoke-virtual {p0, p1, v10}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getLastChild(IZ)I

    move-result v1

    :goto_0
    const/4 v10, -0x1

    if-ne v1, v10, :cond_3

    :cond_2
    return v3

    :cond_3
    invoke-virtual {p0, v1, p2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->cloneNode(IZ)I

    move-result v4

    invoke-virtual {p0, v3, v4, v9}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->insertBefore(III)I

    move v9, v4

    const/4 v10, 0x0

    invoke-virtual {p0, v1, v10}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getRealPrevSibling(IZ)I

    move-result v1

    goto :goto_0
.end method

.method public createDeferredAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 5

    const/4 v4, 0x2

    invoke-virtual {p0, v4}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->createNode(S)I

    move-result v3

    shr-int/lit8 v0, v3, 0xb

    and-int/lit16 v2, v3, 0x7ff

    iget-object v4, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeName:[[Ljava/lang/Object;

    invoke-direct {p0, v4, p1, v0, v2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    iget-object v4, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeURI:[[Ljava/lang/Object;

    invoke-direct {p0, v4, p2, v0, v2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    iget-object v4, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    invoke-direct {p0, v4, p3, v0, v2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    if-eqz p4, :cond_0

    const/16 v1, 0x20

    :goto_0
    iget-object v4, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeExtra:[[I

    invoke-direct {p0, v4, v1, v0, v2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkIndex([[IIII)I

    return v3

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public createDeferredAttribute(Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2, p3}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->createDeferredAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v0

    return v0
.end method

.method public createDeferredCDATASection(Ljava/lang/String;)I
    .locals 4

    const/4 v3, 0x4

    invoke-virtual {p0, v3}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->createNode(S)I

    move-result v2

    shr-int/lit8 v0, v2, 0xb

    and-int/lit16 v1, v2, 0x7ff

    iget-object v3, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    invoke-direct {p0, v3, p1, v0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    return v2
.end method

.method public createDeferredComment(Ljava/lang/String;)I
    .locals 4

    const/16 v3, 0x8

    invoke-virtual {p0, v3}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->createNode(S)I

    move-result v2

    shr-int/lit8 v0, v2, 0xb

    and-int/lit16 v1, v2, 0x7ff

    iget-object v3, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    invoke-direct {p0, v3, p1, v0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    return v2
.end method

.method public createDeferredDocument()I
    .locals 2

    const/16 v1, 0x9

    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->createNode(S)I

    move-result v0

    return v0
.end method

.method public createDeferredDocumentType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    const/16 v3, 0xa

    invoke-virtual {p0, v3}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->createNode(S)I

    move-result v2

    shr-int/lit8 v0, v2, 0xb

    and-int/lit16 v1, v2, 0x7ff

    iget-object v3, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeName:[[Ljava/lang/Object;

    invoke-direct {p0, v3, p1, v0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    iget-object v3, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    invoke-direct {p0, v3, p2, v0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    iget-object v3, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeURI:[[Ljava/lang/Object;

    invoke-direct {p0, v3, p3, v0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    return v2
.end method

.method public createDeferredElement(Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->createDeferredElement(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public createDeferredElement(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->createNode(S)I

    move-result v2

    shr-int/lit8 v0, v2, 0xb

    and-int/lit16 v1, v2, 0x7ff

    iget-object v3, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeName:[[Ljava/lang/Object;

    invoke-direct {p0, v3, p2, v0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    iget-object v3, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeURI:[[Ljava/lang/Object;

    invoke-direct {p0, v3, p1, v0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    return v2
.end method

.method public createDeferredElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)I
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->createNode(S)I

    move-result v2

    shr-int/lit8 v0, v2, 0xb

    and-int/lit16 v1, v2, 0x7ff

    iget-object v3, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeName:[[Ljava/lang/Object;

    invoke-direct {p0, v3, p2, v0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    iget-object v3, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeURI:[[Ljava/lang/Object;

    invoke-direct {p0, v3, p1, v0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    iget-object v3, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    invoke-direct {p0, v3, p3, v0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    return v2
.end method

.method public createDeferredElementDefinition(Ljava/lang/String;)I
    .locals 4

    const/16 v3, 0x15

    invoke-virtual {p0, v3}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->createNode(S)I

    move-result v2

    shr-int/lit8 v0, v2, 0xb

    and-int/lit16 v1, v2, 0x7ff

    iget-object v3, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeName:[[Ljava/lang/Object;

    invoke-direct {p0, v3, p1, v0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    return v2
.end method

.method public createDeferredEntity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 12

    const/4 v10, 0x6

    invoke-virtual {p0, v10}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->createNode(S)I

    move-result v9

    shr-int/lit8 v1, v9, 0xb

    and-int/lit16 v8, v9, 0x7ff

    const/4 v10, 0x6

    invoke-virtual {p0, v10}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->createNode(S)I

    move-result v6

    shr-int/lit8 v2, v6, 0xb

    and-int/lit16 v4, v6, 0x7ff

    iget-object v10, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeName:[[Ljava/lang/Object;

    invoke-direct {p0, v10, p1, v1, v8}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    iget-object v10, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    invoke-direct {p0, v10, p2, v1, v8}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    iget-object v10, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeURI:[[Ljava/lang/Object;

    invoke-direct {p0, v10, p3, v1, v8}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    iget-object v10, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeExtra:[[I

    invoke-direct {p0, v10, v6, v1, v8}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkIndex([[IIII)I

    iget-object v10, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeName:[[Ljava/lang/Object;

    move-object/from16 v0, p4

    invoke-direct {p0, v10, v0, v2, v4}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    iget-object v10, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-direct {p0, v10, v11, v2, v4}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    iget-object v10, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeURI:[[Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-direct {p0, v10, v11, v2, v4}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    const/4 v10, 0x6

    invoke-virtual {p0, v10}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->createNode(S)I

    move-result v7

    shr-int/lit8 v3, v7, 0xb

    and-int/lit16 v5, v7, 0x7ff

    iget-object v10, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeExtra:[[I

    invoke-direct {p0, v10, v7, v2, v4}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkIndex([[IIII)I

    iget-object v10, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeName:[[Ljava/lang/Object;

    move-object/from16 v0, p5

    invoke-direct {p0, v10, v0, v3, v5}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    return v9
.end method

.method public createDeferredEntityReference(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    const/4 v3, 0x5

    invoke-virtual {p0, v3}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->createNode(S)I

    move-result v2

    shr-int/lit8 v0, v2, 0xb

    and-int/lit16 v1, v2, 0x7ff

    iget-object v3, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeName:[[Ljava/lang/Object;

    invoke-direct {p0, v3, p1, v0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    iget-object v3, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    invoke-direct {p0, v3, p2, v0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    return v2
.end method

.method public createDeferredNotation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 7

    const/16 v6, 0xc

    invoke-virtual {p0, v6}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->createNode(S)I

    move-result v5

    shr-int/lit8 v0, v5, 0xb

    and-int/lit16 v4, v5, 0x7ff

    invoke-virtual {p0, v6}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->createNode(S)I

    move-result v3

    shr-int/lit8 v1, v3, 0xb

    and-int/lit16 v2, v3, 0x7ff

    iget-object v6, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeName:[[Ljava/lang/Object;

    invoke-direct {p0, v6, p1, v0, v4}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    iget-object v6, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    invoke-direct {p0, v6, p2, v0, v4}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    iget-object v6, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeURI:[[Ljava/lang/Object;

    invoke-direct {p0, v6, p3, v0, v4}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    iget-object v6, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeExtra:[[I

    invoke-direct {p0, v6, v3, v0, v4}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkIndex([[IIII)I

    iget-object v6, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeName:[[Ljava/lang/Object;

    invoke-direct {p0, v6, p4, v1, v2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    return v5
.end method

.method public createDeferredProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4

    const/4 v3, 0x7

    invoke-virtual {p0, v3}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->createNode(S)I

    move-result v2

    shr-int/lit8 v0, v2, 0xb

    and-int/lit16 v1, v2, 0x7ff

    iget-object v3, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeName:[[Ljava/lang/Object;

    invoke-direct {p0, v3, p1, v0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    iget-object v3, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    invoke-direct {p0, v3, p2, v0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    return v2
.end method

.method public createDeferredTextNode(Ljava/lang/String;Z)I
    .locals 5

    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->createNode(S)I

    move-result v2

    shr-int/lit8 v0, v2, 0xb

    and-int/lit16 v1, v2, 0x7ff

    iget-object v3, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    invoke-direct {p0, v3, p1, v0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    iget-object v4, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeExtra:[[I

    if-eqz p2, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-direct {p0, v4, v3, v0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkIndex([[IIII)I

    return v2

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method protected createNode(S)I
    .locals 4

    iget v2, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeCount:I

    shr-int/lit8 v0, v2, 0xb

    iget v2, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeCount:I

    and-int/lit16 v1, v2, 0x7ff

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->ensureCapacity(I)V

    iget-object v2, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeType:[[I

    invoke-direct {p0, v2, p1, v0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkIndex([[IIII)I

    iget v2, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeCount:I

    return v2
.end method

.method protected ensureCapacity(I)V
    .locals 6

    const/16 v5, 0x20

    const/4 v4, 0x0

    iget-object v3, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeType:[[I

    if-nez v3, :cond_1

    new-array v3, v5, [[I

    iput-object v3, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeType:[[I

    new-array v3, v5, [[Ljava/lang/Object;

    iput-object v3, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeName:[[Ljava/lang/Object;

    new-array v3, v5, [[Ljava/lang/Object;

    iput-object v3, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    new-array v3, v5, [[I

    iput-object v3, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeParent:[[I

    new-array v3, v5, [[I

    iput-object v3, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeLastChild:[[I

    new-array v3, v5, [[I

    iput-object v3, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodePrevSib:[[I

    new-array v3, v5, [[Ljava/lang/Object;

    iput-object v3, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeURI:[[Ljava/lang/Object;

    new-array v3, v5, [[I

    iput-object v3, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeExtra:[[I

    :cond_0
    :goto_0
    iget-object v3, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeType:[[I

    invoke-direct {p0, v3, p1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->createChunk([[II)V

    iget-object v3, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeName:[[Ljava/lang/Object;

    invoke-direct {p0, v3, p1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->createChunk([[Ljava/lang/Object;I)V

    iget-object v3, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    invoke-direct {p0, v3, p1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->createChunk([[Ljava/lang/Object;I)V

    iget-object v3, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeParent:[[I

    invoke-direct {p0, v3, p1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->createChunk([[II)V

    iget-object v3, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeLastChild:[[I

    invoke-direct {p0, v3, p1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->createChunk([[II)V

    iget-object v3, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodePrevSib:[[I

    invoke-direct {p0, v3, p1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->createChunk([[II)V

    iget-object v3, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeURI:[[Ljava/lang/Object;

    invoke-direct {p0, v3, p1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->createChunk([[Ljava/lang/Object;I)V

    iget-object v3, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeExtra:[[I

    invoke-direct {p0, v3, p1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->createChunk([[II)V

    :goto_1
    return-void

    :cond_1
    iget-object v3, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeType:[[I

    array-length v3, v3

    if-gt v3, p1, :cond_2

    mul-int/lit8 v2, p1, 0x2

    new-array v0, v2, [[I

    iget-object v3, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeType:[[I

    invoke-static {v3, v4, v0, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeType:[[I

    new-array v1, v2, [[Ljava/lang/Object;

    iget-object v3, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeName:[[Ljava/lang/Object;

    invoke-static {v3, v4, v1, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeName:[[Ljava/lang/Object;

    new-array v1, v2, [[Ljava/lang/Object;

    iget-object v3, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    invoke-static {v3, v4, v1, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    new-array v0, v2, [[I

    iget-object v3, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeParent:[[I

    invoke-static {v3, v4, v0, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeParent:[[I

    new-array v0, v2, [[I

    iget-object v3, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeLastChild:[[I

    invoke-static {v3, v4, v0, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeLastChild:[[I

    new-array v0, v2, [[I

    iget-object v3, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodePrevSib:[[I

    invoke-static {v3, v4, v0, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodePrevSib:[[I

    new-array v1, v2, [[Ljava/lang/Object;

    iget-object v3, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeURI:[[Ljava/lang/Object;

    invoke-static {v3, v4, v1, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeURI:[[Ljava/lang/Object;

    new-array v0, v2, [[I

    iget-object v3, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeExtra:[[I

    invoke-static {v3, v4, v0, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeExtra:[[I

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeType:[[I

    aget-object v3, v3, p1

    if-eqz v3, :cond_0

    goto :goto_1
.end method

.method public getAttribute(ILjava/lang/String;)Ljava/lang/String;
    .locals 8

    const/4 v5, 0x0

    const/4 v7, -0x1

    if-eq p1, v7, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-object v5

    :cond_1
    shr-int/lit8 v3, p1, 0xb

    and-int/lit16 v4, p1, 0x7ff

    iget-object v6, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeExtra:[[I

    invoke-direct {p0, v6, v3, v4}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getChunkIndex([[III)I

    move-result v2

    :goto_1
    if-eq v2, v7, :cond_0

    shr-int/lit8 v0, v2, 0xb

    and-int/lit16 v1, v2, 0x7ff

    iget-object v6, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeName:[[Ljava/lang/Object;

    invoke-direct {p0, v6, v0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getChunkValue([[Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v6

    if-ne v6, p2, :cond_2

    iget-object v5, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    invoke-direct {p0, v5, v0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getChunkValue([[Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_2
    iget-object v6, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodePrevSib:[[I

    invoke-direct {p0, v6, v0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getChunkIndex([[III)I

    move-result v2

    goto :goto_1
.end method

.method public getDeferredEntityBaseURI(I)Ljava/lang/String;
    .locals 3

    const/4 v2, 0x0

    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    invoke-virtual {p0, p1, v2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeExtra(IZ)I

    move-result v0

    invoke-virtual {p0, v0, v2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeExtra(IZ)I

    move-result v0

    invoke-virtual {p0, v0, v2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeName(IZ)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getImplementation()Lmf/org/w3c/dom/DOMImplementation;
    .locals 1

    invoke-static {}, Lmf/org/apache/xerces/dom/DeferredDOMImplementationImpl;->getDOMImplementation()Lmf/org/w3c/dom/DOMImplementation;

    move-result-object v0

    return-object v0
.end method

.method public getLastChild(I)I
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getLastChild(IZ)I

    move-result v0

    return v0
.end method

.method public getLastChild(IZ)I
    .locals 3

    const/4 v2, -0x1

    if-ne p1, v2, :cond_0

    :goto_0
    return v2

    :cond_0
    shr-int/lit8 v0, p1, 0xb

    and-int/lit16 v1, p1, 0x7ff

    if-eqz p2, :cond_1

    iget-object v2, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeLastChild:[[I

    invoke-direct {p0, v2, v0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->clearChunkIndex([[III)I

    move-result v2

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeLastChild:[[I

    invoke-direct {p0, v2, v0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getChunkIndex([[III)I

    move-result v2

    goto :goto_0
.end method

.method getNamespacesEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNamespacesEnabled:Z

    return v0
.end method

.method public getNodeExtra(I)I
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeExtra(IZ)I

    move-result v0

    return v0
.end method

.method public getNodeExtra(IZ)I
    .locals 3

    const/4 v2, -0x1

    if-ne p1, v2, :cond_0

    :goto_0
    return v2

    :cond_0
    shr-int/lit8 v0, p1, 0xb

    and-int/lit16 v1, p1, 0x7ff

    if-eqz p2, :cond_1

    iget-object v2, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeExtra:[[I

    invoke-direct {p0, v2, v0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->clearChunkIndex([[III)I

    move-result v2

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeExtra:[[I

    invoke-direct {p0, v2, v0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getChunkIndex([[III)I

    move-result v2

    goto :goto_0
.end method

.method public getNodeIndex()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getNodeName(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeName(IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNodeName(IZ)Ljava/lang/String;
    .locals 3

    const/4 v2, -0x1

    if-ne p1, v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    shr-int/lit8 v0, p1, 0xb

    and-int/lit16 v1, p1, 0x7ff

    if-eqz p2, :cond_1

    iget-object v2, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeName:[[Ljava/lang/Object;

    invoke-direct {p0, v2, v0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->clearChunkValue([[Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeName:[[Ljava/lang/Object;

    invoke-direct {p0, v2, v0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getChunkValue([[Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public getNodeObject(I)Lmf/org/apache/xerces/dom/DeferredNode;
    .locals 11

    const/4 v7, 0x0

    const/4 v10, -0x1

    if-ne p1, v10, :cond_1

    move-object v4, v7

    :cond_0
    return-object v4

    :cond_1
    shr-int/lit8 v0, p1, 0xb

    and-int/lit16 v2, p1, 0x7ff

    iget-object v6, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeType:[[I

    invoke-direct {p0, v6, v0, v2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getChunkIndex([[III)I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_2

    const/4 v6, 0x4

    if-eq v5, v6, :cond_2

    iget-object v6, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeType:[[I

    invoke-direct {p0, v6, v0, v2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->clearChunkIndex([[III)I

    :cond_2
    const/4 v4, 0x0

    packed-switch v5, :pswitch_data_0

    :pswitch_0
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "type: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :pswitch_1
    iget-boolean v6, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNamespacesEnabled:Z

    if-eqz v6, :cond_4

    new-instance v4, Lmf/org/apache/xerces/dom/DeferredAttrNSImpl;

    invoke-direct {v4, p0, p1}, Lmf/org/apache/xerces/dom/DeferredAttrNSImpl;-><init>(Lmf/org/apache/xerces/dom/DeferredDocumentImpl;I)V

    :cond_3
    :goto_0
    if-nez v4, :cond_0

    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-direct {v6}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v6

    :cond_4
    new-instance v4, Lmf/org/apache/xerces/dom/DeferredAttrImpl;

    invoke-direct {v4, p0, p1}, Lmf/org/apache/xerces/dom/DeferredAttrImpl;-><init>(Lmf/org/apache/xerces/dom/DeferredDocumentImpl;I)V

    goto :goto_0

    :pswitch_2
    new-instance v4, Lmf/org/apache/xerces/dom/DeferredCDATASectionImpl;

    invoke-direct {v4, p0, p1}, Lmf/org/apache/xerces/dom/DeferredCDATASectionImpl;-><init>(Lmf/org/apache/xerces/dom/DeferredDocumentImpl;I)V

    goto :goto_0

    :pswitch_3
    new-instance v4, Lmf/org/apache/xerces/dom/DeferredCommentImpl;

    invoke-direct {v4, p0, p1}, Lmf/org/apache/xerces/dom/DeferredCommentImpl;-><init>(Lmf/org/apache/xerces/dom/DeferredDocumentImpl;I)V

    goto :goto_0

    :pswitch_4
    move-object v4, p0

    goto :goto_0

    :pswitch_5
    new-instance v4, Lmf/org/apache/xerces/dom/DeferredDocumentTypeImpl;

    invoke-direct {v4, p0, p1}, Lmf/org/apache/xerces/dom/DeferredDocumentTypeImpl;-><init>(Lmf/org/apache/xerces/dom/DeferredDocumentImpl;I)V

    move-object v6, v4

    check-cast v6, Lmf/org/apache/xerces/dom/DocumentTypeImpl;

    iput-object v6, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->docType:Lmf/org/apache/xerces/dom/DocumentTypeImpl;

    goto :goto_0

    :pswitch_6
    iget-boolean v6, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNamespacesEnabled:Z

    if-eqz v6, :cond_6

    new-instance v4, Lmf/org/apache/xerces/dom/DeferredElementNSImpl;

    invoke-direct {v4, p0, p1}, Lmf/org/apache/xerces/dom/DeferredElementNSImpl;-><init>(Lmf/org/apache/xerces/dom/DeferredDocumentImpl;I)V

    :goto_1
    iget-object v6, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fIdElement:[I

    if-eqz v6, :cond_3

    iget-object v6, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fIdElement:[I

    const/4 v8, 0x0

    iget v9, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fIdCount:I

    add-int/lit8 v9, v9, -0x1

    invoke-static {v6, v8, v9, p1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->binarySearch([IIII)I

    move-result v1

    :goto_2
    if-eq v1, v10, :cond_3

    iget-object v6, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fIdName:[Ljava/lang/String;

    aget-object v3, v6, v1

    if-eqz v3, :cond_5

    move-object v6, v4

    check-cast v6, Lmf/org/w3c/dom/Element;

    invoke-direct {p0, v3, v6}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->putIdentifier0(Ljava/lang/String;Lmf/org/w3c/dom/Element;)V

    iget-object v6, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fIdName:[Ljava/lang/String;

    aput-object v7, v6, v1

    :cond_5
    add-int/lit8 v6, v1, 0x1

    iget v8, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fIdCount:I

    if-ge v6, v8, :cond_7

    iget-object v6, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fIdElement:[I

    add-int/lit8 v8, v1, 0x1

    aget v6, v6, v8

    if-ne v6, p1, :cond_7

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    new-instance v4, Lmf/org/apache/xerces/dom/DeferredElementImpl;

    invoke-direct {v4, p0, p1}, Lmf/org/apache/xerces/dom/DeferredElementImpl;-><init>(Lmf/org/apache/xerces/dom/DeferredDocumentImpl;I)V

    goto :goto_1

    :cond_7
    const/4 v1, -0x1

    goto :goto_2

    :pswitch_7
    new-instance v4, Lmf/org/apache/xerces/dom/DeferredEntityImpl;

    invoke-direct {v4, p0, p1}, Lmf/org/apache/xerces/dom/DeferredEntityImpl;-><init>(Lmf/org/apache/xerces/dom/DeferredDocumentImpl;I)V

    goto :goto_0

    :pswitch_8
    new-instance v4, Lmf/org/apache/xerces/dom/DeferredEntityReferenceImpl;

    invoke-direct {v4, p0, p1}, Lmf/org/apache/xerces/dom/DeferredEntityReferenceImpl;-><init>(Lmf/org/apache/xerces/dom/DeferredDocumentImpl;I)V

    goto :goto_0

    :pswitch_9
    new-instance v4, Lmf/org/apache/xerces/dom/DeferredNotationImpl;

    invoke-direct {v4, p0, p1}, Lmf/org/apache/xerces/dom/DeferredNotationImpl;-><init>(Lmf/org/apache/xerces/dom/DeferredDocumentImpl;I)V

    goto :goto_0

    :pswitch_a
    new-instance v4, Lmf/org/apache/xerces/dom/DeferredProcessingInstructionImpl;

    invoke-direct {v4, p0, p1}, Lmf/org/apache/xerces/dom/DeferredProcessingInstructionImpl;-><init>(Lmf/org/apache/xerces/dom/DeferredDocumentImpl;I)V

    goto/16 :goto_0

    :pswitch_b
    new-instance v4, Lmf/org/apache/xerces/dom/DeferredTextImpl;

    invoke-direct {v4, p0, p1}, Lmf/org/apache/xerces/dom/DeferredTextImpl;-><init>(Lmf/org/apache/xerces/dom/DeferredDocumentImpl;I)V

    goto/16 :goto_0

    :pswitch_c
    new-instance v4, Lmf/org/apache/xerces/dom/DeferredElementDefinitionImpl;

    invoke-direct {v4, p0, p1}, Lmf/org/apache/xerces/dom/DeferredElementDefinitionImpl;-><init>(Lmf/org/apache/xerces/dom/DeferredDocumentImpl;I)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_1
        :pswitch_b
        :pswitch_2
        :pswitch_8
        :pswitch_7
        :pswitch_a
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_c
    .end packed-switch
.end method

.method public getNodeType(I)S
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeType(IZ)S

    move-result v0

    return v0
.end method

.method public getNodeType(IZ)S
    .locals 3

    const/4 v2, -0x1

    if-ne p1, v2, :cond_0

    :goto_0
    return v2

    :cond_0
    shr-int/lit8 v0, p1, 0xb

    and-int/lit16 v1, p1, 0x7ff

    if-eqz p2, :cond_1

    iget-object v2, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeType:[[I

    invoke-direct {p0, v2, v0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->clearChunkIndex([[III)I

    move-result v2

    int-to-short v2, v2

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeType:[[I

    invoke-direct {p0, v2, v0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getChunkIndex([[III)I

    move-result v2

    int-to-short v2, v2

    goto :goto_0
.end method

.method public getNodeURI(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeURI(IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNodeURI(IZ)Ljava/lang/String;
    .locals 3

    const/4 v2, -0x1

    if-ne p1, v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    shr-int/lit8 v0, p1, 0xb

    and-int/lit16 v1, p1, 0x7ff

    if-eqz p2, :cond_1

    iget-object v2, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeURI:[[Ljava/lang/Object;

    invoke-direct {p0, v2, v0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->clearChunkValue([[Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeURI:[[Ljava/lang/Object;

    invoke-direct {p0, v2, v0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getChunkValue([[Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public getNodeValue(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeValue(IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNodeValue(IZ)Ljava/lang/String;
    .locals 3

    const/4 v2, -0x1

    if-ne p1, v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_0
    shr-int/lit8 v0, p1, 0xb

    and-int/lit16 v1, p1, 0x7ff

    if-eqz p2, :cond_1

    iget-object v2, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    invoke-direct {p0, v2, v0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->clearChunkValue([[Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    invoke-direct {p0, v2, v0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getChunkValue([[Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public getNodeValueString(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeValueString(IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNodeValueString(IZ)Ljava/lang/String;
    .locals 13

    const/4 v8, 0x0

    const/4 v12, 0x3

    const/4 v11, 0x0

    const/4 v10, -0x1

    if-ne p1, v10, :cond_1

    move-object v7, v8

    :cond_0
    :goto_0
    return-object v7

    :cond_1
    shr-int/lit8 v1, p1, 0xb

    and-int/lit16 v4, p1, 0x7ff

    if-eqz p2, :cond_2

    iget-object v9, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    invoke-direct {p0, v9, v1, v4}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->clearChunkValue([[Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v7

    :goto_1
    if-nez v7, :cond_3

    move-object v7, v8

    goto :goto_0

    :cond_2
    iget-object v9, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    invoke-direct {p0, v9, v1, v4}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getChunkValue([[Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    :cond_3
    iget-object v8, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeType:[[I

    invoke-direct {p0, v8, v1, v4}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getChunkIndex([[III)I

    move-result v6

    if-ne v6, v12, :cond_7

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getRealPrevSibling(I)I

    move-result v5

    if-eq v5, v10, :cond_0

    invoke-virtual {p0, v5, v11}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeType(IZ)S

    move-result v8

    if-ne v8, v12, :cond_0

    iget-object v8, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fStrChunks:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    shr-int/lit8 v1, v5, 0xb

    and-int/lit16 v4, v5, 0x7ff

    iget-object v8, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    invoke-direct {p0, v8, v1, v4}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getChunkValue([[Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fStrChunks:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v8, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodePrevSib:[[I

    invoke-direct {p0, v8, v1, v4}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getChunkIndex([[III)I

    move-result v5

    if-ne v5, v10, :cond_5

    :goto_2
    iget-object v8, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fStrChunks:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v3, v2, -0x1

    :goto_3
    if-gez v3, :cond_6

    iget-object v8, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fBufferStr:Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fStrChunks:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    iget-object v8, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fBufferStr:Ljava/lang/StringBuffer;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuffer;->setLength(I)V

    goto :goto_0

    :cond_5
    invoke-virtual {p0, v5, v11}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeType(IZ)S

    move-result v8

    if-eq v8, v12, :cond_4

    goto :goto_2

    :cond_6
    iget-object v9, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fBufferStr:Ljava/lang/StringBuffer;

    iget-object v8, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fStrChunks:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    :cond_7
    const/4 v8, 0x4

    if-ne v6, v8, :cond_0

    invoke-virtual {p0, p1, v11}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getLastChild(IZ)I

    move-result v0

    if-eq v0, v10, :cond_0

    iget-object v8, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fBufferStr:Ljava/lang/StringBuffer;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_4
    if-ne v0, v10, :cond_8

    iget-object v8, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fStrChunks:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v3, v8, -0x1

    :goto_5
    if-gez v3, :cond_9

    iget-object v8, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fBufferStr:Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fStrChunks:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    iget-object v8, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fBufferStr:Ljava/lang/StringBuffer;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuffer;->setLength(I)V

    goto/16 :goto_0

    :cond_8
    shr-int/lit8 v1, v0, 0xb

    and-int/lit16 v4, v0, 0x7ff

    iget-object v8, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    invoke-direct {p0, v8, v1, v4}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getChunkValue([[Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fStrChunks:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v8, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodePrevSib:[[I

    invoke-direct {p0, v8, v1, v4}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getChunkIndex([[III)I

    move-result v0

    goto :goto_4

    :cond_9
    iget-object v9, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fBufferStr:Ljava/lang/StringBuffer;

    iget-object v8, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fStrChunks:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v3, -0x1

    goto :goto_5
.end method

.method public getParentNode(I)I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getParentNode(IZ)I

    move-result v0

    return v0
.end method

.method public getParentNode(IZ)I
    .locals 3

    const/4 v2, -0x1

    if-ne p1, v2, :cond_0

    :goto_0
    return v2

    :cond_0
    shr-int/lit8 v0, p1, 0xb

    and-int/lit16 v1, p1, 0x7ff

    if-eqz p2, :cond_1

    iget-object v2, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeParent:[[I

    invoke-direct {p0, v2, v0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->clearChunkIndex([[III)I

    move-result v2

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeParent:[[I

    invoke-direct {p0, v2, v0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getChunkIndex([[III)I

    move-result v2

    goto :goto_0
.end method

.method public getPrevSibling(I)I
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getPrevSibling(IZ)I

    move-result v0

    return v0
.end method

.method public getPrevSibling(IZ)I
    .locals 6

    const/4 v5, 0x3

    const/4 v3, -0x1

    if-ne p1, v3, :cond_0

    :goto_0
    return v3

    :cond_0
    shr-int/lit8 v0, p1, 0xb

    and-int/lit16 v1, p1, 0x7ff

    iget-object v4, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeType:[[I

    invoke-direct {p0, v4, v0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getChunkIndex([[III)I

    move-result v2

    if-ne v2, v5, :cond_3

    :cond_1
    iget-object v4, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodePrevSib:[[I

    invoke-direct {p0, v4, v0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getChunkIndex([[III)I

    move-result p1

    if-ne p1, v3, :cond_2

    :goto_1
    move v3, p1

    goto :goto_0

    :cond_2
    shr-int/lit8 v0, p1, 0xb

    and-int/lit16 v1, p1, 0x7ff

    iget-object v4, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeType:[[I

    invoke-direct {p0, v4, v0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getChunkIndex([[III)I

    move-result v2

    if-eq v2, v5, :cond_1

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodePrevSib:[[I

    invoke-direct {p0, v3, v0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getChunkIndex([[III)I

    move-result p1

    goto :goto_1
.end method

.method public getRealPrevSibling(I)I
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getRealPrevSibling(IZ)I

    move-result v0

    return v0
.end method

.method public getRealPrevSibling(IZ)I
    .locals 3

    const/4 v2, -0x1

    if-ne p1, v2, :cond_0

    :goto_0
    return v2

    :cond_0
    shr-int/lit8 v0, p1, 0xb

    and-int/lit16 v1, p1, 0x7ff

    if-eqz p2, :cond_1

    iget-object v2, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodePrevSib:[[I

    invoke-direct {p0, v2, v0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->clearChunkIndex([[III)I

    move-result v2

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodePrevSib:[[I

    invoke-direct {p0, v2, v0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getChunkIndex([[III)I

    move-result v2

    goto :goto_0
.end method

.method public getTypeInfo(I)Ljava/lang/Object;
    .locals 7

    const/4 v4, 0x0

    const/4 v5, -0x1

    if-ne p1, v5, :cond_1

    move-object v3, v4

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    shr-int/lit8 v1, p1, 0xb

    and-int/lit16 v2, p1, 0x7ff

    iget-object v5, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    aget-object v5, v5, v1

    if-eqz v5, :cond_2

    iget-object v5, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    aget-object v5, v5, v1

    aget-object v3, v5, v2

    :goto_1
    if-eqz v3, :cond_0

    iget-object v5, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    aget-object v5, v5, v1

    aput-object v4, v5, v2

    iget-object v5, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    aget-object v5, v5, v1

    const/16 v6, 0x800

    aget-object v0, v5, v6

    check-cast v0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl$RefCount;

    iget v5, v0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl$RefCount;->fCount:I

    add-int/lit8 v5, v5, -0x1

    iput v5, v0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl$RefCount;->fCount:I

    iget v5, v0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl$RefCount;->fCount:I

    if-nez v5, :cond_0

    iget-object v5, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    aput-object v4, v5, v1

    goto :goto_0

    :cond_2
    move-object v3, v4

    goto :goto_1
.end method

.method public insertBefore(III)I
    .locals 6

    const/4 v5, -0x1

    if-ne p3, v5, :cond_0

    invoke-virtual {p0, p1, p2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->appendChild(II)V

    :goto_0
    return p2

    :cond_0
    shr-int/lit8 v0, p2, 0xb

    and-int/lit16 v1, p2, 0x7ff

    shr-int/lit8 v3, p3, 0xb

    and-int/lit16 v4, p3, 0x7ff

    iget-object v5, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodePrevSib:[[I

    invoke-direct {p0, v5, v3, v4}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getChunkIndex([[III)I

    move-result v2

    iget-object v5, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodePrevSib:[[I

    invoke-direct {p0, v5, p2, v3, v4}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkIndex([[IIII)I

    iget-object v5, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodePrevSib:[[I

    invoke-direct {p0, v5, v2, v0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkIndex([[IIII)I

    goto :goto_0
.end method

.method public lookupElementDefinition(Ljava/lang/String;)I
    .locals 7

    const/4 v4, -0x1

    iget v5, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeCount:I

    const/4 v6, 0x1

    if-le v5, v6, :cond_4

    const/4 v0, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v5, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeLastChild:[[I

    invoke-direct {p0, v5, v2, v3}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getChunkIndex([[III)I

    move-result v1

    :goto_0
    if-ne v1, v4, :cond_1

    :goto_1
    if-ne v0, v4, :cond_3

    move v1, v4

    :cond_0
    :goto_2
    return v1

    :cond_1
    shr-int/lit8 v2, v1, 0xb

    and-int/lit16 v3, v1, 0x7ff

    iget-object v5, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeType:[[I

    invoke-direct {p0, v5, v2, v3}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getChunkIndex([[III)I

    move-result v5

    const/16 v6, 0xa

    if-ne v5, v6, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    iget-object v5, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodePrevSib:[[I

    invoke-direct {p0, v5, v2, v3}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getChunkIndex([[III)I

    move-result v1

    goto :goto_0

    :cond_3
    shr-int/lit8 v2, v0, 0xb

    and-int/lit16 v3, v0, 0x7ff

    iget-object v5, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeLastChild:[[I

    invoke-direct {p0, v5, v2, v3}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getChunkIndex([[III)I

    move-result v1

    :goto_3
    if-ne v1, v4, :cond_5

    :cond_4
    move v1, v4

    goto :goto_2

    :cond_5
    shr-int/lit8 v2, v1, 0xb

    and-int/lit16 v3, v1, 0x7ff

    iget-object v5, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeType:[[I

    invoke-direct {p0, v5, v2, v3}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getChunkIndex([[III)I

    move-result v5

    const/16 v6, 0x15

    if-ne v5, v6, :cond_6

    iget-object v5, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeName:[[Ljava/lang/Object;

    invoke-direct {p0, v5, v2, v3}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getChunkValue([[Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v5

    if-eq v5, p1, :cond_0

    :cond_6
    iget-object v5, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodePrevSib:[[I

    invoke-direct {p0, v5, v2, v3}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getChunkIndex([[III)I

    move-result v1

    goto :goto_3
.end method

.method public print()V
    .locals 0

    return-void
.end method

.method public putIdentifier(Ljava/lang/String;I)V
    .locals 5

    const/16 v3, 0x40

    const/4 v4, 0x0

    iget-object v2, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fIdName:[Ljava/lang/String;

    if-nez v2, :cond_0

    new-array v2, v3, [Ljava/lang/String;

    iput-object v2, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fIdName:[Ljava/lang/String;

    new-array v2, v3, [I

    iput-object v2, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fIdElement:[I

    :cond_0
    iget v2, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fIdCount:I

    iget-object v3, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fIdName:[Ljava/lang/String;

    array-length v3, v3

    if-ne v2, v3, :cond_1

    iget v2, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fIdCount:I

    mul-int/lit8 v2, v2, 0x2

    new-array v1, v2, [Ljava/lang/String;

    iget-object v2, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fIdName:[Ljava/lang/String;

    iget v3, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fIdCount:I

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fIdName:[Ljava/lang/String;

    array-length v2, v1

    new-array v0, v2, [I

    iget-object v2, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fIdElement:[I

    iget v3, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fIdCount:I

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fIdElement:[I

    :cond_1
    iget-object v2, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fIdName:[Ljava/lang/String;

    iget v3, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fIdCount:I

    aput-object p1, v2, v3

    iget-object v2, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fIdElement:[I

    iget v3, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fIdCount:I

    aput p2, v2, v3

    iget v2, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fIdCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fIdCount:I

    return-void
.end method

.method public setAsLastChild(II)V
    .locals 3

    shr-int/lit8 v0, p1, 0xb

    and-int/lit16 v1, p1, 0x7ff

    iget-object v2, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeLastChild:[[I

    invoke-direct {p0, v2, p2, v0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkIndex([[IIII)I

    return-void
.end method

.method public setAttributeNode(II)I
    .locals 22

    shr-int/lit8 v11, p1, 0xb

    move/from16 v0, p1

    and-int/lit16 v12, v0, 0x7ff

    shr-int/lit8 v5, p2, 0xb

    move/from16 v0, p2

    and-int/lit16 v6, v0, 0x7ff

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeName:[[Ljava/lang/Object;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v5, v6}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getChunkValue([[Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeExtra:[[I

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v11, v12}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getChunkIndex([[III)I

    move-result v16

    const/4 v13, -0x1

    const/4 v14, -0x1

    const/4 v15, -0x1

    :goto_0
    const/16 v21, -0x1

    move/from16 v0, v16

    move/from16 v1, v21

    if-ne v0, v1, :cond_2

    :cond_0
    const/16 v21, -0x1

    move/from16 v0, v16

    move/from16 v1, v21

    if-eq v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodePrevSib:[[I

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v14, v15}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getChunkIndex([[III)I

    move-result v20

    const/16 v21, -0x1

    move/from16 v0, v21

    if-ne v13, v0, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeExtra:[[I

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v20

    invoke-direct {v0, v1, v2, v11, v12}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkIndex([[IIII)I

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeType:[[I

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v14, v15}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->clearChunkIndex([[III)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeName:[[Ljava/lang/Object;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v14, v15}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->clearChunkValue([[Ljava/lang/Object;II)Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v14, v15}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->clearChunkValue([[Ljava/lang/Object;II)Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeParent:[[I

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v14, v15}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->clearChunkIndex([[III)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodePrevSib:[[I

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v14, v15}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->clearChunkIndex([[III)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeLastChild:[[I

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v14, v15}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->clearChunkIndex([[III)I

    move-result v10

    shr-int/lit8 v7, v10, 0xb

    and-int/lit16 v8, v10, 0x7ff

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeType:[[I

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v7, v8}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->clearChunkIndex([[III)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v7, v8}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->clearChunkValue([[Ljava/lang/Object;II)Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeParent:[[I

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v7, v8}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->clearChunkIndex([[III)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeLastChild:[[I

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v7, v8}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->clearChunkIndex([[III)I

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeExtra:[[I

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v11, v12}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getChunkIndex([[III)I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeExtra:[[I

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, p2

    invoke-direct {v0, v1, v2, v11, v12}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkIndex([[IIII)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodePrevSib:[[I

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v20

    invoke-direct {v0, v1, v2, v5, v6}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkIndex([[IIII)I

    return v16

    :cond_2
    shr-int/lit8 v14, v16, 0xb

    move/from16 v0, v16

    and-int/lit16 v15, v0, 0x7ff

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeName:[[Ljava/lang/Object;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v14, v15}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getChunkValue([[Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_0

    move/from16 v13, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodePrevSib:[[I

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1, v14, v15}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getChunkIndex([[III)I

    move-result v16

    goto/16 :goto_0

    :cond_3
    shr-int/lit8 v18, v13, 0xb

    and-int/lit16 v0, v13, 0x7ff

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodePrevSib:[[I

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v20

    move/from16 v3, v18

    move/from16 v4, v19

    invoke-direct {v0, v1, v2, v3, v4}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkIndex([[IIII)I

    goto/16 :goto_1
.end method

.method public setDeferredAttribute(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 7

    invoke-virtual {p0, p2, p3, p4, p5}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->createDeferredAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v2

    shr-int/lit8 v0, v2, 0xb

    and-int/lit16 v1, v2, 0x7ff

    iget-object v6, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeParent:[[I

    invoke-direct {p0, v6, p1, v0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkIndex([[IIII)I

    shr-int/lit8 v3, p1, 0xb

    and-int/lit16 v4, p1, 0x7ff

    iget-object v6, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeExtra:[[I

    invoke-direct {p0, v6, v3, v4}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getChunkIndex([[III)I

    move-result v5

    if-eqz v5, :cond_0

    iget-object v6, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodePrevSib:[[I

    invoke-direct {p0, v6, v5, v0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkIndex([[IIII)I

    :cond_0
    iget-object v6, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeExtra:[[I

    invoke-direct {p0, v6, v2, v3, v4}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkIndex([[IIII)I

    return v2
.end method

.method public setDeferredAttribute(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/Object;)I
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move/from16 v4, p5

    invoke-virtual {v0, v1, v2, v3, v4}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->createDeferredAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)I

    move-result v7

    shr-int/lit8 v5, v7, 0xb

    and-int/lit16 v6, v7, 0x7ff

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeParent:[[I

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, p1

    invoke-direct {v0, v1, v2, v5, v6}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkIndex([[IIII)I

    shr-int/lit8 v10, p1, 0xb

    move/from16 v0, p1

    and-int/lit16 v11, v0, 0x7ff

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeExtra:[[I

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v10, v11}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getChunkIndex([[III)I

    move-result v14

    if-eqz v14, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodePrevSib:[[I

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v14, v5, v6}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkIndex([[IIII)I

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeExtra:[[I

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v7, v10, v11}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkIndex([[IIII)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeExtra:[[I

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v5, v6}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getChunkIndex([[III)I

    move-result v12

    if-eqz p6, :cond_1

    or-int/lit16 v12, v12, 0x200

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeExtra:[[I

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v12, v5, v6}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkIndex([[IIII)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v5, v6}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getChunkValue([[Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v15, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->putIdentifier(Ljava/lang/String;I)V

    :cond_1
    if-eqz p7, :cond_2

    const/16 v16, 0x14

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->createNode(S)I

    move-result v13

    shr-int/lit8 v8, v13, 0xb

    and-int/lit16 v9, v13, 0x7ff

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeLastChild:[[I

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v13, v5, v6}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkIndex([[IIII)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, p7

    invoke-direct {v0, v1, v2, v8, v9}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    :cond_2
    return v7
.end method

.method public setEntityInfo(ILjava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0, p1, v3}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeExtra(IZ)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    shr-int/lit8 v1, v0, 0xb

    and-int/lit16 v2, v0, 0x7ff

    iget-object v3, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    invoke-direct {p0, v3, p2, v1, v2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    iget-object v3, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeURI:[[Ljava/lang/Object;

    invoke-direct {p0, v3, p3, v1, v2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setIdAttribute(I)V
    .locals 4

    shr-int/lit8 v0, p1, 0xb

    and-int/lit16 v2, p1, 0x7ff

    iget-object v3, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeExtra:[[I

    invoke-direct {p0, v3, v0, v2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getChunkIndex([[III)I

    move-result v1

    or-int/lit16 v1, v1, 0x200

    iget-object v3, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeExtra:[[I

    invoke-direct {p0, v3, v1, v0, v2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkIndex([[IIII)I

    return-void
.end method

.method public setIdAttributeNode(II)V
    .locals 5

    shr-int/lit8 v0, p2, 0xb

    and-int/lit16 v2, p2, 0x7ff

    iget-object v4, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeExtra:[[I

    invoke-direct {p0, v4, v0, v2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getChunkIndex([[III)I

    move-result v1

    or-int/lit16 v1, v1, 0x200

    iget-object v4, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeExtra:[[I

    invoke-direct {p0, v4, v1, v0, v2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkIndex([[IIII)I

    iget-object v4, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    invoke-direct {p0, v4, v0, v2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getChunkValue([[Ljava/lang/Object;II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, p1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->putIdentifier(Ljava/lang/String;I)V

    return-void
.end method

.method public setInputEncoding(ILjava/lang/String;)V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0, p1, v4}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeExtra(IZ)I

    move-result v3

    invoke-virtual {p0, v3, v4}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeExtra(IZ)I

    move-result v2

    shr-int/lit8 v0, v2, 0xb

    and-int/lit16 v1, v2, 0x7ff

    iget-object v4, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    invoke-direct {p0, v4, p2, v0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    return-void
.end method

.method public setInternalSubset(ILjava/lang/String;)V
    .locals 6

    shr-int/lit8 v0, p1, 0xb

    and-int/lit16 v4, p1, 0x7ff

    const/16 v5, 0xa

    invoke-virtual {p0, v5}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->createNode(S)I

    move-result v3

    shr-int/lit8 v1, v3, 0xb

    and-int/lit16 v2, v3, 0x7ff

    iget-object v5, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeExtra:[[I

    invoke-direct {p0, v5, v3, v0, v4}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkIndex([[IIII)I

    iget-object v5, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    invoke-direct {p0, v5, p2, v1, v2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    return-void
.end method

.method setNamespacesEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNamespacesEnabled:Z

    return-void
.end method

.method public setTypeInfo(ILjava/lang/Object;)V
    .locals 3

    shr-int/lit8 v0, p1, 0xb

    and-int/lit16 v1, p1, 0x7ff

    iget-object v2, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeValue:[[Ljava/lang/Object;

    invoke-direct {p0, v2, p2, v0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setChunkValue([[Ljava/lang/Object;Ljava/lang/Object;II)Ljava/lang/String;

    return-void
.end method

.method protected synchronizeChildren()V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->needsSyncData()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->synchronizeData()V

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->needsSyncChildren()Z

    move-result v6

    if-nez v6, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v4, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->mutationEvents:Z

    iput-boolean v7, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->mutationEvents:Z

    invoke-virtual {p0, v7}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->needsSyncChildren(Z)V

    invoke-virtual {p0, v7}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeType(I)S

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v7}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getLastChild(I)I

    move-result v1

    :goto_1
    const/4 v6, -0x1

    if-ne v1, v6, :cond_2

    if-eqz v0, :cond_1

    iput-object v0, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->firstChild:Lmf/org/apache/xerces/dom/ChildNode;

    invoke-virtual {v0, v8}, Lmf/org/apache/xerces/dom/ChildNode;->isFirstChild(Z)V

    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->lastChild(Lmf/org/apache/xerces/dom/ChildNode;)V

    :cond_1
    iput-boolean v4, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->mutationEvents:Z

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeObject(I)Lmf/org/apache/xerces/dom/DeferredNode;

    move-result-object v3

    check-cast v3, Lmf/org/apache/xerces/dom/ChildNode;

    if-nez v2, :cond_4

    move-object v2, v3

    :goto_2
    iput-object p0, v3, Lmf/org/apache/xerces/dom/ChildNode;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v3, v8}, Lmf/org/apache/xerces/dom/ChildNode;->isOwned(Z)V

    iput-object v0, v3, Lmf/org/apache/xerces/dom/ChildNode;->nextSibling:Lmf/org/apache/xerces/dom/ChildNode;

    move-object v0, v3

    invoke-virtual {v3}, Lmf/org/apache/xerces/dom/ChildNode;->getNodeType()S

    move-result v5

    if-ne v5, v8, :cond_5

    check-cast v3, Lmf/org/apache/xerces/dom/ElementImpl;

    iput-object v3, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->docElement:Lmf/org/apache/xerces/dom/ElementImpl;

    :cond_3
    :goto_3
    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getPrevSibling(I)I

    move-result v1

    goto :goto_1

    :cond_4
    iput-object v3, v0, Lmf/org/apache/xerces/dom/ChildNode;->previousSibling:Lmf/org/apache/xerces/dom/ChildNode;

    goto :goto_2

    :cond_5
    const/16 v6, 0xa

    if-ne v5, v6, :cond_3

    check-cast v3, Lmf/org/apache/xerces/dom/DocumentTypeImpl;

    iput-object v3, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->docType:Lmf/org/apache/xerces/dom/DocumentTypeImpl;

    goto :goto_3
.end method

.method protected final synchronizeChildren(Lmf/org/apache/xerces/dom/AttrImpl;I)V
    .locals 10

    const/4 v9, -0x1

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getMutationEvents()Z

    move-result v5

    invoke-virtual {p0, v7}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setMutationEvents(Z)V

    invoke-virtual {p1, v7}, Lmf/org/apache/xerces/dom/AttrImpl;->needsSyncChildren(Z)V

    invoke-virtual {p0, p2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getLastChild(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getPrevSibling(I)I

    move-result v6

    if-ne v6, v9, :cond_0

    invoke-virtual {p0, p2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeValueString(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p1, Lmf/org/apache/xerces/dom/AttrImpl;->value:Ljava/lang/Object;

    invoke-virtual {p1, v8}, Lmf/org/apache/xerces/dom/AttrImpl;->hasStringValue(Z)V

    :goto_0
    invoke-virtual {p0, v5}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setMutationEvents(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v3, 0x0

    move v1, v2

    :goto_1
    if-ne v1, v9, :cond_2

    if-eqz v3, :cond_1

    iput-object v0, p1, Lmf/org/apache/xerces/dom/AttrImpl;->value:Ljava/lang/Object;

    invoke-virtual {v0, v8}, Lmf/org/apache/xerces/dom/ChildNode;->isFirstChild(Z)V

    invoke-virtual {p1, v3}, Lmf/org/apache/xerces/dom/AttrImpl;->lastChild(Lmf/org/apache/xerces/dom/ChildNode;)V

    :cond_1
    invoke-virtual {p1, v7}, Lmf/org/apache/xerces/dom/AttrImpl;->hasStringValue(Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeObject(I)Lmf/org/apache/xerces/dom/DeferredNode;

    move-result-object v4

    check-cast v4, Lmf/org/apache/xerces/dom/ChildNode;

    if-nez v3, :cond_3

    move-object v3, v4

    :goto_2
    iput-object p1, v4, Lmf/org/apache/xerces/dom/ChildNode;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v4, v8}, Lmf/org/apache/xerces/dom/ChildNode;->isOwned(Z)V

    iput-object v0, v4, Lmf/org/apache/xerces/dom/ChildNode;->nextSibling:Lmf/org/apache/xerces/dom/ChildNode;

    move-object v0, v4

    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getPrevSibling(I)I

    move-result v1

    goto :goto_1

    :cond_3
    iput-object v4, v0, Lmf/org/apache/xerces/dom/ChildNode;->previousSibling:Lmf/org/apache/xerces/dom/ChildNode;

    goto :goto_2
.end method

.method protected final synchronizeChildren(Lmf/org/apache/xerces/dom/ParentNode;I)V
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getMutationEvents()Z

    move-result v4

    invoke-virtual {p0, v5}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setMutationEvents(Z)V

    invoke-virtual {p1, v5}, Lmf/org/apache/xerces/dom/ParentNode;->needsSyncChildren(Z)V

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, p2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getLastChild(I)I

    move-result v1

    :goto_0
    const/4 v5, -0x1

    if-ne v1, v5, :cond_1

    if-eqz v2, :cond_0

    iput-object v0, p1, Lmf/org/apache/xerces/dom/ParentNode;->firstChild:Lmf/org/apache/xerces/dom/ChildNode;

    invoke-virtual {v0, v6}, Lmf/org/apache/xerces/dom/ChildNode;->isFirstChild(Z)V

    invoke-virtual {p1, v2}, Lmf/org/apache/xerces/dom/ParentNode;->lastChild(Lmf/org/apache/xerces/dom/ChildNode;)V

    :cond_0
    invoke-virtual {p0, v4}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->setMutationEvents(Z)V

    return-void

    :cond_1
    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeObject(I)Lmf/org/apache/xerces/dom/DeferredNode;

    move-result-object v3

    check-cast v3, Lmf/org/apache/xerces/dom/ChildNode;

    if-nez v2, :cond_2

    move-object v2, v3

    :goto_1
    iput-object p1, v3, Lmf/org/apache/xerces/dom/ChildNode;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v3, v6}, Lmf/org/apache/xerces/dom/ChildNode;->isOwned(Z)V

    iput-object v0, v3, Lmf/org/apache/xerces/dom/ChildNode;->nextSibling:Lmf/org/apache/xerces/dom/ChildNode;

    move-object v0, v3

    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getPrevSibling(I)I

    move-result v1

    goto :goto_0

    :cond_2
    iput-object v3, v0, Lmf/org/apache/xerces/dom/ChildNode;->previousSibling:Lmf/org/apache/xerces/dom/ChildNode;

    goto :goto_1
.end method

.method protected synchronizeData()V
    .locals 14

    const/4 v12, 0x0

    invoke-virtual {p0, v12}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->needsSyncData(Z)V

    iget-object v12, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fIdElement:[I

    if-eqz v12, :cond_0

    new-instance v8, Lmf/org/apache/xerces/dom/DeferredDocumentImpl$IntVector;

    invoke-direct {v8}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl$IntVector;-><init>()V

    const/4 v3, 0x0

    :goto_0
    iget v12, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fIdCount:I

    if-lt v3, v12, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v12, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fIdElement:[I

    aget v2, v12, v3

    iget-object v12, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fIdName:[Ljava/lang/String;

    aget-object v4, v12, v3

    if-nez v4, :cond_3

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v8}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl$IntVector;->removeAllElements()V

    move v5, v2

    :cond_4
    invoke-virtual {v8, v5}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl$IntVector;->addElement(I)V

    shr-int/lit8 v9, v5, 0xb

    and-int/lit16 v10, v5, 0x7ff

    iget-object v12, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fNodeParent:[[I

    invoke-direct {p0, v12, v9, v10}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getChunkIndex([[III)I

    move-result v5

    const/4 v12, -0x1

    if-ne v5, v12, :cond_4

    move-object v11, p0

    invoke-virtual {v8}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl$IntVector;->size()I

    move-result v12

    add-int/lit8 v6, v12, -0x2

    :goto_1
    if-gez v6, :cond_6

    move-object v1, v11

    check-cast v1, Lmf/org/w3c/dom/Element;

    invoke-direct {p0, v4, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->putIdentifier0(Ljava/lang/String;Lmf/org/w3c/dom/Element;)V

    iget-object v12, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fIdName:[Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v13, v12, v3

    :cond_5
    :goto_2
    add-int/lit8 v12, v3, 0x1

    iget v13, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fIdCount:I

    if-ge v12, v13, :cond_2

    iget-object v12, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fIdElement:[I

    add-int/lit8 v13, v3, 0x1

    aget v12, v12, v13

    if-ne v12, v2, :cond_2

    iget-object v12, p0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->fIdName:[Ljava/lang/String;

    add-int/lit8 v3, v3, 0x1

    aget-object v4, v12, v3

    if-eqz v4, :cond_5

    invoke-direct {p0, v4, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->putIdentifier0(Ljava/lang/String;Lmf/org/w3c/dom/Element;)V

    goto :goto_2

    :cond_6
    invoke-virtual {v8, v6}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl$IntVector;->elementAt(I)I

    move-result v5

    invoke-interface {v11}, Lmf/org/w3c/dom/Node;->getLastChild()Lmf/org/w3c/dom/Node;

    move-result-object v0

    :goto_3
    if-nez v0, :cond_7

    :goto_4
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    :cond_7
    instance-of v12, v0, Lmf/org/apache/xerces/dom/DeferredNode;

    if-eqz v12, :cond_8

    move-object v12, v0

    check-cast v12, Lmf/org/apache/xerces/dom/DeferredNode;

    invoke-interface {v12}, Lmf/org/apache/xerces/dom/DeferredNode;->getNodeIndex()I

    move-result v7

    if-ne v7, v5, :cond_8

    move-object v11, v0

    goto :goto_4

    :cond_8
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getPreviousSibling()Lmf/org/w3c/dom/Node;

    move-result-object v0

    goto :goto_3
.end method

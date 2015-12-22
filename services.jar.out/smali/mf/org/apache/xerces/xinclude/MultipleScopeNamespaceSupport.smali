.class public Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;
.super Lmf/org/apache/xerces/util/NamespaceSupport;
.source "MultipleScopeNamespaceSupport.java"


# instance fields
.field protected fCurrentScope:I

.field protected fScope:[I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lmf/org/apache/xerces/util/NamespaceSupport;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [I

    iput-object v0, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fScope:[I

    iput v1, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fCurrentScope:I

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fScope:[I

    aput v1, v0, v1

    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/xni/NamespaceContext;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/util/NamespaceSupport;-><init>(Lmf/org/apache/xerces/xni/NamespaceContext;)V

    const/16 v0, 0x8

    new-array v0, v0, [I

    iput-object v0, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fScope:[I

    iput v1, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fCurrentScope:I

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fScope:[I

    aput v1, v0, v1

    return-void
.end method


# virtual methods
.method public getAllPrefixes()Ljava/util/Enumeration;
    .locals 10

    const/4 v0, 0x0

    iget-object v7, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fPrefixes:[Ljava/lang/String;

    array-length v7, v7

    iget-object v8, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fNamespace:[Ljava/lang/String;

    array-length v8, v8

    div-int/lit8 v8, v8, 0x2

    if-ge v7, v8, :cond_0

    iget v7, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fNamespaceSize:I

    new-array v5, v7, [Ljava/lang/String;

    iput-object v5, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fPrefixes:[Ljava/lang/String;

    :cond_0
    const/4 v4, 0x0

    const/4 v6, 0x1

    iget-object v7, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fContext:[I

    iget-object v8, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fScope:[I

    iget v9, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fCurrentScope:I

    aget v8, v8, v9

    aget v2, v7, v8

    :goto_0
    iget v7, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fNamespaceSize:I

    add-int/lit8 v7, v7, -0x2

    if-le v2, v7, :cond_1

    new-instance v7, Lmf/org/apache/xerces/util/NamespaceSupport$Prefixes;

    iget-object v8, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fPrefixes:[Ljava/lang/String;

    invoke-direct {v7, p0, v8, v0}, Lmf/org/apache/xerces/util/NamespaceSupport$Prefixes;-><init>(Lmf/org/apache/xerces/util/NamespaceSupport;[Ljava/lang/String;I)V

    return-object v7

    :cond_1
    iget-object v7, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fNamespace:[Ljava/lang/String;

    aget-object v4, v7, v2

    const/4 v3, 0x0

    :goto_1
    if-lt v3, v0, :cond_3

    :goto_2
    if-eqz v6, :cond_2

    iget-object v7, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fPrefixes:[Ljava/lang/String;

    add-int/lit8 v1, v0, 0x1

    aput-object v4, v7, v0

    move v0, v1

    :cond_2
    const/4 v6, 0x1

    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_3
    iget-object v7, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fPrefixes:[Ljava/lang/String;

    aget-object v7, v7, v3

    if-ne v7, v4, :cond_4

    const/4 v6, 0x0

    goto :goto_2

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public getPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    iget v0, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fNamespaceSize:I

    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fContext:[I

    iget-object v2, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fScope:[I

    iget v3, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fCurrentScope:I

    aget v2, v2, v3

    aget v1, v1, v2

    invoke-virtual {p0, p1, v0, v1}, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->getPrefix(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrefix(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fContext:[I

    add-int/lit8 v1, p2, 0x1

    aget v0, v0, v1

    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fContext:[I

    iget-object v2, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fScope:[I

    invoke-virtual {p0, p2}, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->getScopeForContext(I)I

    move-result v3

    aget v2, v2, v3

    aget v1, v1, v2

    invoke-virtual {p0, p1, v0, v1}, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->getPrefix(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrefix(Ljava/lang/String;II)Ljava/lang/String;
    .locals 3

    sget-object v1, Lmf/org/apache/xerces/xni/NamespaceContext;->XML_URI:Ljava/lang/String;

    if-ne p1, v1, :cond_0

    sget-object v1, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XML:Ljava/lang/String;

    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lmf/org/apache/xerces/xni/NamespaceContext;->XMLNS_URI:Ljava/lang/String;

    if-ne p1, v1, :cond_1

    sget-object v1, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    goto :goto_0

    :cond_1
    move v0, p2

    :goto_1
    if-gt v0, p3, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fNamespace:[Ljava/lang/String;

    add-int/lit8 v2, v0, -0x1

    aget-object v1, v1, v2

    if-ne v1, p1, :cond_3

    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fNamespace:[Ljava/lang/String;

    add-int/lit8 v2, v0, -0x2

    aget-object v1, v1, v2

    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-ne v1, p1, :cond_3

    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fNamespace:[Ljava/lang/String;

    add-int/lit8 v2, v0, -0x2

    aget-object v1, v1, v2

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v0, -0x2

    goto :goto_1
.end method

.method public getScopeForContext(I)I
    .locals 2

    iget v0, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fCurrentScope:I

    :goto_0
    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fScope:[I

    aget v1, v1, v0

    if-lt p1, v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public getURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    iget v0, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fNamespaceSize:I

    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fContext:[I

    iget-object v2, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fScope:[I

    iget v3, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fCurrentScope:I

    aget v2, v2, v3

    aget v1, v1, v2

    invoke-virtual {p0, p1, v0, v1}, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->getURI(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getURI(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fContext:[I

    add-int/lit8 v1, p2, 0x1

    aget v0, v0, v1

    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fContext:[I

    iget-object v2, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fScope:[I

    invoke-virtual {p0, p2}, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->getScopeForContext(I)I

    move-result v3

    aget v2, v2, v3

    aget v1, v1, v2

    invoke-virtual {p0, p1, v0, v1}, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->getURI(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getURI(Ljava/lang/String;II)Ljava/lang/String;
    .locals 3

    sget-object v1, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XML:Ljava/lang/String;

    if-ne p1, v1, :cond_0

    sget-object v1, Lmf/org/apache/xerces/xni/NamespaceContext;->XML_URI:Ljava/lang/String;

    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    if-ne p1, v1, :cond_1

    sget-object v1, Lmf/org/apache/xerces/xni/NamespaceContext;->XMLNS_URI:Ljava/lang/String;

    goto :goto_0

    :cond_1
    move v0, p2

    :goto_1
    if-gt v0, p3, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fNamespace:[Ljava/lang/String;

    add-int/lit8 v2, v0, -0x2

    aget-object v1, v1, v2

    if-ne v1, p1, :cond_3

    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fNamespace:[Ljava/lang/String;

    add-int/lit8 v2, v0, -0x1

    aget-object v1, v1, v2

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v0, -0x2

    goto :goto_1
.end method

.method public popScope()V
    .locals 3

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fScope:[I

    iget v1, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fCurrentScope:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fCurrentScope:I

    aget v0, v0, v1

    iput v0, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fCurrentContext:I

    invoke-virtual {p0}, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->popContext()V

    return-void
.end method

.method public pushScope()V
    .locals 4

    const/4 v3, 0x0

    iget v1, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fCurrentScope:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fScope:[I

    array-length v2, v2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fScope:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    new-array v0, v1, [I

    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fScope:[I

    iget-object v2, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fScope:[I

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fScope:[I

    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->pushContext()V

    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fScope:[I

    iget v2, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fCurrentScope:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fCurrentScope:I

    iget v3, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fCurrentContext:I

    aput v3, v1, v2

    return-void
.end method

.method public reset()V
    .locals 2

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fScope:[I

    iget v1, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fCurrentScope:I

    aget v0, v0, v1

    iput v0, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fCurrentContext:I

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fContext:[I

    iget v1, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fCurrentContext:I

    aget v0, v0, v1

    iput v0, p0, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->fNamespaceSize:I

    return-void
.end method

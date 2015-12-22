.class public Lmf/org/apache/xerces/util/NamespaceSupport;
.super Ljava/lang/Object;
.source "NamespaceSupport.java"

# interfaces
.implements Lmf/org/apache/xerces/xni/NamespaceContext;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xerces/util/NamespaceSupport$Prefixes;
    }
.end annotation


# instance fields
.field protected fContext:[I

.field protected fCurrentContext:I

.field protected fNamespace:[Ljava/lang/String;

.field protected fNamespaceSize:I

.field protected fPrefixes:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x20

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lmf/org/apache/xerces/util/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    const/16 v0, 0x8

    new-array v0, v0, [I

    iput-object v0, p0, Lmf/org/apache/xerces/util/NamespaceSupport;->fContext:[I

    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lmf/org/apache/xerces/util/NamespaceSupport;->fPrefixes:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/xni/NamespaceContext;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v3, 0x20

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, p0, Lmf/org/apache/xerces/util/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    const/16 v3, 0x8

    new-array v3, v3, [I

    iput-object v3, p0, Lmf/org/apache/xerces/util/NamespaceSupport;->fContext:[I

    const/16 v3, 0x10

    new-array v3, v3, [Ljava/lang/String;

    iput-object v3, p0, Lmf/org/apache/xerces/util/NamespaceSupport;->fPrefixes:[Ljava/lang/String;

    invoke-virtual {p0}, Lmf/org/apache/xerces/util/NamespaceSupport;->pushContext()V

    invoke-interface {p1}, Lmf/org/apache/xerces/xni/NamespaceContext;->getAllPrefixes()Ljava/util/Enumeration;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1, v0}, Lmf/org/apache/xerces/xni/NamespaceContext;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lmf/org/apache/xerces/util/NamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method


# virtual methods
.method public containsPrefix(Ljava/lang/String;)Z
    .locals 3

    iget v0, p0, Lmf/org/apache/xerces/util/NamespaceSupport;->fNamespaceSize:I

    :goto_0
    if-gtz v0, :cond_0

    const/4 v1, 0x0

    :goto_1
    return v1

    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/util/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    add-int/lit8 v2, v0, -0x2

    aget-object v1, v1, v2

    if-ne v1, p1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, -0x2

    goto :goto_0
.end method

.method public declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    sget-object v4, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XML:Ljava/lang/String;

    if-eq p1, v4, :cond_0

    sget-object v4, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    if-ne p1, v4, :cond_1

    :cond_0
    move v2, v3

    :goto_0
    return v2

    :cond_1
    iget v0, p0, Lmf/org/apache/xerces/util/NamespaceSupport;->fNamespaceSize:I

    :goto_1
    iget-object v4, p0, Lmf/org/apache/xerces/util/NamespaceSupport;->fContext:[I

    iget v5, p0, Lmf/org/apache/xerces/util/NamespaceSupport;->fCurrentContext:I

    aget v4, v4, v5

    if-gt v0, v4, :cond_3

    iget v4, p0, Lmf/org/apache/xerces/util/NamespaceSupport;->fNamespaceSize:I

    iget-object v5, p0, Lmf/org/apache/xerces/util/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    array-length v5, v5

    if-ne v4, v5, :cond_2

    iget v4, p0, Lmf/org/apache/xerces/util/NamespaceSupport;->fNamespaceSize:I

    mul-int/lit8 v4, v4, 0x2

    new-array v1, v4, [Ljava/lang/String;

    iget-object v4, p0, Lmf/org/apache/xerces/util/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    iget v5, p0, Lmf/org/apache/xerces/util/NamespaceSupport;->fNamespaceSize:I

    invoke-static {v4, v3, v1, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v1, p0, Lmf/org/apache/xerces/util/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    :cond_2
    iget-object v3, p0, Lmf/org/apache/xerces/util/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    iget v4, p0, Lmf/org/apache/xerces/util/NamespaceSupport;->fNamespaceSize:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lmf/org/apache/xerces/util/NamespaceSupport;->fNamespaceSize:I

    aput-object p1, v3, v4

    iget-object v3, p0, Lmf/org/apache/xerces/util/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    iget v4, p0, Lmf/org/apache/xerces/util/NamespaceSupport;->fNamespaceSize:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lmf/org/apache/xerces/util/NamespaceSupport;->fNamespaceSize:I

    aput-object p2, v3, v4

    goto :goto_0

    :cond_3
    iget-object v4, p0, Lmf/org/apache/xerces/util/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    add-int/lit8 v5, v0, -0x2

    aget-object v4, v4, v5

    if-ne v4, p1, :cond_4

    iget-object v3, p0, Lmf/org/apache/xerces/util/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    add-int/lit8 v4, v0, -0x1

    aput-object p2, v3, v4

    goto :goto_0

    :cond_4
    add-int/lit8 v0, v0, -0x2

    goto :goto_1
.end method

.method public getAllPrefixes()Ljava/util/Enumeration;
    .locals 9

    const/4 v0, 0x0

    iget-object v7, p0, Lmf/org/apache/xerces/util/NamespaceSupport;->fPrefixes:[Ljava/lang/String;

    array-length v7, v7

    iget-object v8, p0, Lmf/org/apache/xerces/util/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    array-length v8, v8

    div-int/lit8 v8, v8, 0x2

    if-ge v7, v8, :cond_0

    iget v7, p0, Lmf/org/apache/xerces/util/NamespaceSupport;->fNamespaceSize:I

    new-array v5, v7, [Ljava/lang/String;

    iput-object v5, p0, Lmf/org/apache/xerces/util/NamespaceSupport;->fPrefixes:[Ljava/lang/String;

    :cond_0
    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v2, 0x2

    :goto_0
    iget v7, p0, Lmf/org/apache/xerces/util/NamespaceSupport;->fNamespaceSize:I

    add-int/lit8 v7, v7, -0x2

    if-lt v2, v7, :cond_1

    new-instance v7, Lmf/org/apache/xerces/util/NamespaceSupport$Prefixes;

    iget-object v8, p0, Lmf/org/apache/xerces/util/NamespaceSupport;->fPrefixes:[Ljava/lang/String;

    invoke-direct {v7, p0, v8, v0}, Lmf/org/apache/xerces/util/NamespaceSupport$Prefixes;-><init>(Lmf/org/apache/xerces/util/NamespaceSupport;[Ljava/lang/String;I)V

    return-object v7

    :cond_1
    iget-object v7, p0, Lmf/org/apache/xerces/util/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    add-int/lit8 v8, v2, 0x2

    aget-object v4, v7, v8

    const/4 v3, 0x0

    :goto_1
    if-lt v3, v0, :cond_3

    :goto_2
    if-eqz v6, :cond_2

    iget-object v7, p0, Lmf/org/apache/xerces/util/NamespaceSupport;->fPrefixes:[Ljava/lang/String;

    add-int/lit8 v1, v0, 0x1

    aput-object v4, v7, v0

    move v0, v1

    :cond_2
    const/4 v6, 0x1

    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_3
    iget-object v7, p0, Lmf/org/apache/xerces/util/NamespaceSupport;->fPrefixes:[Ljava/lang/String;

    aget-object v7, v7, v3

    if-ne v7, v4, :cond_4

    const/4 v6, 0x0

    goto :goto_2

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public getDeclaredPrefixAt(I)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lmf/org/apache/xerces/util/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    iget-object v1, p0, Lmf/org/apache/xerces/util/NamespaceSupport;->fContext:[I

    iget v2, p0, Lmf/org/apache/xerces/util/NamespaceSupport;->fCurrentContext:I

    aget v1, v1, v2

    mul-int/lit8 v2, p1, 0x2

    add-int/2addr v1, v2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getDeclaredPrefixCount()I
    .locals 3

    iget v0, p0, Lmf/org/apache/xerces/util/NamespaceSupport;->fNamespaceSize:I

    iget-object v1, p0, Lmf/org/apache/xerces/util/NamespaceSupport;->fContext:[I

    iget v2, p0, Lmf/org/apache/xerces/util/NamespaceSupport;->fCurrentContext:I

    aget v1, v1, v2

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    iget v0, p0, Lmf/org/apache/xerces/util/NamespaceSupport;->fNamespaceSize:I

    :goto_0
    if-gtz v0, :cond_0

    const/4 v1, 0x0

    :goto_1
    return-object v1

    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/util/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    add-int/lit8 v2, v0, -0x1

    aget-object v1, v1, v2

    if-ne v1, p1, :cond_1

    iget-object v1, p0, Lmf/org/apache/xerces/util/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    add-int/lit8 v2, v0, -0x2

    aget-object v1, v1, v2

    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/util/NamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-ne v1, p1, :cond_1

    iget-object v1, p0, Lmf/org/apache/xerces/util/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    add-int/lit8 v2, v0, -0x2

    aget-object v1, v1, v2

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, -0x2

    goto :goto_0
.end method

.method public getURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    iget v0, p0, Lmf/org/apache/xerces/util/NamespaceSupport;->fNamespaceSize:I

    :goto_0
    if-gtz v0, :cond_0

    const/4 v1, 0x0

    :goto_1
    return-object v1

    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/util/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    add-int/lit8 v2, v0, -0x2

    aget-object v1, v1, v2

    if-ne v1, p1, :cond_1

    iget-object v1, p0, Lmf/org/apache/xerces/util/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    add-int/lit8 v2, v0, -0x1

    aget-object v1, v1, v2

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, -0x2

    goto :goto_0
.end method

.method public popContext()V
    .locals 3

    iget-object v0, p0, Lmf/org/apache/xerces/util/NamespaceSupport;->fContext:[I

    iget v1, p0, Lmf/org/apache/xerces/util/NamespaceSupport;->fCurrentContext:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lmf/org/apache/xerces/util/NamespaceSupport;->fCurrentContext:I

    aget v0, v0, v1

    iput v0, p0, Lmf/org/apache/xerces/util/NamespaceSupport;->fNamespaceSize:I

    return-void
.end method

.method public pushContext()V
    .locals 4

    const/4 v3, 0x0

    iget v1, p0, Lmf/org/apache/xerces/util/NamespaceSupport;->fCurrentContext:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lmf/org/apache/xerces/util/NamespaceSupport;->fContext:[I

    array-length v2, v2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lmf/org/apache/xerces/util/NamespaceSupport;->fContext:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    new-array v0, v1, [I

    iget-object v1, p0, Lmf/org/apache/xerces/util/NamespaceSupport;->fContext:[I

    iget-object v2, p0, Lmf/org/apache/xerces/util/NamespaceSupport;->fContext:[I

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lmf/org/apache/xerces/util/NamespaceSupport;->fContext:[I

    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/util/NamespaceSupport;->fContext:[I

    iget v2, p0, Lmf/org/apache/xerces/util/NamespaceSupport;->fCurrentContext:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lmf/org/apache/xerces/util/NamespaceSupport;->fCurrentContext:I

    iget v3, p0, Lmf/org/apache/xerces/util/NamespaceSupport;->fNamespaceSize:I

    aput v3, v1, v2

    return-void
.end method

.method public reset()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lmf/org/apache/xerces/util/NamespaceSupport;->fNamespaceSize:I

    iput v0, p0, Lmf/org/apache/xerces/util/NamespaceSupport;->fCurrentContext:I

    iget-object v0, p0, Lmf/org/apache/xerces/util/NamespaceSupport;->fContext:[I

    iget v1, p0, Lmf/org/apache/xerces/util/NamespaceSupport;->fCurrentContext:I

    iget v2, p0, Lmf/org/apache/xerces/util/NamespaceSupport;->fNamespaceSize:I

    aput v2, v0, v1

    iget-object v0, p0, Lmf/org/apache/xerces/util/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    iget v1, p0, Lmf/org/apache/xerces/util/NamespaceSupport;->fNamespaceSize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lmf/org/apache/xerces/util/NamespaceSupport;->fNamespaceSize:I

    sget-object v2, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XML:Ljava/lang/String;

    aput-object v2, v0, v1

    iget-object v0, p0, Lmf/org/apache/xerces/util/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    iget v1, p0, Lmf/org/apache/xerces/util/NamespaceSupport;->fNamespaceSize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lmf/org/apache/xerces/util/NamespaceSupport;->fNamespaceSize:I

    sget-object v2, Lmf/org/apache/xerces/xni/NamespaceContext;->XML_URI:Ljava/lang/String;

    aput-object v2, v0, v1

    iget-object v0, p0, Lmf/org/apache/xerces/util/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    iget v1, p0, Lmf/org/apache/xerces/util/NamespaceSupport;->fNamespaceSize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lmf/org/apache/xerces/util/NamespaceSupport;->fNamespaceSize:I

    sget-object v2, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    aput-object v2, v0, v1

    iget-object v0, p0, Lmf/org/apache/xerces/util/NamespaceSupport;->fNamespace:[Ljava/lang/String;

    iget v1, p0, Lmf/org/apache/xerces/util/NamespaceSupport;->fNamespaceSize:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lmf/org/apache/xerces/util/NamespaceSupport;->fNamespaceSize:I

    sget-object v2, Lmf/org/apache/xerces/xni/NamespaceContext;->XMLNS_URI:Ljava/lang/String;

    aput-object v2, v0, v1

    iget v0, p0, Lmf/org/apache/xerces/util/NamespaceSupport;->fCurrentContext:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmf/org/apache/xerces/util/NamespaceSupport;->fCurrentContext:I

    return-void
.end method

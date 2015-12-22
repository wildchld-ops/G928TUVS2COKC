.class public Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;
.super Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;
.source "XIncludeNamespaceSupport.java"


# instance fields
.field private fValidContext:[Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [Z

    iput-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;->fValidContext:[Z

    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/xni/NamespaceContext;)V
    .locals 1

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;-><init>(Lmf/org/apache/xerces/xni/NamespaceContext;)V

    const/16 v0, 0x8

    new-array v0, v0, [Z

    iput-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;->fValidContext:[Z

    return-void
.end method


# virtual methods
.method public getURIFromIncludeParent(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;->fCurrentContext:I

    add-int/lit8 v0, v1, -0x1

    :goto_0
    if-lez v0, :cond_0

    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;->fValidContext:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {p0, p1, v0}, Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;->getURI(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public pushContext()V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0}, Lmf/org/apache/xerces/xinclude/MultipleScopeNamespaceSupport;->pushContext()V

    iget v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;->fCurrentContext:I

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;->fValidContext:[Z

    array-length v2, v2

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;->fValidContext:[Z

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    new-array v0, v1, [Z

    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;->fValidContext:[Z

    iget-object v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;->fValidContext:[Z

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;->fValidContext:[Z

    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;->fValidContext:[Z

    iget v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;->fCurrentContext:I

    const/4 v3, 0x1

    aput-boolean v3, v1, v2

    return-void
.end method

.method public setContextInvalid()V
    .locals 3

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;->fValidContext:[Z

    iget v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeNamespaceSupport;->fCurrentContext:I

    const/4 v2, 0x0

    aput-boolean v2, v0, v1

    return-void
.end method

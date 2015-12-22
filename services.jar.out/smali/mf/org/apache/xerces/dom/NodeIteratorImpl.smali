.class public Lmf/org/apache/xerces/dom/NodeIteratorImpl;
.super Ljava/lang/Object;
.source "NodeIteratorImpl.java"

# interfaces
.implements Lmf/org/w3c/dom/traversal/NodeIterator;


# instance fields
.field private fCurrentNode:Lmf/org/w3c/dom/Node;

.field private fDetach:Z

.field private fDocument:Lmf/org/apache/xerces/dom/DocumentImpl;

.field private fEntityReferenceExpansion:Z

.field private fForward:Z

.field private fNodeFilter:Lmf/org/w3c/dom/traversal/NodeFilter;

.field private fRoot:Lmf/org/w3c/dom/Node;

.field private fWhatToShow:I


# direct methods
.method public constructor <init>(Lmf/org/apache/xerces/dom/DocumentImpl;Lmf/org/w3c/dom/Node;ILmf/org/w3c/dom/traversal/NodeFilter;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fWhatToShow:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fDetach:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fForward:Z

    iput-object p1, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fDocument:Lmf/org/apache/xerces/dom/DocumentImpl;

    iput-object p2, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fRoot:Lmf/org/w3c/dom/Node;

    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fCurrentNode:Lmf/org/w3c/dom/Node;

    iput p3, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fWhatToShow:I

    iput-object p4, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fNodeFilter:Lmf/org/w3c/dom/traversal/NodeFilter;

    iput-boolean p5, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fEntityReferenceExpansion:Z

    return-void
.end method


# virtual methods
.method acceptNode(Lmf/org/w3c/dom/Node;)Z
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-object v2, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fNodeFilter:Lmf/org/w3c/dom/traversal/NodeFilter;

    if-nez v2, :cond_2

    iget v2, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fWhatToShow:I

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v3

    add-int/lit8 v3, v3, -0x1

    shl-int v3, v0, v3

    and-int/2addr v2, v3

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    iget v2, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fWhatToShow:I

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v3

    add-int/lit8 v3, v3, -0x1

    shl-int v3, v0, v3

    and-int/2addr v2, v3

    if-eqz v2, :cond_3

    iget-object v2, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fNodeFilter:Lmf/org/w3c/dom/traversal/NodeFilter;

    invoke-interface {v2, p1}, Lmf/org/w3c/dom/traversal/NodeFilter;->acceptNode(Lmf/org/w3c/dom/Node;)S

    move-result v2

    if-eq v2, v0, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public detach()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fDetach:Z

    iget-object v0, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fDocument:Lmf/org/apache/xerces/dom/DocumentImpl;

    invoke-virtual {v0, p0}, Lmf/org/apache/xerces/dom/DocumentImpl;->removeNodeIterator(Lmf/org/w3c/dom/traversal/NodeIterator;)V

    return-void
.end method

.method public getExpandEntityReferences()Z
    .locals 1

    iget-boolean v0, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fEntityReferenceExpansion:Z

    return v0
.end method

.method public getFilter()Lmf/org/w3c/dom/traversal/NodeFilter;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fNodeFilter:Lmf/org/w3c/dom/traversal/NodeFilter;

    return-object v0
.end method

.method public getRoot()Lmf/org/w3c/dom/Node;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fRoot:Lmf/org/w3c/dom/Node;

    return-object v0
.end method

.method public getWhatToShow()I
    .locals 1

    iget v0, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fWhatToShow:I

    return v0
.end method

.method matchNodeOrParent(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fCurrentNode:Lmf/org/w3c/dom/Node;

    if-nez v2, :cond_1

    move-object v0, v1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fCurrentNode:Lmf/org/w3c/dom/Node;

    :goto_1
    iget-object v2, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fRoot:Lmf/org/w3c/dom/Node;

    if-ne v0, v2, :cond_2

    move-object v0, v1

    goto :goto_0

    :cond_2
    if-eq p1, v0, :cond_0

    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v0

    goto :goto_1
.end method

.method public nextNode()Lmf/org/w3c/dom/Node;
    .locals 7

    const/4 v5, 0x1

    const/4 v2, 0x0

    iget-boolean v3, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fDetach:Z

    if-eqz v3, :cond_0

    new-instance v3, Lmf/org/w3c/dom/DOMException;

    const/16 v4, 0xb

    const-string/jumbo v5, "http://www.w3.org/dom/DOMTR"

    const-string v6, "INVALID_STATE_ERR"

    invoke-static {v5, v6, v2}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v3

    :cond_0
    iget-object v3, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fRoot:Lmf/org/w3c/dom/Node;

    if-nez v3, :cond_2

    :cond_1
    :goto_0
    return-object v2

    :cond_2
    iget-object v1, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fCurrentNode:Lmf/org/w3c/dom/Node;

    const/4 v0, 0x0

    :cond_3
    if-nez v0, :cond_1

    iget-boolean v3, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fForward:Z

    if-nez v3, :cond_4

    if-eqz v1, :cond_4

    iget-object v1, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fCurrentNode:Lmf/org/w3c/dom/Node;

    :goto_1
    iput-boolean v5, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fForward:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->acceptNode(Lmf/org/w3c/dom/Node;)Z

    move-result v0

    if-eqz v0, :cond_3

    iput-object v1, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fCurrentNode:Lmf/org/w3c/dom/Node;

    iget-object v2, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fCurrentNode:Lmf/org/w3c/dom/Node;

    goto :goto_0

    :cond_4
    iget-boolean v3, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fEntityReferenceExpansion:Z

    if-nez v3, :cond_5

    if-eqz v1, :cond_5

    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_5

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3}, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->nextNode(Lmf/org/w3c/dom/Node;Z)Lmf/org/w3c/dom/Node;

    move-result-object v1

    goto :goto_1

    :cond_5
    invoke-virtual {p0, v1, v5}, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->nextNode(Lmf/org/w3c/dom/Node;Z)Lmf/org/w3c/dom/Node;

    move-result-object v1

    goto :goto_1
.end method

.method nextNode(Lmf/org/w3c/dom/Node;Z)Lmf/org/w3c/dom/Node;
    .locals 4

    const/4 v2, 0x0

    if-nez p1, :cond_1

    iget-object v1, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fRoot:Lmf/org/w3c/dom/Node;

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    if-eqz p2, :cond_2

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->hasChildNodes()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v1

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fRoot:Lmf/org/w3c/dom/Node;

    if-ne p1, v3, :cond_3

    move-object v1, v2

    goto :goto_0

    :cond_3
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_4

    iget-object v3, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fRoot:Lmf/org/w3c/dom/Node;

    if-ne v0, v3, :cond_5

    :cond_4
    move-object v1, v2

    goto :goto_0

    :cond_5
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v0

    goto :goto_1
.end method

.method public previousNode()Lmf/org/w3c/dom/Node;
    .locals 7

    const/4 v2, 0x0

    iget-boolean v3, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fDetach:Z

    if-eqz v3, :cond_0

    new-instance v3, Lmf/org/w3c/dom/DOMException;

    const/16 v4, 0xb

    const-string/jumbo v5, "http://www.w3.org/dom/DOMTR"

    const-string v6, "INVALID_STATE_ERR"

    invoke-static {v5, v6, v2}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v3

    :cond_0
    iget-object v3, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fRoot:Lmf/org/w3c/dom/Node;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fCurrentNode:Lmf/org/w3c/dom/Node;

    if-nez v3, :cond_2

    :cond_1
    :goto_0
    return-object v2

    :cond_2
    iget-object v1, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fCurrentNode:Lmf/org/w3c/dom/Node;

    const/4 v0, 0x0

    :cond_3
    if-nez v0, :cond_1

    iget-boolean v3, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fForward:Z

    if-eqz v3, :cond_4

    if-eqz v1, :cond_4

    iget-object v1, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fCurrentNode:Lmf/org/w3c/dom/Node;

    :goto_1
    const/4 v3, 0x0

    iput-boolean v3, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fForward:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->acceptNode(Lmf/org/w3c/dom/Node;)Z

    move-result v0

    if-eqz v0, :cond_3

    iput-object v1, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fCurrentNode:Lmf/org/w3c/dom/Node;

    iget-object v2, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fCurrentNode:Lmf/org/w3c/dom/Node;

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->previousNode(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object v1

    goto :goto_1
.end method

.method previousNode(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;
    .locals 3

    iget-object v1, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fRoot:Lmf/org/w3c/dom/Node;

    if-ne p1, v1, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getPreviousSibling()Lmf/org/w3c/dom/Node;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->hasChildNodes()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fEntityReferenceExpansion:Z

    if-nez v1, :cond_3

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    :cond_3
    :goto_1
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->hasChildNodes()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getLastChild()Lmf/org/w3c/dom/Node;

    move-result-object v0

    goto :goto_1
.end method

.method public removeNode(Lmf/org/w3c/dom/Node;)V
    .locals 3

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->matchNodeOrParent(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v2, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fForward:Z

    if-eqz v2, :cond_2

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->previousNode(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object v2

    iput-object v2, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fCurrentNode:Lmf/org/w3c/dom/Node;

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->nextNode(Lmf/org/w3c/dom/Node;Z)Lmf/org/w3c/dom/Node;

    move-result-object v1

    if-eqz v1, :cond_3

    iput-object v1, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fCurrentNode:Lmf/org/w3c/dom/Node;

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->previousNode(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object v2

    iput-object v2, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fCurrentNode:Lmf/org/w3c/dom/Node;

    const/4 v2, 0x1

    iput-boolean v2, p0, Lmf/org/apache/xerces/dom/NodeIteratorImpl;->fForward:Z

    goto :goto_0
.end method

.class public Lmf/org/apache/xerces/dom/TreeWalkerImpl;
.super Ljava/lang/Object;
.source "TreeWalkerImpl.java"

# interfaces
.implements Lmf/org/w3c/dom/traversal/TreeWalker;


# instance fields
.field fCurrentNode:Lmf/org/w3c/dom/Node;

.field private fEntityReferenceExpansion:Z

.field fNodeFilter:Lmf/org/w3c/dom/traversal/NodeFilter;

.field fRoot:Lmf/org/w3c/dom/Node;

.field private fUseIsSameNode:Z

.field fWhatToShow:I


# direct methods
.method public constructor <init>(Lmf/org/w3c/dom/Node;ILmf/org/w3c/dom/traversal/NodeFilter;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->fEntityReferenceExpansion:Z

    const/4 v0, -0x1

    iput v0, p0, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->fWhatToShow:I

    iput-object p1, p0, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->fCurrentNode:Lmf/org/w3c/dom/Node;

    iput-object p1, p0, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->fRoot:Lmf/org/w3c/dom/Node;

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->useIsSameNode(Lmf/org/w3c/dom/Node;)Z

    move-result v0

    iput-boolean v0, p0, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->fUseIsSameNode:Z

    iput p2, p0, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->fWhatToShow:I

    iput-object p3, p0, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->fNodeFilter:Lmf/org/w3c/dom/traversal/NodeFilter;

    iput-boolean p4, p0, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->fEntityReferenceExpansion:Z

    return-void
.end method

.method private isSameNode(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Z
    .locals 1

    iget-boolean v0, p0, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->fUseIsSameNode:Z

    if-eqz v0, :cond_0

    invoke-interface {p1, p2}, Lmf/org/w3c/dom/Node;->isSameNode(Lmf/org/w3c/dom/Node;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    if-ne p1, p2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private useIsSameNode(Lmf/org/w3c/dom/Node;)Z
    .locals 5

    const/4 v1, 0x0

    instance-of v2, p1, Lmf/org/apache/xerces/dom/NodeImpl;

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/16 v3, 0x9

    if-ne v2, v3, :cond_2

    check-cast p1, Lmf/org/w3c/dom/Document;

    move-object v0, p1

    :goto_1
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lmf/org/w3c/dom/Document;->getImplementation()Lmf/org/w3c/dom/DOMImplementation;

    move-result-object v2

    const-string v3, "Core"

    const-string v4, "3.0"

    invoke-interface {v2, v3, v4}, Lmf/org/w3c/dom/DOMImplementation;->hasFeature(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getOwnerDocument()Lmf/org/w3c/dom/Document;

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method acceptNode(Lmf/org/w3c/dom/Node;)S
    .locals 4

    const/4 v1, 0x3

    const/4 v0, 0x1

    iget-object v2, p0, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->fNodeFilter:Lmf/org/w3c/dom/traversal/NodeFilter;

    if-nez v2, :cond_1

    iget v2, p0, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->fWhatToShow:I

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v3

    add-int/lit8 v3, v3, -0x1

    shl-int v3, v0, v3

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    iget v2, p0, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->fWhatToShow:I

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v3

    add-int/lit8 v3, v3, -0x1

    shl-int/2addr v0, v3

    and-int/2addr v0, v2

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->fNodeFilter:Lmf/org/w3c/dom/traversal/NodeFilter;

    invoke-interface {v0, p1}, Lmf/org/w3c/dom/traversal/NodeFilter;->acceptNode(Lmf/org/w3c/dom/Node;)S

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method public firstChild()Lmf/org/w3c/dom/Node;
    .locals 2

    iget-object v1, p0, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->fCurrentNode:Lmf/org/w3c/dom/Node;

    if-nez v1, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->fCurrentNode:Lmf/org/w3c/dom/Node;

    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->getFirstChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-object v0, p0, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->fCurrentNode:Lmf/org/w3c/dom/Node;

    goto :goto_0
.end method

.method public getCurrentNode()Lmf/org/w3c/dom/Node;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->fCurrentNode:Lmf/org/w3c/dom/Node;

    return-object v0
.end method

.method public getExpandEntityReferences()Z
    .locals 1

    iget-boolean v0, p0, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->fEntityReferenceExpansion:Z

    return v0
.end method

.method public getFilter()Lmf/org/w3c/dom/traversal/NodeFilter;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->fNodeFilter:Lmf/org/w3c/dom/traversal/NodeFilter;

    return-object v0
.end method

.method getFirstChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;
    .locals 5

    const/4 v1, 0x0

    if-nez p1, :cond_1

    move-object v2, v1

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    iget-boolean v3, p0, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->fEntityReferenceExpansion:Z

    if-nez v3, :cond_2

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_2

    move-object v2, v1

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v2

    if-nez v2, :cond_3

    move-object v2, v1

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->acceptNode(Lmf/org/w3c/dom/Node;)S

    move-result v0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_5

    invoke-interface {v2}, Lmf/org/w3c/dom/Node;->hasChildNodes()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->getFirstChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object v1

    if-nez v1, :cond_4

    invoke-virtual {p0, v2, p1}, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->getNextSibling(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object v2

    goto :goto_0

    :cond_4
    move-object v2, v1

    goto :goto_0

    :cond_5
    invoke-virtual {p0, v2, p1}, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->getNextSibling(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object v2

    goto :goto_0
.end method

.method getLastChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;
    .locals 5

    const/4 v1, 0x0

    if-nez p1, :cond_1

    move-object v2, v1

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    iget-boolean v3, p0, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->fEntityReferenceExpansion:Z

    if-nez v3, :cond_2

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_2

    move-object v2, v1

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getLastChild()Lmf/org/w3c/dom/Node;

    move-result-object v2

    if-nez v2, :cond_3

    move-object v2, v1

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->acceptNode(Lmf/org/w3c/dom/Node;)S

    move-result v0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_5

    invoke-interface {v2}, Lmf/org/w3c/dom/Node;->hasChildNodes()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->getLastChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object v1

    if-nez v1, :cond_4

    invoke-virtual {p0, v2, p1}, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->getPreviousSibling(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object v2

    goto :goto_0

    :cond_4
    move-object v2, v1

    goto :goto_0

    :cond_5
    invoke-virtual {p0, v2, p1}, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->getPreviousSibling(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object v2

    goto :goto_0
.end method

.method getNextSibling(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->fRoot:Lmf/org/w3c/dom/Node;

    invoke-virtual {p0, p1, v0}, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->getNextSibling(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method getNextSibling(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;
    .locals 6

    const/4 v5, 0x3

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-direct {p0, p1, p2}, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->isSameNode(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    move-object v2, v1

    :cond_1
    :goto_0
    return-object v2

    :cond_2
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v2

    if-nez v2, :cond_6

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-direct {p0, v2, p2}, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->isSameNode(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    move-object v2, v1

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->acceptNode(Lmf/org/w3c/dom/Node;)S

    move-result v3

    if-ne v3, v5, :cond_5

    invoke-virtual {p0, v2, p2}, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->getNextSibling(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object v2

    goto :goto_0

    :cond_5
    move-object v2, v1

    goto :goto_0

    :cond_6
    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->acceptNode(Lmf/org/w3c/dom/Node;)S

    move-result v0

    const/4 v4, 0x1

    if-eq v0, v4, :cond_1

    if-ne v0, v5, :cond_8

    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->getFirstChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object v1

    if-nez v1, :cond_7

    invoke-virtual {p0, v2, p2}, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->getNextSibling(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object v2

    goto :goto_0

    :cond_7
    move-object v2, v1

    goto :goto_0

    :cond_8
    invoke-virtual {p0, v2, p2}, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->getNextSibling(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object v2

    goto :goto_0
.end method

.method getParentNode(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;
    .locals 4

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    iget-object v3, p0, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->fRoot:Lmf/org/w3c/dom/Node;

    invoke-direct {p0, p1, v3}, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->isSameNode(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    move-object v1, v2

    :cond_1
    :goto_0
    return-object v1

    :cond_2
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v1

    if-nez v1, :cond_3

    move-object v1, v2

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->acceptNode(Lmf/org/w3c/dom/Node;)S

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->getParentNode(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object v1

    goto :goto_0
.end method

.method getPreviousSibling(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->fRoot:Lmf/org/w3c/dom/Node;

    invoke-virtual {p0, p1, v0}, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->getPreviousSibling(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method getPreviousSibling(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;
    .locals 6

    const/4 v5, 0x3

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-direct {p0, p1, p2}, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->isSameNode(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    move-object v2, v1

    :cond_1
    :goto_0
    return-object v2

    :cond_2
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getPreviousSibling()Lmf/org/w3c/dom/Node;

    move-result-object v2

    if-nez v2, :cond_6

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-direct {p0, v2, p2}, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->isSameNode(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    move-object v2, v1

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->acceptNode(Lmf/org/w3c/dom/Node;)S

    move-result v3

    if-ne v3, v5, :cond_5

    invoke-virtual {p0, v2, p2}, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->getPreviousSibling(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object v2

    goto :goto_0

    :cond_5
    move-object v2, v1

    goto :goto_0

    :cond_6
    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->acceptNode(Lmf/org/w3c/dom/Node;)S

    move-result v0

    const/4 v4, 0x1

    if-eq v0, v4, :cond_1

    if-ne v0, v5, :cond_8

    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->getLastChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object v1

    if-nez v1, :cond_7

    invoke-virtual {p0, v2, p2}, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->getPreviousSibling(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object v2

    goto :goto_0

    :cond_7
    move-object v2, v1

    goto :goto_0

    :cond_8
    invoke-virtual {p0, v2, p2}, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->getPreviousSibling(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object v2

    goto :goto_0
.end method

.method public getRoot()Lmf/org/w3c/dom/Node;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->fRoot:Lmf/org/w3c/dom/Node;

    return-object v0
.end method

.method public getWhatToShow()I
    .locals 1

    iget v0, p0, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->fWhatToShow:I

    return v0
.end method

.method public lastChild()Lmf/org/w3c/dom/Node;
    .locals 2

    iget-object v1, p0, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->fCurrentNode:Lmf/org/w3c/dom/Node;

    if-nez v1, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->fCurrentNode:Lmf/org/w3c/dom/Node;

    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->getLastChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-object v0, p0, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->fCurrentNode:Lmf/org/w3c/dom/Node;

    goto :goto_0
.end method

.method public nextNode()Lmf/org/w3c/dom/Node;
    .locals 4

    const/4 v2, 0x0

    iget-object v3, p0, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->fCurrentNode:Lmf/org/w3c/dom/Node;

    if-nez v3, :cond_0

    move-object v1, v2

    :goto_0
    return-object v1

    :cond_0
    iget-object v3, p0, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->fCurrentNode:Lmf/org/w3c/dom/Node;

    invoke-virtual {p0, v3}, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->getFirstChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object v1

    if-eqz v1, :cond_1

    iput-object v1, p0, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->fCurrentNode:Lmf/org/w3c/dom/Node;

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->fCurrentNode:Lmf/org/w3c/dom/Node;

    invoke-virtual {p0, v3}, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->getNextSibling(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object v1

    if-eqz v1, :cond_2

    iput-object v1, p0, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->fCurrentNode:Lmf/org/w3c/dom/Node;

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->fCurrentNode:Lmf/org/w3c/dom/Node;

    invoke-virtual {p0, v3}, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->getParentNode(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object v0

    :goto_1
    if-nez v0, :cond_3

    move-object v1, v2

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->getNextSibling(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object v1

    if-eqz v1, :cond_4

    iput-object v1, p0, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->fCurrentNode:Lmf/org/w3c/dom/Node;

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->getParentNode(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object v0

    goto :goto_1
.end method

.method public nextSibling()Lmf/org/w3c/dom/Node;
    .locals 2

    iget-object v1, p0, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->fCurrentNode:Lmf/org/w3c/dom/Node;

    if-nez v1, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->fCurrentNode:Lmf/org/w3c/dom/Node;

    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->getNextSibling(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-object v0, p0, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->fCurrentNode:Lmf/org/w3c/dom/Node;

    goto :goto_0
.end method

.method public parentNode()Lmf/org/w3c/dom/Node;
    .locals 2

    iget-object v1, p0, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->fCurrentNode:Lmf/org/w3c/dom/Node;

    if-nez v1, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->fCurrentNode:Lmf/org/w3c/dom/Node;

    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->getParentNode(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-object v0, p0, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->fCurrentNode:Lmf/org/w3c/dom/Node;

    goto :goto_0
.end method

.method public previousNode()Lmf/org/w3c/dom/Node;
    .locals 5

    const/4 v3, 0x0

    iget-object v4, p0, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->fCurrentNode:Lmf/org/w3c/dom/Node;

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    iget-object v4, p0, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->fCurrentNode:Lmf/org/w3c/dom/Node;

    invoke-virtual {p0, v4}, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->getPreviousSibling(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object v2

    if-nez v2, :cond_2

    iget-object v4, p0, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->fCurrentNode:Lmf/org/w3c/dom/Node;

    invoke-virtual {p0, v4}, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->getParentNode(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object v2

    if-eqz v2, :cond_0

    iput-object v2, p0, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->fCurrentNode:Lmf/org/w3c/dom/Node;

    iget-object v3, p0, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->fCurrentNode:Lmf/org/w3c/dom/Node;

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->getLastChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object v0

    move-object v1, v0

    :goto_1
    if-nez v0, :cond_3

    move-object v0, v1

    if-eqz v0, :cond_4

    iput-object v0, p0, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->fCurrentNode:Lmf/org/w3c/dom/Node;

    iget-object v3, p0, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->fCurrentNode:Lmf/org/w3c/dom/Node;

    goto :goto_0

    :cond_3
    move-object v1, v0

    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->getLastChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object v0

    goto :goto_1

    :cond_4
    if-eqz v2, :cond_0

    iput-object v2, p0, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->fCurrentNode:Lmf/org/w3c/dom/Node;

    iget-object v3, p0, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->fCurrentNode:Lmf/org/w3c/dom/Node;

    goto :goto_0
.end method

.method public previousSibling()Lmf/org/w3c/dom/Node;
    .locals 2

    iget-object v1, p0, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->fCurrentNode:Lmf/org/w3c/dom/Node;

    if-nez v1, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->fCurrentNode:Lmf/org/w3c/dom/Node;

    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->getPreviousSibling(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-object v0, p0, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->fCurrentNode:Lmf/org/w3c/dom/Node;

    goto :goto_0
.end method

.method public setCurrentNode(Lmf/org/w3c/dom/Node;)V
    .locals 4

    if-nez p1, :cond_0

    const-string/jumbo v1, "http://www.w3.org/dom/DOMTR"

    const-string v2, "NOT_SUPPORTED_ERR"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lmf/org/w3c/dom/DOMException;

    const/16 v2, 0x9

    invoke-direct {v1, v2, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    :cond_0
    iput-object p1, p0, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->fCurrentNode:Lmf/org/w3c/dom/Node;

    return-void
.end method

.method public setWhatShow(I)V
    .locals 0

    iput p1, p0, Lmf/org/apache/xerces/dom/TreeWalkerImpl;->fWhatToShow:I

    return-void
.end method

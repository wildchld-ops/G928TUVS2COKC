.class public Lmf/org/apache/xerces/dom/DeferredElementImpl;
.super Lmf/org/apache/xerces/dom/ElementImpl;
.source "DeferredElementImpl.java"

# interfaces
.implements Lmf/org/apache/xerces/dom/DeferredNode;


# static fields
.field static final serialVersionUID:J = -0x6a74ccb2df45c8baL


# instance fields
.field protected transient fNodeIndex:I


# direct methods
.method constructor <init>(Lmf/org/apache/xerces/dom/DeferredDocumentImpl;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmf/org/apache/xerces/dom/ElementImpl;-><init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;)V

    iput p2, p0, Lmf/org/apache/xerces/dom/DeferredElementImpl;->fNodeIndex:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/DeferredElementImpl;->needsSyncChildren(Z)V

    return-void
.end method


# virtual methods
.method public final getNodeIndex()I
    .locals 1

    iget v0, p0, Lmf/org/apache/xerces/dom/DeferredElementImpl;->fNodeIndex:I

    return v0
.end method

.method protected final synchronizeChildren()V
    .locals 2

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/DeferredElementImpl;->ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    iget v1, p0, Lmf/org/apache/xerces/dom/DeferredElementImpl;->fNodeIndex:I

    invoke-virtual {v0, p0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->synchronizeChildren(Lmf/org/apache/xerces/dom/ParentNode;I)V

    return-void
.end method

.method protected final synchronizeData()V
    .locals 7

    const/4 v5, 0x0

    const/4 v6, -0x1

    invoke-virtual {p0, v5}, Lmf/org/apache/xerces/dom/DeferredElementImpl;->needsSyncData(Z)V

    iget-object v4, p0, Lmf/org/apache/xerces/dom/DeferredElementImpl;->ownerDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    check-cast v4, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    iget-boolean v3, v4, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->mutationEvents:Z

    iput-boolean v5, v4, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->mutationEvents:Z

    iget v5, p0, Lmf/org/apache/xerces/dom/DeferredElementImpl;->fNodeIndex:I

    invoke-virtual {v4, v5}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeName(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lmf/org/apache/xerces/dom/DeferredElementImpl;->name:Ljava/lang/String;

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/DeferredElementImpl;->setupDefaultAttributes()V

    iget v5, p0, Lmf/org/apache/xerces/dom/DeferredElementImpl;->fNodeIndex:I

    invoke-virtual {v4, v5}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeExtra(I)I

    move-result v2

    if-eq v2, v6, :cond_1

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/DeferredElementImpl;->getAttributes()Lmf/org/w3c/dom/NamedNodeMap;

    move-result-object v1

    :cond_0
    invoke-virtual {v4, v2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeObject(I)Lmf/org/apache/xerces/dom/DeferredNode;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-interface {v1, v0}, Lmf/org/w3c/dom/NamedNodeMap;->setNamedItem(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    invoke-virtual {v4, v2}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getPrevSibling(I)I

    move-result v2

    if-ne v2, v6, :cond_0

    :cond_1
    iput-boolean v3, v4, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->mutationEvents:Z

    return-void
.end method

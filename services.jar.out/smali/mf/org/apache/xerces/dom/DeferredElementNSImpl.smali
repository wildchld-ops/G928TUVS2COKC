.class public Lmf/org/apache/xerces/dom/DeferredElementNSImpl;
.super Lmf/org/apache/xerces/dom/ElementNSImpl;
.source "DeferredElementNSImpl.java"

# interfaces
.implements Lmf/org/apache/xerces/dom/DeferredNode;


# static fields
.field static final serialVersionUID:J = -0x456a4409e1232119L


# instance fields
.field protected transient fNodeIndex:I


# direct methods
.method constructor <init>(Lmf/org/apache/xerces/dom/DeferredDocumentImpl;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lmf/org/apache/xerces/dom/ElementNSImpl;-><init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;)V

    iput p2, p0, Lmf/org/apache/xerces/dom/DeferredElementNSImpl;->fNodeIndex:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/DeferredElementNSImpl;->needsSyncChildren(Z)V

    return-void
.end method


# virtual methods
.method public final getNodeIndex()I
    .locals 1

    iget v0, p0, Lmf/org/apache/xerces/dom/DeferredElementNSImpl;->fNodeIndex:I

    return v0
.end method

.method protected final synchronizeChildren()V
    .locals 2

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/DeferredElementNSImpl;->ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    iget v1, p0, Lmf/org/apache/xerces/dom/DeferredElementNSImpl;->fNodeIndex:I

    invoke-virtual {v0, p0, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->synchronizeChildren(Lmf/org/apache/xerces/dom/ParentNode;I)V

    return-void
.end method

.method protected final synchronizeData()V
    .locals 11

    const/16 v10, 0x3a

    const/4 v7, 0x0

    const/4 v9, -0x1

    invoke-virtual {p0, v7}, Lmf/org/apache/xerces/dom/DeferredElementNSImpl;->needsSyncData(Z)V

    iget-object v5, p0, Lmf/org/apache/xerces/dom/DeferredElementNSImpl;->ownerDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    check-cast v5, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;

    iget-boolean v4, v5, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->mutationEvents:Z

    iput-boolean v7, v5, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->mutationEvents:Z

    iget v7, p0, Lmf/org/apache/xerces/dom/DeferredElementNSImpl;->fNodeIndex:I

    invoke-virtual {v5, v7}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeName(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lmf/org/apache/xerces/dom/DeferredElementNSImpl;->name:Ljava/lang/String;

    iget-object v7, p0, Lmf/org/apache/xerces/dom/DeferredElementNSImpl;->name:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-gez v3, :cond_3

    iget-object v7, p0, Lmf/org/apache/xerces/dom/DeferredElementNSImpl;->name:Ljava/lang/String;

    iput-object v7, p0, Lmf/org/apache/xerces/dom/DeferredElementNSImpl;->localName:Ljava/lang/String;

    :goto_0
    iget v7, p0, Lmf/org/apache/xerces/dom/DeferredElementNSImpl;->fNodeIndex:I

    invoke-virtual {v5, v7}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeURI(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lmf/org/apache/xerces/dom/DeferredElementNSImpl;->namespaceURI:Ljava/lang/String;

    iget v7, p0, Lmf/org/apache/xerces/dom/DeferredElementNSImpl;->fNodeIndex:I

    invoke-virtual {v5, v7}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getTypeInfo(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lmf/org/apache/xerces/xs/XSTypeDefinition;

    iput-object v7, p0, Lmf/org/apache/xerces/dom/DeferredElementNSImpl;->type:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/DeferredElementNSImpl;->setupDefaultAttributes()V

    iget v7, p0, Lmf/org/apache/xerces/dom/DeferredElementNSImpl;->fNodeIndex:I

    invoke-virtual {v5, v7}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeExtra(I)I

    move-result v1

    if-eq v1, v9, :cond_2

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/DeferredElementNSImpl;->getAttributes()Lmf/org/w3c/dom/NamedNodeMap;

    move-result-object v2

    const/4 v6, 0x0

    :cond_0
    invoke-virtual {v5, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getNodeObject(I)Lmf/org/apache/xerces/dom/DeferredNode;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/AttrImpl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/AttrImpl;->getSpecified()Z

    move-result v7

    if-nez v7, :cond_4

    if-nez v6, :cond_1

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/AttrImpl;->getNamespaceURI()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_4

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/AttrImpl;->getNamespaceURI()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lmf/org/apache/xerces/xni/NamespaceContext;->XMLNS_URI:Ljava/lang/String;

    if-eq v7, v8, :cond_4

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/AttrImpl;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    if-gez v7, :cond_4

    :cond_1
    const/4 v6, 0x1

    invoke-interface {v2, v0}, Lmf/org/w3c/dom/NamedNodeMap;->setNamedItemNS(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    :goto_1
    invoke-virtual {v5, v1}, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->getPrevSibling(I)I

    move-result v1

    if-ne v1, v9, :cond_0

    :cond_2
    iput-boolean v4, v5, Lmf/org/apache/xerces/dom/DeferredDocumentImpl;->mutationEvents:Z

    return-void

    :cond_3
    iget-object v7, p0, Lmf/org/apache/xerces/dom/DeferredElementNSImpl;->name:Ljava/lang/String;

    add-int/lit8 v8, v3, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lmf/org/apache/xerces/dom/DeferredElementNSImpl;->localName:Ljava/lang/String;

    goto :goto_0

    :cond_4
    invoke-interface {v2, v0}, Lmf/org/w3c/dom/NamedNodeMap;->setNamedItem(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    goto :goto_1
.end method

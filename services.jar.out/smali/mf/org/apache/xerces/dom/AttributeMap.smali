.class public Lmf/org/apache/xerces/dom/AttributeMap;
.super Lmf/org/apache/xerces/dom/NamedNodeMapImpl;
.source "AttributeMap.java"


# static fields
.field static final serialVersionUID:J = 0x7b21d4678ec641a7L


# direct methods
.method protected constructor <init>(Lmf/org/apache/xerces/dom/ElementImpl;Lmf/org/apache/xerces/dom/NamedNodeMapImpl;)V
    .locals 1

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;-><init>(Lmf/org/apache/xerces/dom/NodeImpl;)V

    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Lmf/org/apache/xerces/dom/AttributeMap;->cloneContent(Lmf/org/apache/xerces/dom/NamedNodeMapImpl;)V

    iget-object v0, p0, Lmf/org/apache/xerces/dom/AttributeMap;->nodes:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/AttributeMap;->hasDefaults(Z)V

    :cond_0
    return-void
.end method

.method private final remove(Lmf/org/apache/xerces/dom/AttrImpl;IZ)Lmf/org/w3c/dom/Node;
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v5, p0, Lmf/org/apache/xerces/dom/AttributeMap;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v5}, Lmf/org/apache/xerces/dom/NodeImpl;->ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v4

    invoke-virtual {p1}, Lmf/org/apache/xerces/dom/AttrImpl;->getNodeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lmf/org/apache/xerces/dom/AttrImpl;->isIdAttribute()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p1}, Lmf/org/apache/xerces/dom/AttrImpl;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->removeIdentifier(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttributeMap;->hasDefaults()Z

    move-result v5

    if-eqz v5, :cond_4

    if-eqz p3, :cond_4

    iget-object v5, p0, Lmf/org/apache/xerces/dom/AttributeMap;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    check-cast v5, Lmf/org/apache/xerces/dom/ElementImpl;

    invoke-virtual {v5}, Lmf/org/apache/xerces/dom/ElementImpl;->getDefaultAttributes()Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;->getNamedItem(Ljava/lang/String;)Lmf/org/w3c/dom/Node;

    move-result-object v1

    if-eqz v1, :cond_3

    add-int/lit8 v5, p2, 0x1

    invoke-virtual {p0, v3, v5}, Lmf/org/apache/xerces/dom/AttributeMap;->findNamePoint(Ljava/lang/String;I)I

    move-result v5

    if-gez v5, :cond_3

    invoke-interface {v1, v8}, Lmf/org/w3c/dom/Node;->cloneNode(Z)Lmf/org/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    move-object v5, v0

    check-cast v5, Lmf/org/apache/xerces/dom/AttrNSImpl;

    invoke-virtual {p1}, Lmf/org/apache/xerces/dom/AttrImpl;->getNamespaceURI()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lmf/org/apache/xerces/dom/AttrNSImpl;->namespaceURI:Ljava/lang/String;

    :cond_1
    iget-object v5, p0, Lmf/org/apache/xerces/dom/AttributeMap;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    iput-object v5, v0, Lmf/org/apache/xerces/dom/NodeImpl;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v0, v8}, Lmf/org/apache/xerces/dom/NodeImpl;->isOwned(Z)V

    invoke-virtual {v0, v7}, Lmf/org/apache/xerces/dom/NodeImpl;->isSpecified(Z)V

    iget-object v5, p0, Lmf/org/apache/xerces/dom/AttributeMap;->nodes:Ljava/util/List;

    invoke-interface {v5, p2, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lmf/org/apache/xerces/dom/AttrImpl;->isIdAttribute()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/NodeImpl;->getNodeValue()Ljava/lang/String;

    move-result-object v6

    iget-object v5, p0, Lmf/org/apache/xerces/dom/AttributeMap;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    check-cast v5, Lmf/org/apache/xerces/dom/ElementImpl;

    invoke-virtual {v4, v6, v5}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->putIdentifier(Ljava/lang/String;Lmf/org/w3c/dom/Element;)V

    :cond_2
    :goto_0
    iput-object v4, p1, Lmf/org/apache/xerces/dom/AttrImpl;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {p1, v7}, Lmf/org/apache/xerces/dom/AttrImpl;->isOwned(Z)V

    invoke-virtual {p1, v8}, Lmf/org/apache/xerces/dom/AttrImpl;->isSpecified(Z)V

    invoke-virtual {p1, v7}, Lmf/org/apache/xerces/dom/AttrImpl;->isIdAttribute(Z)V

    iget-object v5, p0, Lmf/org/apache/xerces/dom/AttributeMap;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v4, p1, v5, v3}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->removedAttrNode(Lmf/org/apache/xerces/dom/AttrImpl;Lmf/org/apache/xerces/dom/NodeImpl;Ljava/lang/String;)V

    return-object p1

    :cond_3
    iget-object v5, p0, Lmf/org/apache/xerces/dom/AttributeMap;->nodes:Ljava/util/List;

    invoke-interface {v5, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    iget-object v5, p0, Lmf/org/apache/xerces/dom/AttributeMap;->nodes:Ljava/util/List;

    invoke-interface {v5, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method protected final addItem(Lmf/org/w3c/dom/Node;)I
    .locals 4

    move-object v0, p1

    check-cast v0, Lmf/org/apache/xerces/dom/AttrImpl;

    iget-object v2, p0, Lmf/org/apache/xerces/dom/AttributeMap;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    iput-object v2, v0, Lmf/org/apache/xerces/dom/AttrImpl;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/dom/AttrImpl;->isOwned(Z)V

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/AttrImpl;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/AttrImpl;->getLocalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lmf/org/apache/xerces/dom/AttributeMap;->findNamePoint(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_0

    iget-object v2, p0, Lmf/org/apache/xerces/dom/AttributeMap;->nodes:Ljava/util/List;

    invoke-interface {v2, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :goto_0
    iget-object v2, p0, Lmf/org/apache/xerces/dom/AttributeMap;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v2}, Lmf/org/apache/xerces/dom/NodeImpl;->ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->setAttrNode(Lmf/org/apache/xerces/dom/AttrImpl;Lmf/org/apache/xerces/dom/AttrImpl;)V

    return v1

    :cond_0
    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/AttrImpl;->getNodeName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lmf/org/apache/xerces/dom/AttributeMap;->findNamePoint(Ljava/lang/String;I)I

    move-result v1

    if-ltz v1, :cond_1

    iget-object v2, p0, Lmf/org/apache/xerces/dom/AttributeMap;->nodes:Ljava/util/List;

    invoke-interface {v2, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    rsub-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lmf/org/apache/xerces/dom/AttributeMap;->nodes:Ljava/util/List;

    if-nez v2, :cond_2

    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lmf/org/apache/xerces/dom/AttributeMap;->nodes:Ljava/util/List;

    :cond_2
    iget-object v2, p0, Lmf/org/apache/xerces/dom/AttributeMap;->nodes:Ljava/util/List;

    invoke-interface {v2, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method protected cloneContent(Lmf/org/apache/xerces/dom/NamedNodeMapImpl;)V
    .locals 7

    const/4 v6, 0x1

    iget-object v4, p1, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;->nodes:Ljava/util/List;

    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_0

    iget-object v5, p0, Lmf/org/apache/xerces/dom/AttributeMap;->nodes:Ljava/util/List;

    if-nez v5, :cond_1

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, p0, Lmf/org/apache/xerces/dom/AttributeMap;->nodes:Ljava/util/List;

    :goto_0
    const/4 v1, 0x0

    :goto_1
    if-lt v1, v3, :cond_2

    :cond_0
    return-void

    :cond_1
    iget-object v5, p0, Lmf/org/apache/xerces/dom/AttributeMap;->nodes:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    goto :goto_0

    :cond_2
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v2, v6}, Lmf/org/apache/xerces/dom/NodeImpl;->cloneNode(Z)Lmf/org/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v2}, Lmf/org/apache/xerces/dom/NodeImpl;->isSpecified()Z

    move-result v5

    invoke-virtual {v0, v5}, Lmf/org/apache/xerces/dom/NodeImpl;->isSpecified(Z)V

    iget-object v5, p0, Lmf/org/apache/xerces/dom/AttributeMap;->nodes:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lmf/org/apache/xerces/dom/AttributeMap;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    iput-object v5, v0, Lmf/org/apache/xerces/dom/NodeImpl;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v0, v6}, Lmf/org/apache/xerces/dom/NodeImpl;->isOwned(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public cloneMap(Lmf/org/apache/xerces/dom/NodeImpl;)Lmf/org/apache/xerces/dom/NamedNodeMapImpl;
    .locals 2

    new-instance v0, Lmf/org/apache/xerces/dom/AttributeMap;

    check-cast p1, Lmf/org/apache/xerces/dom/ElementImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lmf/org/apache/xerces/dom/AttributeMap;-><init>(Lmf/org/apache/xerces/dom/ElementImpl;Lmf/org/apache/xerces/dom/NamedNodeMapImpl;)V

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttributeMap;->hasDefaults()Z

    move-result v1

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/dom/AttributeMap;->hasDefaults(Z)V

    invoke-virtual {v0, p0}, Lmf/org/apache/xerces/dom/AttributeMap;->cloneContent(Lmf/org/apache/xerces/dom/NamedNodeMapImpl;)V

    return-object v0
.end method

.method protected final internalRemoveNamedItem(Ljava/lang/String;Z)Lmf/org/w3c/dom/Node;
    .locals 5

    const/4 v2, 0x0

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttributeMap;->isReadOnly()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "http://www.w3.org/dom/DOMTR"

    const-string v4, "NO_MODIFICATION_ALLOWED_ERR"

    invoke-static {v3, v4, v2}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lmf/org/w3c/dom/DOMException;

    const/4 v3, 0x7

    invoke-direct {v2, v3, v1}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v2

    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p0, p1, v3}, Lmf/org/apache/xerces/dom/AttributeMap;->findNamePoint(Ljava/lang/String;I)I

    move-result v0

    if-gez v0, :cond_1

    if-eqz p2, :cond_2

    const-string/jumbo v3, "http://www.w3.org/dom/DOMTR"

    const-string v4, "NOT_FOUND_ERR"

    invoke-static {v3, v4, v2}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lmf/org/w3c/dom/DOMException;

    const/16 v3, 0x8

    invoke-direct {v2, v3, v1}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v2

    :cond_1
    iget-object v2, p0, Lmf/org/apache/xerces/dom/AttributeMap;->nodes:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmf/org/apache/xerces/dom/AttrImpl;

    const/4 v3, 0x1

    invoke-direct {p0, v2, v0, v3}, Lmf/org/apache/xerces/dom/AttributeMap;->remove(Lmf/org/apache/xerces/dom/AttrImpl;IZ)Lmf/org/w3c/dom/Node;

    move-result-object v2

    :cond_2
    return-object v2
.end method

.method protected final internalRemoveNamedItemNS(Ljava/lang/String;Ljava/lang/String;Z)Lmf/org/w3c/dom/Node;
    .locals 12

    iget-object v9, p0, Lmf/org/apache/xerces/dom/AttributeMap;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v9}, Lmf/org/apache/xerces/dom/NodeImpl;->ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v8

    iget-boolean v9, v8, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v9, :cond_0

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttributeMap;->isReadOnly()Z

    move-result v9

    if-eqz v9, :cond_0

    const-string/jumbo v9, "http://www.w3.org/dom/DOMTR"

    const-string v10, "NO_MODIFICATION_ALLOWED_ERR"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-instance v9, Lmf/org/w3c/dom/DOMException;

    const/4 v10, 0x7

    invoke-direct {v9, v10, v5}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v9

    :cond_0
    invoke-virtual {p0, p1, p2}, Lmf/org/apache/xerces/dom/AttributeMap;->findNamePoint(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_2

    if-eqz p3, :cond_1

    const-string/jumbo v9, "http://www.w3.org/dom/DOMTR"

    const-string v10, "NOT_FOUND_ERR"

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-instance v9, Lmf/org/w3c/dom/DOMException;

    const/16 v10, 0x8

    invoke-direct {v9, v10, v5}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v9

    :cond_1
    const/4 v6, 0x0

    :goto_0
    return-object v6

    :cond_2
    iget-object v9, p0, Lmf/org/apache/xerces/dom/AttributeMap;->nodes:Ljava/util/List;

    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmf/org/apache/xerces/dom/AttrImpl;

    invoke-virtual {v6}, Lmf/org/apache/xerces/dom/AttrImpl;->isIdAttribute()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {v6}, Lmf/org/apache/xerces/dom/AttrImpl;->getValue()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->removeIdentifier(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v6}, Lmf/org/apache/xerces/dom/AttrImpl;->getNodeName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttributeMap;->hasDefaults()Z

    move-result v9

    if-eqz v9, :cond_8

    iget-object v9, p0, Lmf/org/apache/xerces/dom/AttributeMap;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    check-cast v9, Lmf/org/apache/xerces/dom/ElementImpl;

    invoke-virtual {v9}, Lmf/org/apache/xerces/dom/ElementImpl;->getDefaultAttributes()Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual {v2, v7}, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;->getNamedItem(Ljava/lang/String;)Lmf/org/w3c/dom/Node;

    move-result-object v1

    if-eqz v1, :cond_7

    const/4 v9, 0x0

    invoke-virtual {p0, v7, v9}, Lmf/org/apache/xerces/dom/AttributeMap;->findNamePoint(Ljava/lang/String;I)I

    move-result v4

    if-ltz v4, :cond_6

    add-int/lit8 v9, v4, 0x1

    invoke-virtual {p0, v7, v9}, Lmf/org/apache/xerces/dom/AttributeMap;->findNamePoint(Ljava/lang/String;I)I

    move-result v9

    if-gez v9, :cond_6

    const/4 v9, 0x1

    invoke-interface {v1, v9}, Lmf/org/w3c/dom/Node;->cloneNode(Z)Lmf/org/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/NodeImpl;

    iget-object v9, p0, Lmf/org/apache/xerces/dom/AttributeMap;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    iput-object v9, v0, Lmf/org/apache/xerces/dom/NodeImpl;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_4

    move-object v9, v0

    check-cast v9, Lmf/org/apache/xerces/dom/AttrNSImpl;

    iput-object p1, v9, Lmf/org/apache/xerces/dom/AttrNSImpl;->namespaceURI:Ljava/lang/String;

    :cond_4
    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Lmf/org/apache/xerces/dom/NodeImpl;->isOwned(Z)V

    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Lmf/org/apache/xerces/dom/NodeImpl;->isSpecified(Z)V

    iget-object v9, p0, Lmf/org/apache/xerces/dom/AttributeMap;->nodes:Ljava/util/List;

    invoke-interface {v9, v3, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/NodeImpl;->isIdAttribute()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/NodeImpl;->getNodeValue()Ljava/lang/String;

    move-result-object v10

    iget-object v9, p0, Lmf/org/apache/xerces/dom/AttributeMap;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    check-cast v9, Lmf/org/apache/xerces/dom/ElementImpl;

    invoke-virtual {v8, v10, v9}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->putIdentifier(Ljava/lang/String;Lmf/org/w3c/dom/Element;)V

    :cond_5
    :goto_1
    iput-object v8, v6, Lmf/org/apache/xerces/dom/AttrImpl;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Lmf/org/apache/xerces/dom/AttrImpl;->isOwned(Z)V

    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Lmf/org/apache/xerces/dom/AttrImpl;->isSpecified(Z)V

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Lmf/org/apache/xerces/dom/AttrImpl;->isIdAttribute(Z)V

    iget-object v9, p0, Lmf/org/apache/xerces/dom/AttributeMap;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v8, v6, v9, p2}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->removedAttrNode(Lmf/org/apache/xerces/dom/AttrImpl;Lmf/org/apache/xerces/dom/NodeImpl;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_6
    iget-object v9, p0, Lmf/org/apache/xerces/dom/AttributeMap;->nodes:Ljava/util/List;

    invoke-interface {v9, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_7
    iget-object v9, p0, Lmf/org/apache/xerces/dom/AttributeMap;->nodes:Ljava/util/List;

    invoke-interface {v9, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_8
    iget-object v9, p0, Lmf/org/apache/xerces/dom/AttributeMap;->nodes:Ljava/util/List;

    invoke-interface {v9, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1
.end method

.method moveSpecifiedAttributes(Lmf/org/apache/xerces/dom/AttributeMap;)V
    .locals 5

    const/4 v3, 0x0

    iget-object v4, p1, Lmf/org/apache/xerces/dom/AttributeMap;->nodes:Ljava/util/List;

    if-eqz v4, :cond_0

    iget-object v4, p1, Lmf/org/apache/xerces/dom/AttributeMap;->nodes:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    add-int/lit8 v1, v2, -0x1

    :goto_1
    if-gez v1, :cond_1

    return-void

    :cond_0
    move v2, v3

    goto :goto_0

    :cond_1
    iget-object v4, p1, Lmf/org/apache/xerces/dom/AttributeMap;->nodes:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/AttrImpl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/AttrImpl;->isSpecified()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-direct {p1, v0, v1, v3}, Lmf/org/apache/xerces/dom/AttributeMap;->remove(Lmf/org/apache/xerces/dom/AttrImpl;IZ)Lmf/org/w3c/dom/Node;

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/AttrImpl;->getLocalName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/AttributeMap;->setNamedItem(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/AttributeMap;->setNamedItemNS(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    goto :goto_2
.end method

.method protected reconcileDefaults(Lmf/org/apache/xerces/dom/NamedNodeMapImpl;)V
    .locals 10

    const/4 v9, 0x1

    const/4 v7, 0x0

    iget-object v8, p0, Lmf/org/apache/xerces/dom/AttributeMap;->nodes:Ljava/util/List;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lmf/org/apache/xerces/dom/AttributeMap;->nodes:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v6

    :goto_0
    add-int/lit8 v4, v6, -0x1

    :goto_1
    if-gez v4, :cond_2

    if-nez p1, :cond_4

    :cond_0
    :goto_2
    return-void

    :cond_1
    move v6, v7

    goto :goto_0

    :cond_2
    iget-object v8, p0, Lmf/org/apache/xerces/dom/AttributeMap;->nodes:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/AttrImpl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/AttrImpl;->isSpecified()Z

    move-result v8

    if-nez v8, :cond_3

    invoke-direct {p0, v0, v4, v7}, Lmf/org/apache/xerces/dom/AttributeMap;->remove(Lmf/org/apache/xerces/dom/AttrImpl;IZ)Lmf/org/w3c/dom/Node;

    :cond_3
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    :cond_4
    iget-object v8, p0, Lmf/org/apache/xerces/dom/AttributeMap;->nodes:Ljava/util/List;

    if-eqz v8, :cond_5

    iget-object v8, p0, Lmf/org/apache/xerces/dom/AttributeMap;->nodes:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-nez v8, :cond_6

    :cond_5
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/dom/AttributeMap;->cloneContent(Lmf/org/apache/xerces/dom/NamedNodeMapImpl;)V

    goto :goto_2

    :cond_6
    iget-object v8, p1, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;->nodes:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v3

    const/4 v5, 0x0

    :goto_3
    if-ge v5, v3, :cond_0

    iget-object v8, p1, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;->nodes:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmf/org/apache/xerces/dom/AttrImpl;

    invoke-virtual {v2}, Lmf/org/apache/xerces/dom/AttrImpl;->getNodeName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8, v7}, Lmf/org/apache/xerces/dom/AttributeMap;->findNamePoint(Ljava/lang/String;I)I

    move-result v4

    if-gez v4, :cond_7

    rsub-int/lit8 v4, v4, -0x1

    invoke-virtual {v2, v9}, Lmf/org/apache/xerces/dom/AttrImpl;->cloneNode(Z)Lmf/org/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/dom/NodeImpl;

    iget-object v8, p0, Lmf/org/apache/xerces/dom/AttributeMap;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    iput-object v8, v1, Lmf/org/apache/xerces/dom/NodeImpl;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v1, v9}, Lmf/org/apache/xerces/dom/NodeImpl;->isOwned(Z)V

    invoke-virtual {v1, v7}, Lmf/org/apache/xerces/dom/NodeImpl;->isSpecified(Z)V

    iget-object v8, p0, Lmf/org/apache/xerces/dom/AttributeMap;->nodes:Ljava/util/List;

    invoke-interface {v8, v4, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_3
.end method

.method protected removeItem(Lmf/org/w3c/dom/Node;Z)Lmf/org/w3c/dom/Node;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    const/4 v1, -0x1

    iget-object v4, p0, Lmf/org/apache/xerces/dom/AttributeMap;->nodes:Ljava/util/List;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lmf/org/apache/xerces/dom/AttributeMap;->nodes:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v3, :cond_1

    :cond_0
    :goto_1
    if-gez v1, :cond_3

    const-string/jumbo v4, "http://www.w3.org/dom/DOMTR"

    const-string v5, "NOT_FOUND_ERR"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lmf/org/w3c/dom/DOMException;

    const/16 v5, 0x8

    invoke-direct {v4, v5, v2}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v4

    :cond_1
    iget-object v4, p0, Lmf/org/apache/xerces/dom/AttributeMap;->nodes:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, p1, :cond_2

    move v1, v0

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    check-cast p1, Lmf/org/apache/xerces/dom/AttrImpl;

    invoke-direct {p0, p1, v1, p2}, Lmf/org/apache/xerces/dom/AttributeMap;->remove(Lmf/org/apache/xerces/dom/AttrImpl;IZ)Lmf/org/w3c/dom/Node;

    move-result-object v4

    return-object v4
.end method

.method public removeNamedItem(Ljava/lang/String;)Lmf/org/w3c/dom/Node;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lmf/org/apache/xerces/dom/AttributeMap;->internalRemoveNamedItem(Ljava/lang/String;Z)Lmf/org/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method public removeNamedItemNS(Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/Node;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lmf/org/apache/xerces/dom/AttributeMap;->internalRemoveNamedItemNS(Ljava/lang/String;Ljava/lang/String;Z)Lmf/org/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method safeRemoveNamedItem(Ljava/lang/String;)Lmf/org/w3c/dom/Node;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lmf/org/apache/xerces/dom/AttributeMap;->internalRemoveNamedItem(Ljava/lang/String;Z)Lmf/org/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method safeRemoveNamedItemNS(Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/Node;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lmf/org/apache/xerces/dom/AttributeMap;->internalRemoveNamedItemNS(Ljava/lang/String;Ljava/lang/String;Z)Lmf/org/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method public setNamedItem(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    iget-object v5, p0, Lmf/org/apache/xerces/dom/AttributeMap;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v5}, Lmf/org/apache/xerces/dom/NodeImpl;->ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v5

    iget-boolean v1, v5, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttributeMap;->isReadOnly()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string/jumbo v5, "http://www.w3.org/dom/DOMTR"

    const-string v6, "NO_MODIFICATION_ALLOWED_ERR"

    invoke-static {v5, v6, v7}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lmf/org/w3c/dom/DOMException;

    const/4 v6, 0x7

    invoke-direct {v5, v6, v3}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v5

    :cond_0
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getOwnerDocument()Lmf/org/w3c/dom/Document;

    move-result-object v5

    iget-object v6, p0, Lmf/org/apache/xerces/dom/AttributeMap;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v6}, Lmf/org/apache/xerces/dom/NodeImpl;->ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v6

    if-eq v5, v6, :cond_1

    const-string/jumbo v5, "http://www.w3.org/dom/DOMTR"

    const-string v6, "WRONG_DOCUMENT_ERR"

    invoke-static {v5, v6, v7}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lmf/org/w3c/dom/DOMException;

    const/4 v6, 0x4

    invoke-direct {v5, v6, v3}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v5

    :cond_1
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_2

    const-string/jumbo v5, "http://www.w3.org/dom/DOMTR"

    const-string v6, "HIERARCHY_REQUEST_ERR"

    invoke-static {v5, v6, v7}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lmf/org/w3c/dom/DOMException;

    const/4 v6, 0x3

    invoke-direct {v5, v6, v3}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v5

    :cond_2
    move-object v0, p1

    check-cast v0, Lmf/org/apache/xerces/dom/AttrImpl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/AttrImpl;->isOwned()Z

    move-result v5

    if-eqz v5, :cond_3

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/AttrImpl;->getOwnerElement()Lmf/org/w3c/dom/Element;

    move-result-object v5

    iget-object v6, p0, Lmf/org/apache/xerces/dom/AttributeMap;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    if-eq v5, v6, :cond_5

    const-string/jumbo v5, "http://www.w3.org/dom/DOMTR"

    const-string v6, "INUSE_ATTRIBUTE_ERR"

    invoke-static {v5, v6, v7}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lmf/org/w3c/dom/DOMException;

    const/16 v6, 0xa

    invoke-direct {v5, v6, v3}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v5

    :cond_3
    iget-object v5, p0, Lmf/org/apache/xerces/dom/AttributeMap;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    iput-object v5, v0, Lmf/org/apache/xerces/dom/AttrImpl;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v0, v9}, Lmf/org/apache/xerces/dom/AttrImpl;->isOwned(Z)V

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/AttrImpl;->getNodeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5, v8}, Lmf/org/apache/xerces/dom/AttributeMap;->findNamePoint(Ljava/lang/String;I)I

    move-result v2

    const/4 v4, 0x0

    if-ltz v2, :cond_6

    iget-object v5, p0, Lmf/org/apache/xerces/dom/AttributeMap;->nodes:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmf/org/apache/xerces/dom/AttrImpl;

    iget-object v5, p0, Lmf/org/apache/xerces/dom/AttributeMap;->nodes:Ljava/util/List;

    invoke-interface {v5, v2, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v5, p0, Lmf/org/apache/xerces/dom/AttributeMap;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v5}, Lmf/org/apache/xerces/dom/NodeImpl;->ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v5

    iput-object v5, v4, Lmf/org/apache/xerces/dom/AttrImpl;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v4, v8}, Lmf/org/apache/xerces/dom/AttrImpl;->isOwned(Z)V

    invoke-virtual {v4, v9}, Lmf/org/apache/xerces/dom/AttrImpl;->isSpecified(Z)V

    :goto_0
    iget-object v5, p0, Lmf/org/apache/xerces/dom/AttributeMap;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v5}, Lmf/org/apache/xerces/dom/NodeImpl;->ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v5

    invoke-virtual {v5, v0, v4}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->setAttrNode(Lmf/org/apache/xerces/dom/AttrImpl;Lmf/org/apache/xerces/dom/AttrImpl;)V

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/AttrImpl;->isNormalized()Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p0, Lmf/org/apache/xerces/dom/AttributeMap;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v5, v8}, Lmf/org/apache/xerces/dom/NodeImpl;->isNormalized(Z)V

    :cond_4
    move-object p1, v4

    :cond_5
    return-object p1

    :cond_6
    rsub-int/lit8 v2, v2, -0x1

    iget-object v5, p0, Lmf/org/apache/xerces/dom/AttributeMap;->nodes:Ljava/util/List;

    if-nez v5, :cond_7

    new-instance v5, Ljava/util/ArrayList;

    const/4 v6, 0x5

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, p0, Lmf/org/apache/xerces/dom/AttributeMap;->nodes:Ljava/util/List;

    :cond_7
    iget-object v5, p0, Lmf/org/apache/xerces/dom/AttributeMap;->nodes:Ljava/util/List;

    invoke-interface {v5, v2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public setNamedItemNS(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    iget-object v5, p0, Lmf/org/apache/xerces/dom/AttributeMap;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v5}, Lmf/org/apache/xerces/dom/NodeImpl;->ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v5

    iget-boolean v1, v5, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttributeMap;->isReadOnly()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string/jumbo v5, "http://www.w3.org/dom/DOMTR"

    const-string v6, "NO_MODIFICATION_ALLOWED_ERR"

    invoke-static {v5, v6, v7}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lmf/org/w3c/dom/DOMException;

    const/4 v6, 0x7

    invoke-direct {v5, v6, v3}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v5

    :cond_0
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getOwnerDocument()Lmf/org/w3c/dom/Document;

    move-result-object v5

    iget-object v6, p0, Lmf/org/apache/xerces/dom/AttributeMap;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v6}, Lmf/org/apache/xerces/dom/NodeImpl;->ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v6

    if-eq v5, v6, :cond_1

    const-string/jumbo v5, "http://www.w3.org/dom/DOMTR"

    const-string v6, "WRONG_DOCUMENT_ERR"

    invoke-static {v5, v6, v7}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lmf/org/w3c/dom/DOMException;

    const/4 v6, 0x4

    invoke-direct {v5, v6, v3}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v5

    :cond_1
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v5

    const/4 v6, 0x2

    if-eq v5, v6, :cond_2

    const-string/jumbo v5, "http://www.w3.org/dom/DOMTR"

    const-string v6, "HIERARCHY_REQUEST_ERR"

    invoke-static {v5, v6, v7}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lmf/org/w3c/dom/DOMException;

    const/4 v6, 0x3

    invoke-direct {v5, v6, v3}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v5

    :cond_2
    move-object v0, p1

    check-cast v0, Lmf/org/apache/xerces/dom/AttrImpl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/AttrImpl;->isOwned()Z

    move-result v5

    if-eqz v5, :cond_3

    if-eqz v1, :cond_5

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/AttrImpl;->getOwnerElement()Lmf/org/w3c/dom/Element;

    move-result-object v5

    iget-object v6, p0, Lmf/org/apache/xerces/dom/AttributeMap;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    if-eq v5, v6, :cond_5

    const-string/jumbo v5, "http://www.w3.org/dom/DOMTR"

    const-string v6, "INUSE_ATTRIBUTE_ERR"

    invoke-static {v5, v6, v7}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Lmf/org/w3c/dom/DOMException;

    const/16 v6, 0xa

    invoke-direct {v5, v6, v3}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v5

    :cond_3
    iget-object v5, p0, Lmf/org/apache/xerces/dom/AttributeMap;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    iput-object v5, v0, Lmf/org/apache/xerces/dom/AttrImpl;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v0, v9}, Lmf/org/apache/xerces/dom/AttrImpl;->isOwned(Z)V

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/AttrImpl;->getNamespaceURI()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/AttrImpl;->getLocalName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Lmf/org/apache/xerces/dom/AttributeMap;->findNamePoint(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const/4 v4, 0x0

    if-ltz v2, :cond_6

    iget-object v5, p0, Lmf/org/apache/xerces/dom/AttributeMap;->nodes:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmf/org/apache/xerces/dom/AttrImpl;

    iget-object v5, p0, Lmf/org/apache/xerces/dom/AttributeMap;->nodes:Ljava/util/List;

    invoke-interface {v5, v2, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v5, p0, Lmf/org/apache/xerces/dom/AttributeMap;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v5}, Lmf/org/apache/xerces/dom/NodeImpl;->ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v5

    iput-object v5, v4, Lmf/org/apache/xerces/dom/AttrImpl;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v4, v8}, Lmf/org/apache/xerces/dom/AttrImpl;->isOwned(Z)V

    invoke-virtual {v4, v9}, Lmf/org/apache/xerces/dom/AttrImpl;->isSpecified(Z)V

    :goto_0
    iget-object v5, p0, Lmf/org/apache/xerces/dom/AttributeMap;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v5}, Lmf/org/apache/xerces/dom/NodeImpl;->ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v5

    invoke-virtual {v5, v0, v4}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->setAttrNode(Lmf/org/apache/xerces/dom/AttrImpl;Lmf/org/apache/xerces/dom/AttrImpl;)V

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/AttrImpl;->isNormalized()Z

    move-result v5

    if-nez v5, :cond_4

    iget-object v5, p0, Lmf/org/apache/xerces/dom/AttributeMap;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v5, v8}, Lmf/org/apache/xerces/dom/NodeImpl;->isNormalized(Z)V

    :cond_4
    move-object p1, v4

    :cond_5
    return-object p1

    :cond_6
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5, v8}, Lmf/org/apache/xerces/dom/AttributeMap;->findNamePoint(Ljava/lang/String;I)I

    move-result v2

    if-ltz v2, :cond_7

    iget-object v5, p0, Lmf/org/apache/xerces/dom/AttributeMap;->nodes:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmf/org/apache/xerces/dom/AttrImpl;

    iget-object v5, p0, Lmf/org/apache/xerces/dom/AttributeMap;->nodes:Ljava/util/List;

    invoke-interface {v5, v2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    :cond_7
    rsub-int/lit8 v2, v2, -0x1

    iget-object v5, p0, Lmf/org/apache/xerces/dom/AttributeMap;->nodes:Ljava/util/List;

    if-nez v5, :cond_8

    new-instance v5, Ljava/util/ArrayList;

    const/4 v6, 0x5

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v5, p0, Lmf/org/apache/xerces/dom/AttributeMap;->nodes:Ljava/util/List;

    :cond_8
    iget-object v5, p0, Lmf/org/apache/xerces/dom/AttributeMap;->nodes:Ljava/util/List;

    invoke-interface {v5, v2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0
.end method

.class public Lmf/org/apache/xerces/dom/AttrImpl;
.super Lmf/org/apache/xerces/dom/NodeImpl;
.source "AttrImpl.java"

# interfaces
.implements Lmf/org/w3c/dom/Attr;
.implements Lmf/org/w3c/dom/TypeInfo;


# static fields
.field static final DTD_URI:Ljava/lang/String; = "http://www.w3.org/TR/REC-xml"

.field static final serialVersionUID:J = 0x64ff9c955f6bcfc6L


# instance fields
.field protected name:Ljava/lang/String;

.field transient type:Ljava/lang/Object;

.field protected value:Ljava/lang/Object;


# direct methods
.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lmf/org/apache/xerces/dom/NodeImpl;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/dom/AttrImpl;->value:Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/dom/NodeImpl;-><init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/dom/AttrImpl;->value:Ljava/lang/Object;

    iput-object p2, p0, Lmf/org/apache/xerces/dom/AttrImpl;->name:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/dom/AttrImpl;->isSpecified(Z)V

    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/dom/AttrImpl;->hasStringValue(Z)V

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/AttrImpl;->needsSyncChildren(Z)V

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->needsSyncChildren()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->synchronizeChildren()V

    :cond_0
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    return-void
.end method


# virtual methods
.method checkNormalizationAfterInsert(Lmf/org/apache/xerces/dom/ChildNode;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x3

    invoke-virtual {p1}, Lmf/org/apache/xerces/dom/ChildNode;->getNodeType()S

    move-result v2

    if-ne v2, v3, :cond_3

    invoke-virtual {p1}, Lmf/org/apache/xerces/dom/ChildNode;->previousSibling()Lmf/org/apache/xerces/dom/ChildNode;

    move-result-object v1

    iget-object v0, p1, Lmf/org/apache/xerces/dom/ChildNode;->nextSibling:Lmf/org/apache/xerces/dom/ChildNode;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lmf/org/apache/xerces/dom/ChildNode;->getNodeType()S

    move-result v2

    if-eq v2, v3, :cond_1

    :cond_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/ChildNode;->getNodeType()S

    move-result v2

    if-ne v2, v3, :cond_2

    :cond_1
    invoke-virtual {p0, v4}, Lmf/org/apache/xerces/dom/AttrImpl;->isNormalized(Z)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-virtual {p1}, Lmf/org/apache/xerces/dom/ChildNode;->isNormalized()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0, v4}, Lmf/org/apache/xerces/dom/AttrImpl;->isNormalized(Z)V

    goto :goto_0
.end method

.method checkNormalizationAfterRemove(Lmf/org/apache/xerces/dom/ChildNode;)V
    .locals 3

    const/4 v2, 0x3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lmf/org/apache/xerces/dom/ChildNode;->getNodeType()S

    move-result v1

    if-ne v1, v2, :cond_0

    iget-object v0, p1, Lmf/org/apache/xerces/dom/ChildNode;->nextSibling:Lmf/org/apache/xerces/dom/ChildNode;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/ChildNode;->getNodeType()S

    move-result v1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/dom/AttrImpl;->isNormalized(Z)V

    :cond_0
    return-void
.end method

.method public cloneNode(Z)Lmf/org/w3c/dom/Node;
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->needsSyncChildren()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->synchronizeChildren()V

    :cond_0
    invoke-super {p0, p1}, Lmf/org/apache/xerces/dom/NodeImpl;->cloneNode(Z)Lmf/org/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/dom/AttrImpl;

    invoke-virtual {v1}, Lmf/org/apache/xerces/dom/AttrImpl;->hasStringValue()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    iput-object v2, v1, Lmf/org/apache/xerces/dom/AttrImpl;->value:Ljava/lang/Object;

    iget-object v0, p0, Lmf/org/apache/xerces/dom/AttrImpl;->value:Ljava/lang/Object;

    check-cast v0, Lmf/org/w3c/dom/Node;

    :goto_0
    if-nez v0, :cond_2

    :cond_1
    invoke-virtual {v1, v3}, Lmf/org/apache/xerces/dom/AttrImpl;->isSpecified(Z)V

    return-object v1

    :cond_2
    invoke-interface {v0, v3}, Lmf/org/w3c/dom/Node;->cloneNode(Z)Lmf/org/w3c/dom/Node;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/dom/AttrImpl;->appendChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v0

    goto :goto_0
.end method

.method public getChildNodes()Lmf/org/w3c/dom/NodeList;
    .locals 1

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->needsSyncChildren()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->synchronizeChildren()V

    :cond_0
    return-object p0
.end method

.method public getElement()Lmf/org/w3c/dom/Element;
    .locals 1

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->isOwned()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/dom/AttrImpl;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    :goto_0
    check-cast v0, Lmf/org/w3c/dom/Element;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFirstChild()Lmf/org/w3c/dom/Node;
    .locals 1

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->needsSyncChildren()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->synchronizeChildren()V

    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->makeChildNode()V

    iget-object v0, p0, Lmf/org/apache/xerces/dom/AttrImpl;->value:Ljava/lang/Object;

    check-cast v0, Lmf/org/w3c/dom/Node;

    return-object v0
.end method

.method public getLastChild()Lmf/org/w3c/dom/Node;
    .locals 1

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->needsSyncChildren()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->synchronizeChildren()V

    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->lastChild()Lmf/org/apache/xerces/dom/ChildNode;

    move-result-object v0

    return-object v0
.end method

.method public getLength()I
    .locals 3

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->hasStringValue()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    iget-object v1, p0, Lmf/org/apache/xerces/dom/AttrImpl;->value:Ljava/lang/Object;

    check-cast v1, Lmf/org/apache/xerces/dom/ChildNode;

    const/4 v0, 0x0

    :goto_0
    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    iget-object v1, v1, Lmf/org/apache/xerces/dom/ChildNode;->nextSibling:Lmf/org/apache/xerces/dom/ChildNode;

    goto :goto_0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->needsSyncData()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->synchronizeData()V

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/AttrImpl;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->needsSyncData()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->synchronizeData()V

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/AttrImpl;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNodeType()S
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getNodeValue()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOwnerElement()Lmf/org/w3c/dom/Element;
    .locals 1

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->isOwned()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/dom/AttrImpl;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    :goto_0
    check-cast v0, Lmf/org/w3c/dom/Element;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSchemaTypeInfo()Lmf/org/w3c/dom/TypeInfo;
    .locals 0

    return-object p0
.end method

.method public getSpecified()Z
    .locals 1

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->needsSyncData()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->synchronizeData()V

    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->isSpecified()Z

    move-result v0

    return v0
.end method

.method public getTypeName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/dom/AttrImpl;->type:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getTypeNamespace()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/dom/AttrImpl;->type:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "http://www.w3.org/TR/REC-xml"

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getValue()Ljava/lang/String;
    .locals 6

    const/4 v5, 0x5

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->needsSyncData()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->synchronizeData()V

    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->needsSyncChildren()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->synchronizeChildren()V

    :cond_1
    iget-object v4, p0, Lmf/org/apache/xerces/dom/AttrImpl;->value:Ljava/lang/Object;

    if-nez v4, :cond_2

    const-string v4, ""

    :goto_0
    return-object v4

    :cond_2
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->hasStringValue()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lmf/org/apache/xerces/dom/AttrImpl;->value:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lmf/org/apache/xerces/dom/AttrImpl;->value:Ljava/lang/Object;

    check-cast v1, Lmf/org/apache/xerces/dom/ChildNode;

    const/4 v0, 0x0

    invoke-virtual {v1}, Lmf/org/apache/xerces/dom/ChildNode;->getNodeType()S

    move-result v4

    if-ne v4, v5, :cond_6

    move-object v4, v1

    check-cast v4, Lmf/org/apache/xerces/dom/EntityReferenceImpl;

    invoke-virtual {v4}, Lmf/org/apache/xerces/dom/EntityReferenceImpl;->getEntityRefValue()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iget-object v2, v1, Lmf/org/apache/xerces/dom/ChildNode;->nextSibling:Lmf/org/apache/xerces/dom/ChildNode;

    if-eqz v2, :cond_4

    if-nez v0, :cond_7

    :cond_4
    if-nez v0, :cond_5

    const-string v0, ""

    :cond_5
    move-object v4, v0

    goto :goto_0

    :cond_6
    invoke-virtual {v1}, Lmf/org/apache/xerces/dom/ChildNode;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_7
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    :goto_2
    if-nez v2, :cond_8

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_8
    invoke-virtual {v2}, Lmf/org/apache/xerces/dom/ChildNode;->getNodeType()S

    move-result v4

    if-ne v4, v5, :cond_a

    move-object v4, v2

    check-cast v4, Lmf/org/apache/xerces/dom/EntityReferenceImpl;

    invoke-virtual {v4}, Lmf/org/apache/xerces/dom/EntityReferenceImpl;->getEntityRefValue()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9

    const-string v4, ""

    goto :goto_0

    :cond_9
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_3
    iget-object v2, v2, Lmf/org/apache/xerces/dom/ChildNode;->nextSibling:Lmf/org/apache/xerces/dom/ChildNode;

    goto :goto_2

    :cond_a
    invoke-virtual {v2}, Lmf/org/apache/xerces/dom/ChildNode;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3
.end method

.method public hasChildNodes()Z
    .locals 1

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->needsSyncChildren()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->synchronizeChildren()V

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/AttrImpl;->value:Ljava/lang/Object;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public insertBefore(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lmf/org/apache/xerces/dom/AttrImpl;->internalInsertBefore(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;Z)Lmf/org/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method internalInsertBefore(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;Z)Lmf/org/w3c/dom/Node;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/dom/AttrImpl;->ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v10

    iget-boolean v3, v10, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v14

    const/16 v15, 0xb

    if-ne v14, v15, :cond_4

    if-eqz v3, :cond_0

    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v5

    :goto_0
    if-nez v5, :cond_1

    :cond_0
    :goto_1
    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->hasChildNodes()Z

    move-result v14

    if-nez v14, :cond_3

    :goto_2
    return-object p1

    :cond_1
    move-object/from16 v0, p0

    invoke-virtual {v10, v0, v5}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->isKidOK(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Z

    move-result v14

    if-nez v14, :cond_2

    const-string/jumbo v14, "http://www.w3.org/dom/DOMTR"

    const-string v15, "HIERARCHY_REQUEST_ERR"

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    new-instance v14, Lmf/org/w3c/dom/DOMException;

    const/4 v15, 0x3

    invoke-direct {v14, v15, v7}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v14

    :cond_2
    invoke-interface {v5}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v5

    goto :goto_0

    :cond_3
    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v14

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v14, v1}, Lmf/org/apache/xerces/dom/AttrImpl;->insertBefore(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    goto :goto_1

    :cond_4
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    if-ne v0, v1, :cond_5

    invoke-interface/range {p2 .. p2}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object p2

    invoke-virtual/range {p0 .. p1}, Lmf/org/apache/xerces/dom/AttrImpl;->removeChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    invoke-virtual/range {p0 .. p2}, Lmf/org/apache/xerces/dom/AttrImpl;->insertBefore(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    goto :goto_2

    :cond_5
    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/dom/AttrImpl;->needsSyncChildren()Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/dom/AttrImpl;->synchronizeChildren()V

    :cond_6
    if-eqz v3, :cond_e

    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/dom/AttrImpl;->isReadOnly()Z

    move-result v14

    if-eqz v14, :cond_7

    const-string/jumbo v14, "http://www.w3.org/dom/DOMTR"

    const-string v15, "NO_MODIFICATION_ALLOWED_ERR"

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    new-instance v14, Lmf/org/w3c/dom/DOMException;

    const/4 v15, 0x7

    invoke-direct {v14, v15, v7}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v14

    :cond_7
    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->getOwnerDocument()Lmf/org/w3c/dom/Document;

    move-result-object v14

    if-eq v14, v10, :cond_8

    const-string/jumbo v14, "http://www.w3.org/dom/DOMTR"

    const-string v15, "WRONG_DOCUMENT_ERR"

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    new-instance v14, Lmf/org/w3c/dom/DOMException;

    const/4 v15, 0x4

    invoke-direct {v14, v15, v7}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v14

    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v10, v0, v1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->isKidOK(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Z

    move-result v14

    if-nez v14, :cond_9

    const-string/jumbo v14, "http://www.w3.org/dom/DOMTR"

    const-string v15, "HIERARCHY_REQUEST_ERR"

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    new-instance v14, Lmf/org/w3c/dom/DOMException;

    const/4 v15, 0x3

    invoke-direct {v14, v15, v7}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v14

    :cond_9
    if-eqz p2, :cond_a

    invoke-interface/range {p2 .. p2}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v14

    move-object/from16 v0, p0

    if-eq v14, v0, :cond_a

    const-string/jumbo v14, "http://www.w3.org/dom/DOMTR"

    const-string v15, "NOT_FOUND_ERR"

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    new-instance v14, Lmf/org/w3c/dom/DOMException;

    const/16 v15, 0x8

    invoke-direct {v14, v15, v7}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v14

    :cond_a
    const/4 v13, 0x1

    move-object/from16 v2, p0

    :goto_3
    if-eqz v13, :cond_b

    if-nez v2, :cond_c

    :cond_b
    if-nez v13, :cond_e

    const-string/jumbo v14, "http://www.w3.org/dom/DOMTR"

    const-string v15, "HIERARCHY_REQUEST_ERR"

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    new-instance v14, Lmf/org/w3c/dom/DOMException;

    const/4 v15, 0x3

    invoke-direct {v14, v15, v7}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v14

    :cond_c
    move-object/from16 v0, p1

    if-eq v0, v2, :cond_d

    const/4 v13, 0x1

    :goto_4
    invoke-virtual {v2}, Lmf/org/apache/xerces/dom/NodeImpl;->parentNode()Lmf/org/apache/xerces/dom/NodeImpl;

    move-result-object v2

    goto :goto_3

    :cond_d
    const/4 v13, 0x0

    goto :goto_4

    :cond_e
    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/dom/AttrImpl;->makeChildNode()V

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v10, v0, v1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->insertingNode(Lmf/org/apache/xerces/dom/NodeImpl;Z)V

    move-object/from16 v8, p1

    check-cast v8, Lmf/org/apache/xerces/dom/ChildNode;

    invoke-virtual {v8}, Lmf/org/apache/xerces/dom/ChildNode;->parentNode()Lmf/org/apache/xerces/dom/NodeImpl;

    move-result-object v9

    if-eqz v9, :cond_f

    invoke-interface {v9, v8}, Lmf/org/w3c/dom/Node;->removeChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    :cond_f
    move-object/from16 v12, p2

    check-cast v12, Lmf/org/apache/xerces/dom/ChildNode;

    move-object/from16 v0, p0

    iput-object v0, v8, Lmf/org/apache/xerces/dom/ChildNode;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    const/4 v14, 0x1

    invoke-virtual {v8, v14}, Lmf/org/apache/xerces/dom/ChildNode;->isOwned(Z)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/dom/AttrImpl;->value:Ljava/lang/Object;

    check-cast v4, Lmf/org/apache/xerces/dom/ChildNode;

    if-nez v4, :cond_10

    move-object/from16 v0, p0

    iput-object v8, v0, Lmf/org/apache/xerces/dom/AttrImpl;->value:Ljava/lang/Object;

    const/4 v14, 0x1

    invoke-virtual {v8, v14}, Lmf/org/apache/xerces/dom/ChildNode;->isFirstChild(Z)V

    iput-object v8, v8, Lmf/org/apache/xerces/dom/ChildNode;->previousSibling:Lmf/org/apache/xerces/dom/ChildNode;

    :goto_5
    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/dom/AttrImpl;->changed()V

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v10, v0, v8, v1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->insertedNode(Lmf/org/apache/xerces/dom/NodeImpl;Lmf/org/apache/xerces/dom/NodeImpl;Z)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lmf/org/apache/xerces/dom/AttrImpl;->checkNormalizationAfterInsert(Lmf/org/apache/xerces/dom/ChildNode;)V

    goto/16 :goto_2

    :cond_10
    if-nez v12, :cond_11

    iget-object v6, v4, Lmf/org/apache/xerces/dom/ChildNode;->previousSibling:Lmf/org/apache/xerces/dom/ChildNode;

    iput-object v8, v6, Lmf/org/apache/xerces/dom/ChildNode;->nextSibling:Lmf/org/apache/xerces/dom/ChildNode;

    iput-object v6, v8, Lmf/org/apache/xerces/dom/ChildNode;->previousSibling:Lmf/org/apache/xerces/dom/ChildNode;

    iput-object v8, v4, Lmf/org/apache/xerces/dom/ChildNode;->previousSibling:Lmf/org/apache/xerces/dom/ChildNode;

    goto :goto_5

    :cond_11
    move-object/from16 v0, p2

    if-ne v0, v4, :cond_12

    const/4 v14, 0x0

    invoke-virtual {v4, v14}, Lmf/org/apache/xerces/dom/ChildNode;->isFirstChild(Z)V

    iput-object v4, v8, Lmf/org/apache/xerces/dom/ChildNode;->nextSibling:Lmf/org/apache/xerces/dom/ChildNode;

    iget-object v14, v4, Lmf/org/apache/xerces/dom/ChildNode;->previousSibling:Lmf/org/apache/xerces/dom/ChildNode;

    iput-object v14, v8, Lmf/org/apache/xerces/dom/ChildNode;->previousSibling:Lmf/org/apache/xerces/dom/ChildNode;

    iput-object v8, v4, Lmf/org/apache/xerces/dom/ChildNode;->previousSibling:Lmf/org/apache/xerces/dom/ChildNode;

    move-object/from16 v0, p0

    iput-object v8, v0, Lmf/org/apache/xerces/dom/AttrImpl;->value:Ljava/lang/Object;

    const/4 v14, 0x1

    invoke-virtual {v8, v14}, Lmf/org/apache/xerces/dom/ChildNode;->isFirstChild(Z)V

    goto :goto_5

    :cond_12
    iget-object v11, v12, Lmf/org/apache/xerces/dom/ChildNode;->previousSibling:Lmf/org/apache/xerces/dom/ChildNode;

    iput-object v12, v8, Lmf/org/apache/xerces/dom/ChildNode;->nextSibling:Lmf/org/apache/xerces/dom/ChildNode;

    iput-object v8, v11, Lmf/org/apache/xerces/dom/ChildNode;->nextSibling:Lmf/org/apache/xerces/dom/ChildNode;

    iput-object v8, v12, Lmf/org/apache/xerces/dom/ChildNode;->previousSibling:Lmf/org/apache/xerces/dom/ChildNode;

    iput-object v11, v8, Lmf/org/apache/xerces/dom/ChildNode;->previousSibling:Lmf/org/apache/xerces/dom/ChildNode;

    goto :goto_5
.end method

.method internalRemoveChild(Lmf/org/w3c/dom/Node;Z)Lmf/org/w3c/dom/Node;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v5

    iget-boolean v7, v5, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v7, :cond_1

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->isReadOnly()Z

    move-result v7

    if-eqz v7, :cond_0

    const-string/jumbo v7, "http://www.w3.org/dom/DOMTR"

    const-string v8, "NO_MODIFICATION_ALLOWED_ERR"

    invoke-static {v7, v8, v9}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v7, Lmf/org/w3c/dom/DOMException;

    const/4 v8, 0x7

    invoke-direct {v7, v8, v1}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v7

    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v7

    if-eq v7, p0, :cond_1

    const-string/jumbo v7, "http://www.w3.org/dom/DOMTR"

    const-string v8, "NOT_FOUND_ERR"

    invoke-static {v7, v8, v9}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v7, Lmf/org/w3c/dom/DOMException;

    const/16 v8, 0x8

    invoke-direct {v7, v8, v1}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v7

    :cond_1
    move-object v3, p1

    check-cast v3, Lmf/org/apache/xerces/dom/ChildNode;

    invoke-virtual {v5, p0, v3, p2}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->removingNode(Lmf/org/apache/xerces/dom/NodeImpl;Lmf/org/apache/xerces/dom/NodeImpl;Z)V

    iget-object v7, p0, Lmf/org/apache/xerces/dom/AttrImpl;->value:Ljava/lang/Object;

    if-ne v3, v7, :cond_3

    invoke-virtual {v3, v8}, Lmf/org/apache/xerces/dom/ChildNode;->isFirstChild(Z)V

    iget-object v7, v3, Lmf/org/apache/xerces/dom/ChildNode;->nextSibling:Lmf/org/apache/xerces/dom/ChildNode;

    iput-object v7, p0, Lmf/org/apache/xerces/dom/AttrImpl;->value:Ljava/lang/Object;

    iget-object v0, p0, Lmf/org/apache/xerces/dom/AttrImpl;->value:Ljava/lang/Object;

    check-cast v0, Lmf/org/apache/xerces/dom/ChildNode;

    if-eqz v0, :cond_2

    const/4 v7, 0x1

    invoke-virtual {v0, v7}, Lmf/org/apache/xerces/dom/ChildNode;->isFirstChild(Z)V

    iget-object v7, v3, Lmf/org/apache/xerces/dom/ChildNode;->previousSibling:Lmf/org/apache/xerces/dom/ChildNode;

    iput-object v7, v0, Lmf/org/apache/xerces/dom/ChildNode;->previousSibling:Lmf/org/apache/xerces/dom/ChildNode;

    :cond_2
    :goto_0
    invoke-virtual {v3}, Lmf/org/apache/xerces/dom/ChildNode;->previousSibling()Lmf/org/apache/xerces/dom/ChildNode;

    move-result-object v4

    iput-object v5, v3, Lmf/org/apache/xerces/dom/ChildNode;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v3, v8}, Lmf/org/apache/xerces/dom/ChildNode;->isOwned(Z)V

    iput-object v9, v3, Lmf/org/apache/xerces/dom/ChildNode;->nextSibling:Lmf/org/apache/xerces/dom/ChildNode;

    iput-object v9, v3, Lmf/org/apache/xerces/dom/ChildNode;->previousSibling:Lmf/org/apache/xerces/dom/ChildNode;

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->changed()V

    invoke-virtual {v5, p0, p2}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->removedNode(Lmf/org/apache/xerces/dom/NodeImpl;Z)V

    invoke-virtual {p0, v4}, Lmf/org/apache/xerces/dom/AttrImpl;->checkNormalizationAfterRemove(Lmf/org/apache/xerces/dom/ChildNode;)V

    return-object v3

    :cond_3
    iget-object v6, v3, Lmf/org/apache/xerces/dom/ChildNode;->previousSibling:Lmf/org/apache/xerces/dom/ChildNode;

    iget-object v2, v3, Lmf/org/apache/xerces/dom/ChildNode;->nextSibling:Lmf/org/apache/xerces/dom/ChildNode;

    iput-object v2, v6, Lmf/org/apache/xerces/dom/ChildNode;->nextSibling:Lmf/org/apache/xerces/dom/ChildNode;

    if-nez v2, :cond_4

    iget-object v0, p0, Lmf/org/apache/xerces/dom/AttrImpl;->value:Ljava/lang/Object;

    check-cast v0, Lmf/org/apache/xerces/dom/ChildNode;

    iput-object v6, v0, Lmf/org/apache/xerces/dom/ChildNode;->previousSibling:Lmf/org/apache/xerces/dom/ChildNode;

    goto :goto_0

    :cond_4
    iput-object v6, v2, Lmf/org/apache/xerces/dom/ChildNode;->previousSibling:Lmf/org/apache/xerces/dom/ChildNode;

    goto :goto_0
.end method

.method public isDerivedFrom(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isEqualNode(Lmf/org/w3c/dom/Node;)Z
    .locals 1

    invoke-super {p0, p1}, Lmf/org/apache/xerces/dom/NodeImpl;->isEqualNode(Lmf/org/w3c/dom/Node;)Z

    move-result v0

    return v0
.end method

.method public isId()Z
    .locals 1

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->isIdAttribute()Z

    move-result v0

    return v0
.end method

.method public item(I)Lmf/org/w3c/dom/Node;
    .locals 4

    const/4 v2, 0x0

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->hasStringValue()Z

    move-result v3

    if-eqz v3, :cond_2

    if-nez p1, :cond_0

    iget-object v3, p0, Lmf/org/apache/xerces/dom/AttrImpl;->value:Ljava/lang/Object;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->makeChildNode()V

    iget-object v2, p0, Lmf/org/apache/xerces/dom/AttrImpl;->value:Ljava/lang/Object;

    check-cast v2, Lmf/org/w3c/dom/Node;

    goto :goto_0

    :cond_2
    if-ltz p1, :cond_0

    iget-object v1, p0, Lmf/org/apache/xerces/dom/AttrImpl;->value:Ljava/lang/Object;

    check-cast v1, Lmf/org/apache/xerces/dom/ChildNode;

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p1, :cond_3

    if-nez v1, :cond_4

    :cond_3
    move-object v2, v1

    goto :goto_0

    :cond_4
    iget-object v1, v1, Lmf/org/apache/xerces/dom/ChildNode;->nextSibling:Lmf/org/apache/xerces/dom/ChildNode;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method final lastChild()Lmf/org/apache/xerces/dom/ChildNode;
    .locals 1

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->makeChildNode()V

    iget-object v0, p0, Lmf/org/apache/xerces/dom/AttrImpl;->value:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/dom/AttrImpl;->value:Ljava/lang/Object;

    check-cast v0, Lmf/org/apache/xerces/dom/ChildNode;

    iget-object v0, v0, Lmf/org/apache/xerces/dom/ChildNode;->previousSibling:Lmf/org/apache/xerces/dom/ChildNode;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final lastChild(Lmf/org/apache/xerces/dom/ChildNode;)V
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/dom/AttrImpl;->value:Ljava/lang/Object;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/dom/AttrImpl;->value:Ljava/lang/Object;

    check-cast v0, Lmf/org/apache/xerces/dom/ChildNode;

    iput-object p1, v0, Lmf/org/apache/xerces/dom/ChildNode;->previousSibling:Lmf/org/apache/xerces/dom/ChildNode;

    :cond_0
    return-void
.end method

.method protected makeChildNode()V
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->hasStringValue()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lmf/org/apache/xerces/dom/AttrImpl;->value:Ljava/lang/Object;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v2

    iget-object v1, p0, Lmf/org/apache/xerces/dom/AttrImpl;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->createTextNode(Ljava/lang/String;)Lmf/org/w3c/dom/Text;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/TextImpl;

    iput-object v0, p0, Lmf/org/apache/xerces/dom/AttrImpl;->value:Ljava/lang/Object;

    invoke-virtual {v0, v3}, Lmf/org/apache/xerces/dom/TextImpl;->isFirstChild(Z)V

    iput-object v0, v0, Lmf/org/apache/xerces/dom/TextImpl;->previousSibling:Lmf/org/apache/xerces/dom/ChildNode;

    iput-object p0, v0, Lmf/org/apache/xerces/dom/TextImpl;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v0, v3}, Lmf/org/apache/xerces/dom/TextImpl;->isOwned(Z)V

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/dom/AttrImpl;->hasStringValue(Z)V

    :cond_1
    return-void
.end method

.method public normalize()V
    .locals 6

    const/4 v5, 0x3

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->isNormalized()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->hasStringValue()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/dom/AttrImpl;->value:Ljava/lang/Object;

    check-cast v0, Lmf/org/apache/xerces/dom/ChildNode;

    move-object v1, v0

    :goto_1
    if-nez v1, :cond_2

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lmf/org/apache/xerces/dom/AttrImpl;->isNormalized(Z)V

    goto :goto_0

    :cond_2
    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v3

    if-ne v3, v5, :cond_3

    if-eqz v2, :cond_4

    invoke-interface {v2}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v3

    if-ne v3, v5, :cond_4

    move-object v3, v1

    check-cast v3, Lmf/org/w3c/dom/Text;

    invoke-interface {v2}, Lmf/org/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lmf/org/w3c/dom/Text;->appendData(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/dom/AttrImpl;->removeChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-object v2, v1

    :cond_3
    :goto_2
    move-object v1, v2

    goto :goto_1

    :cond_4
    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_3

    :cond_5
    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/dom/AttrImpl;->removeChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    goto :goto_2
.end method

.method public removeChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->hasStringValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "http://www.w3.org/dom/DOMTR"

    const-string v2, "NOT_FOUND_ERR"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lmf/org/w3c/dom/DOMException;

    const/16 v2, 0x8

    invoke-direct {v1, v2, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lmf/org/apache/xerces/dom/AttrImpl;->internalRemoveChild(Lmf/org/w3c/dom/Node;Z)Lmf/org/w3c/dom/Node;

    move-result-object v1

    return-object v1
.end method

.method rename(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->needsSyncData()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->synchronizeData()V

    :cond_0
    iput-object p1, p0, Lmf/org/apache/xerces/dom/AttrImpl;->name:Ljava/lang/String;

    return-void
.end method

.method public replaceChild(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    const/4 v1, 0x1

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->makeChildNode()V

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->replacingNode(Lmf/org/apache/xerces/dom/NodeImpl;)V

    invoke-virtual {p0, p1, p2, v1}, Lmf/org/apache/xerces/dom/AttrImpl;->internalInsertBefore(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;Z)Lmf/org/w3c/dom/Node;

    if-eq p1, p2, :cond_0

    invoke-virtual {p0, p2, v1}, Lmf/org/apache/xerces/dom/AttrImpl;->internalRemoveChild(Lmf/org/w3c/dom/Node;Z)Lmf/org/w3c/dom/Node;

    :cond_0
    invoke-virtual {v0, p0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->replacedNode(Lmf/org/apache/xerces/dom/NodeImpl;)V

    return-object p2
.end method

.method public setIdAttribute(Z)V
    .locals 1

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->needsSyncData()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->synchronizeData()V

    :cond_0
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/dom/AttrImpl;->isIdAttribute(Z)V

    return-void
.end method

.method public setNodeValue(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/dom/AttrImpl;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method protected setOwnerDocument(Lmf/org/apache/xerces/dom/CoreDocumentImpl;)V
    .locals 2

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->needsSyncChildren()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->synchronizeChildren()V

    :cond_0
    invoke-super {p0, p1}, Lmf/org/apache/xerces/dom/NodeImpl;->setOwnerDocument(Lmf/org/apache/xerces/dom/CoreDocumentImpl;)V

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->hasStringValue()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/dom/AttrImpl;->value:Ljava/lang/Object;

    check-cast v0, Lmf/org/apache/xerces/dom/ChildNode;

    :goto_0
    if-nez v0, :cond_2

    :cond_1
    return-void

    :cond_2
    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/dom/ChildNode;->setOwnerDocument(Lmf/org/apache/xerces/dom/CoreDocumentImpl;)V

    iget-object v0, v0, Lmf/org/apache/xerces/dom/ChildNode;->nextSibling:Lmf/org/apache/xerces/dom/ChildNode;

    goto :goto_0
.end method

.method public setReadOnly(ZZ)V
    .locals 3

    invoke-super {p0, p1, p2}, Lmf/org/apache/xerces/dom/NodeImpl;->setReadOnly(ZZ)V

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->needsSyncChildren()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->synchronizeChildren()V

    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->hasStringValue()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/dom/AttrImpl;->value:Ljava/lang/Object;

    check-cast v0, Lmf/org/apache/xerces/dom/ChildNode;

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/ChildNode;->getNodeType()S

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_3

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lmf/org/apache/xerces/dom/ChildNode;->setReadOnly(ZZ)V

    :cond_3
    iget-object v0, v0, Lmf/org/apache/xerces/dom/ChildNode;->nextSibling:Lmf/org/apache/xerces/dom/ChildNode;

    goto :goto_0
.end method

.method public setSpecified(Z)V
    .locals 1

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->needsSyncData()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->synchronizeData()V

    :cond_0
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/dom/AttrImpl;->isSpecified(Z)V

    return-void
.end method

.method public setType(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lmf/org/apache/xerces/dom/AttrImpl;->type:Ljava/lang/Object;

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v3

    iget-boolean v6, v3, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->isReadOnly()Z

    move-result v6

    if-eqz v6, :cond_0

    const-string/jumbo v6, "http://www.w3.org/dom/DOMTR"

    const-string v7, "NO_MODIFICATION_ALLOWED_ERR"

    invoke-static {v6, v7, v9}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v6, Lmf/org/w3c/dom/DOMException;

    const/4 v7, 0x7

    invoke-direct {v6, v7, v1}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v6

    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->getOwnerElement()Lmf/org/w3c/dom/Element;

    move-result-object v4

    const-string v2, ""

    const/4 v5, 0x0

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->needsSyncData()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->synchronizeData()V

    :cond_1
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->needsSyncChildren()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->synchronizeChildren()V

    :cond_2
    iget-object v6, p0, Lmf/org/apache/xerces/dom/AttrImpl;->value:Ljava/lang/Object;

    if-eqz v6, :cond_4

    invoke-virtual {v3}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->getMutationEvents()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->hasStringValue()Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v2, p0, Lmf/org/apache/xerces/dom/AttrImpl;->value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v6, p0, Lmf/org/apache/xerces/dom/AttrImpl;->value:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v3, v6}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->createTextNode(Ljava/lang/String;)Lmf/org/w3c/dom/Text;

    move-result-object v5

    check-cast v5, Lmf/org/apache/xerces/dom/TextImpl;

    iput-object v5, p0, Lmf/org/apache/xerces/dom/AttrImpl;->value:Ljava/lang/Object;

    invoke-virtual {v5, v7}, Lmf/org/apache/xerces/dom/TextImpl;->isFirstChild(Z)V

    iput-object v5, v5, Lmf/org/apache/xerces/dom/TextImpl;->previousSibling:Lmf/org/apache/xerces/dom/ChildNode;

    iput-object p0, v5, Lmf/org/apache/xerces/dom/TextImpl;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v5, v7}, Lmf/org/apache/xerces/dom/TextImpl;->isOwned(Z)V

    invoke-virtual {p0, v8}, Lmf/org/apache/xerces/dom/AttrImpl;->hasStringValue(Z)V

    invoke-virtual {p0, v5, v7}, Lmf/org/apache/xerces/dom/AttrImpl;->internalRemoveChild(Lmf/org/w3c/dom/Node;Z)Lmf/org/w3c/dom/Node;

    :cond_3
    :goto_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->isIdAttribute()Z

    move-result v6

    if-eqz v6, :cond_4

    if-eqz v4, :cond_4

    invoke-virtual {v3, v2}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->removeIdentifier(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p0, v7}, Lmf/org/apache/xerces/dom/AttrImpl;->isSpecified(Z)V

    invoke-virtual {v3}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->getMutationEvents()Z

    move-result v6

    if-eqz v6, :cond_a

    if-nez v5, :cond_9

    invoke-virtual {v3, p1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->createTextNode(Ljava/lang/String;)Lmf/org/w3c/dom/Text;

    move-result-object v5

    check-cast v5, Lmf/org/apache/xerces/dom/TextImpl;

    :goto_1
    invoke-virtual {p0, v5, v9, v7}, Lmf/org/apache/xerces/dom/AttrImpl;->internalInsertBefore(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;Z)Lmf/org/w3c/dom/Node;

    invoke-virtual {p0, v8}, Lmf/org/apache/xerces/dom/AttrImpl;->hasStringValue(Z)V

    invoke-virtual {v3, p0, v2}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->modifiedAttrValue(Lmf/org/apache/xerces/dom/AttrImpl;Ljava/lang/String;)V

    :goto_2
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->isIdAttribute()Z

    move-result v6

    if-eqz v6, :cond_5

    if-eqz v4, :cond_5

    invoke-virtual {v3, p1, v4}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->putIdentifier(Ljava/lang/String;Lmf/org/w3c/dom/Element;)V

    :cond_5
    return-void

    :cond_6
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->getValue()Ljava/lang/String;

    move-result-object v2

    :goto_3
    iget-object v6, p0, Lmf/org/apache/xerces/dom/AttrImpl;->value:Ljava/lang/Object;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lmf/org/apache/xerces/dom/AttrImpl;->value:Ljava/lang/Object;

    check-cast v6, Lmf/org/w3c/dom/Node;

    invoke-virtual {p0, v6, v7}, Lmf/org/apache/xerces/dom/AttrImpl;->internalRemoveChild(Lmf/org/w3c/dom/Node;Z)Lmf/org/w3c/dom/Node;

    goto :goto_3

    :cond_7
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->hasStringValue()Z

    move-result v6

    if-eqz v6, :cond_8

    iget-object v2, p0, Lmf/org/apache/xerces/dom/AttrImpl;->value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    :goto_4
    iput-object v9, p0, Lmf/org/apache/xerces/dom/AttrImpl;->value:Ljava/lang/Object;

    invoke-virtual {p0, v8}, Lmf/org/apache/xerces/dom/AttrImpl;->needsSyncChildren(Z)V

    goto :goto_0

    :cond_8
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->getValue()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lmf/org/apache/xerces/dom/AttrImpl;->value:Ljava/lang/Object;

    check-cast v0, Lmf/org/apache/xerces/dom/ChildNode;

    iput-object v9, v0, Lmf/org/apache/xerces/dom/ChildNode;->previousSibling:Lmf/org/apache/xerces/dom/ChildNode;

    invoke-virtual {v0, v8}, Lmf/org/apache/xerces/dom/ChildNode;->isFirstChild(Z)V

    iput-object v3, v0, Lmf/org/apache/xerces/dom/ChildNode;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    goto :goto_4

    :cond_9
    iput-object p1, v5, Lmf/org/apache/xerces/dom/TextImpl;->data:Ljava/lang/String;

    goto :goto_1

    :cond_a
    iput-object p1, p0, Lmf/org/apache/xerces/dom/AttrImpl;->value:Ljava/lang/Object;

    invoke-virtual {p0, v7}, Lmf/org/apache/xerces/dom/AttrImpl;->hasStringValue(Z)V

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->changed()V

    goto :goto_2
.end method

.method protected synchronizeChildren()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/AttrImpl;->needsSyncChildren(Z)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/AttrImpl;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class public Lmf/org/apache/xerces/dom/DocumentTypeImpl;
.super Lmf/org/apache/xerces/dom/ParentNode;
.source "DocumentTypeImpl.java"

# interfaces
.implements Lmf/org/w3c/dom/DocumentType;


# static fields
.field static final serialVersionUID:J = 0x6b92258c19cc7f95L


# instance fields
.field private doctypeNumber:I

.field protected elements:Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

.field protected entities:Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

.field protected internalSubset:Ljava/lang/String;

.field protected name:Ljava/lang/String;

.field protected notations:Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

.field protected publicID:Ljava/lang/String;

.field protected systemID:Ljava/lang/String;

.field private userData:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/dom/ParentNode;-><init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;)V

    const/4 v0, 0x0

    iput v0, p0, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->doctypeNumber:I

    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->userData:Ljava/util/Hashtable;

    iput-object p2, p0, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->name:Ljava/lang/String;

    new-instance v0, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    invoke-direct {v0, p0}, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;-><init>(Lmf/org/apache/xerces/dom/NodeImpl;)V

    iput-object v0, p0, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->entities:Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    new-instance v0, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    invoke-direct {v0, p0}, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;-><init>(Lmf/org/apache/xerces/dom/NodeImpl;)V

    iput-object v0, p0, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->notations:Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    new-instance v0, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    invoke-direct {v0, p0}, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;-><init>(Lmf/org/apache/xerces/dom/NodeImpl;)V

    iput-object v0, p0, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->elements:Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lmf/org/apache/xerces/dom/DocumentTypeImpl;-><init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;)V

    iput-object p3, p0, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->publicID:Ljava/lang/String;

    iput-object p4, p0, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->systemID:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public cloneNode(Z)Lmf/org/w3c/dom/Node;
    .locals 2

    invoke-super {p0, p1}, Lmf/org/apache/xerces/dom/ParentNode;->cloneNode(Z)Lmf/org/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/DocumentTypeImpl;

    iget-object v1, p0, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->entities:Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    invoke-virtual {v1, v0}, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;->cloneMap(Lmf/org/apache/xerces/dom/NodeImpl;)Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    move-result-object v1

    iput-object v1, v0, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->entities:Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    iget-object v1, p0, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->notations:Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    invoke-virtual {v1, v0}, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;->cloneMap(Lmf/org/apache/xerces/dom/NodeImpl;)Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    move-result-object v1

    iput-object v1, v0, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->notations:Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    iget-object v1, p0, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->elements:Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    invoke-virtual {v1, v0}, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;->cloneMap(Lmf/org/apache/xerces/dom/NodeImpl;)Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    move-result-object v1

    iput-object v1, v0, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->elements:Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    return-object v0
.end method

.method public getElements()Lmf/org/w3c/dom/NamedNodeMap;
    .locals 1

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->needsSyncChildren()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->synchronizeChildren()V

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->elements:Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    return-object v0
.end method

.method public getEntities()Lmf/org/w3c/dom/NamedNodeMap;
    .locals 1

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->needsSyncChildren()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->synchronizeChildren()V

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->entities:Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    return-object v0
.end method

.method public getInternalSubset()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->needsSyncData()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->synchronizeData()V

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->internalSubset:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->needsSyncData()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->synchronizeData()V

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->needsSyncData()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->synchronizeData()V

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->name:Ljava/lang/String;

    return-object v0
.end method

.method protected getNodeNumber()I
    .locals 2

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->getOwnerDocument()Lmf/org/w3c/dom/Document;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-super {p0}, Lmf/org/apache/xerces/dom/ParentNode;->getNodeNumber()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    iget v1, p0, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->doctypeNumber:I

    if-nez v1, :cond_1

    invoke-static {}, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->getDOMImplementation()Lmf/org/w3c/dom/DOMImplementation;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->assignDocTypeNumber()I

    move-result v1

    iput v1, p0, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->doctypeNumber:I

    :cond_1
    iget v1, p0, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->doctypeNumber:I

    goto :goto_0
.end method

.method public getNodeType()S
    .locals 1

    const/16 v0, 0xa

    return v0
.end method

.method public getNotations()Lmf/org/w3c/dom/NamedNodeMap;
    .locals 1

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->needsSyncChildren()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->synchronizeChildren()V

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->notations:Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    return-object v0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->needsSyncData()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->synchronizeData()V

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->publicID:Ljava/lang/String;

    return-object v0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->needsSyncData()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->synchronizeData()V

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->systemID:Ljava/lang/String;

    return-object v0
.end method

.method public getTextContent()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getUserData(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4

    const/4 v2, 0x0

    iget-object v3, p0, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->userData:Ljava/util/Hashtable;

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    iget-object v3, p0, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->userData:Ljava/util/Hashtable;

    invoke-virtual {v3, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v1, v0

    check-cast v1, Lmf/org/apache/xerces/dom/ParentNode$UserDataRecord;

    iget-object v2, v1, Lmf/org/apache/xerces/dom/ParentNode$UserDataRecord;->fData:Ljava/lang/Object;

    goto :goto_0
.end method

.method protected getUserDataRecord()Ljava/util/Hashtable;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->userData:Ljava/util/Hashtable;

    return-object v0
.end method

.method public isEqualNode(Lmf/org/w3c/dom/Node;)Z
    .locals 11

    const/4 v8, 0x0

    invoke-super {p0, p1}, Lmf/org/apache/xerces/dom/ParentNode;->isEqualNode(Lmf/org/w3c/dom/Node;)Z

    move-result v9

    if-nez v9, :cond_1

    :cond_0
    :goto_0
    return v8

    :cond_1
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->needsSyncData()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->synchronizeData()V

    :cond_2
    move-object v0, p1

    check-cast v0, Lmf/org/apache/xerces/dom/DocumentTypeImpl;

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->getPublicId()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_3

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->getPublicId()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_0

    :cond_3
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->getPublicId()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_4

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->getPublicId()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_0

    :cond_4
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->getSystemId()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_5

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->getSystemId()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_0

    :cond_5
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->getSystemId()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_6

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->getSystemId()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_0

    :cond_6
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->getInternalSubset()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_7

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->getInternalSubset()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_0

    :cond_7
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->getInternalSubset()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_8

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->getInternalSubset()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_0

    :cond_8
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->getPublicId()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_9

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->getPublicId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->getPublicId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    :cond_9
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->getSystemId()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_a

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->getSystemId()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->getSystemId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    :cond_a
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->getInternalSubset()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_b

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->getInternalSubset()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->getInternalSubset()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    :cond_b
    iget-object v1, v0, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->entities:Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    iget-object v9, p0, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->entities:Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    if-nez v9, :cond_c

    if-nez v1, :cond_0

    :cond_c
    iget-object v9, p0, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->entities:Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    if-eqz v9, :cond_d

    if-eqz v1, :cond_0

    :cond_d
    iget-object v9, p0, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->entities:Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    if-eqz v9, :cond_e

    if-eqz v1, :cond_e

    iget-object v9, p0, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->entities:Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    invoke-virtual {v9}, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;->getLength()I

    move-result v9

    invoke-virtual {v1}, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;->getLength()I

    move-result v10

    if-ne v9, v10, :cond_0

    const/4 v5, 0x0

    :goto_1
    iget-object v9, p0, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->entities:Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    invoke-virtual {v9, v5}, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;->item(I)Lmf/org/w3c/dom/Node;

    move-result-object v9

    if-nez v9, :cond_12

    :cond_e
    iget-object v2, v0, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->notations:Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    iget-object v9, p0, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->notations:Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    if-nez v9, :cond_f

    if-nez v2, :cond_0

    :cond_f
    iget-object v9, p0, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->notations:Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    if-eqz v9, :cond_10

    if-eqz v2, :cond_0

    :cond_10
    iget-object v9, p0, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->notations:Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    if-eqz v9, :cond_11

    if-eqz v2, :cond_11

    iget-object v9, p0, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->notations:Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    invoke-virtual {v9}, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;->getLength()I

    move-result v9

    invoke-virtual {v2}, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;->getLength()I

    move-result v10

    if-ne v9, v10, :cond_0

    const/4 v5, 0x0

    :goto_2
    iget-object v9, p0, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->notations:Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    invoke-virtual {v9, v5}, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;->item(I)Lmf/org/w3c/dom/Node;

    move-result-object v9

    if-nez v9, :cond_13

    :cond_11
    const/4 v8, 0x1

    goto/16 :goto_0

    :cond_12
    iget-object v9, p0, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->entities:Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    invoke-virtual {v9, v5}, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;->item(I)Lmf/org/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;->getNamedItem(Ljava/lang/String;)Lmf/org/w3c/dom/Node;

    move-result-object v4

    check-cast v3, Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/dom/NodeImpl;->isEqualNode(Lmf/org/w3c/dom/Node;)Z

    move-result v9

    if-eqz v9, :cond_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_13
    iget-object v9, p0, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->notations:Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    invoke-virtual {v9, v5}, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;->item(I)Lmf/org/w3c/dom/Node;

    move-result-object v6

    invoke-interface {v6}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;->getNamedItem(Ljava/lang/String;)Lmf/org/w3c/dom/Node;

    move-result-object v7

    check-cast v6, Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v6, v7}, Lmf/org/apache/xerces/dom/NodeImpl;->isEqualNode(Lmf/org/w3c/dom/Node;)Z

    move-result v9

    if-eqz v9, :cond_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_2
.end method

.method public setInternalSubset(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->needsSyncData()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->synchronizeData()V

    :cond_0
    iput-object p1, p0, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->internalSubset:Ljava/lang/String;

    return-void
.end method

.method protected setOwnerDocument(Lmf/org/apache/xerces/dom/CoreDocumentImpl;)V
    .locals 1

    invoke-super {p0, p1}, Lmf/org/apache/xerces/dom/ParentNode;->setOwnerDocument(Lmf/org/apache/xerces/dom/CoreDocumentImpl;)V

    iget-object v0, p0, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->entities:Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;->setOwnerDocument(Lmf/org/apache/xerces/dom/CoreDocumentImpl;)V

    iget-object v0, p0, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->notations:Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;->setOwnerDocument(Lmf/org/apache/xerces/dom/CoreDocumentImpl;)V

    iget-object v0, p0, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->elements:Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;->setOwnerDocument(Lmf/org/apache/xerces/dom/CoreDocumentImpl;)V

    return-void
.end method

.method public setReadOnly(ZZ)V
    .locals 2

    const/4 v1, 0x1

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->needsSyncChildren()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->synchronizeChildren()V

    :cond_0
    invoke-super {p0, p1, p2}, Lmf/org/apache/xerces/dom/ParentNode;->setReadOnly(ZZ)V

    iget-object v0, p0, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->elements:Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    invoke-virtual {v0, p1, v1}, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;->setReadOnly(ZZ)V

    iget-object v0, p0, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->entities:Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    invoke-virtual {v0, p1, v1}, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;->setReadOnly(ZZ)V

    iget-object v0, p0, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->notations:Lmf/org/apache/xerces/dom/NamedNodeMapImpl;

    invoke-virtual {v0, p1, v1}, Lmf/org/apache/xerces/dom/NamedNodeMapImpl;->setReadOnly(ZZ)V

    return-void
.end method

.method public setTextContent(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    return-void
.end method

.method public setUserData(Ljava/lang/String;Ljava/lang/Object;Lmf/org/w3c/dom/UserDataHandler;)Ljava/lang/Object;
    .locals 5

    const/4 v2, 0x0

    iget-object v3, p0, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->userData:Ljava/util/Hashtable;

    if-nez v3, :cond_0

    new-instance v3, Ljava/util/Hashtable;

    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    iput-object v3, p0, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->userData:Ljava/util/Hashtable;

    :cond_0
    if-nez p2, :cond_2

    iget-object v3, p0, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->userData:Ljava/util/Hashtable;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->userData:Ljava/util/Hashtable;

    invoke-virtual {v3, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    move-object v1, v0

    check-cast v1, Lmf/org/apache/xerces/dom/ParentNode$UserDataRecord;

    iget-object v2, v1, Lmf/org/apache/xerces/dom/ParentNode$UserDataRecord;->fData:Ljava/lang/Object;

    :cond_1
    :goto_0
    return-object v2

    :cond_2
    iget-object v3, p0, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->userData:Ljava/util/Hashtable;

    new-instance v4, Lmf/org/apache/xerces/dom/ParentNode$UserDataRecord;

    invoke-direct {v4, p0, p2, p3}, Lmf/org/apache/xerces/dom/ParentNode$UserDataRecord;-><init>(Lmf/org/apache/xerces/dom/ParentNode;Ljava/lang/Object;Lmf/org/w3c/dom/UserDataHandler;)V

    invoke-virtual {v3, p1, v4}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    move-object v1, v0

    check-cast v1, Lmf/org/apache/xerces/dom/ParentNode$UserDataRecord;

    iget-object v2, v1, Lmf/org/apache/xerces/dom/ParentNode$UserDataRecord;->fData:Ljava/lang/Object;

    goto :goto_0
.end method

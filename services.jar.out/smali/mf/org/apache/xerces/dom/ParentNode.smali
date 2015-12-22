.class public abstract Lmf/org/apache/xerces/dom/ParentNode;
.super Lmf/org/apache/xerces/dom/ChildNode;
.source "ParentNode.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xerces/dom/ParentNode$UserDataRecord;
    }
.end annotation


# static fields
.field static final serialVersionUID:J = 0x2713d65863899c28L


# instance fields
.field protected transient fNodeListCache:Lmf/org/apache/xerces/dom/NodeListCache;

.field protected firstChild:Lmf/org/apache/xerces/dom/ChildNode;

.field protected ownerDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lmf/org/apache/xerces/dom/ChildNode;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/dom/ParentNode;->firstChild:Lmf/org/apache/xerces/dom/ChildNode;

    iput-object v0, p0, Lmf/org/apache/xerces/dom/ParentNode;->fNodeListCache:Lmf/org/apache/xerces/dom/NodeListCache;

    return-void
.end method

.method protected constructor <init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/dom/ChildNode;-><init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;)V

    iput-object v0, p0, Lmf/org/apache/xerces/dom/ParentNode;->firstChild:Lmf/org/apache/xerces/dom/ChildNode;

    iput-object v0, p0, Lmf/org/apache/xerces/dom/ParentNode;->fNodeListCache:Lmf/org/apache/xerces/dom/NodeListCache;

    iput-object p1, p0, Lmf/org/apache/xerces/dom/ParentNode;->ownerDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    return-void
.end method

.method static synthetic access$0(Lmf/org/apache/xerces/dom/ParentNode;)I
    .locals 1

    invoke-direct {p0}, Lmf/org/apache/xerces/dom/ParentNode;->nodeListGetLength()I

    move-result v0

    return v0
.end method

.method static synthetic access$1(Lmf/org/apache/xerces/dom/ParentNode;I)Lmf/org/w3c/dom/Node;
    .locals 1

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/dom/ParentNode;->nodeListItem(I)Lmf/org/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method private nodeListGetLength()I
    .locals 5

    const/4 v4, -0x1

    iget-object v2, p0, Lmf/org/apache/xerces/dom/ParentNode;->fNodeListCache:Lmf/org/apache/xerces/dom/NodeListCache;

    if-nez v2, :cond_3

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ParentNode;->needsSyncChildren()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ParentNode;->synchronizeChildren()V

    :cond_0
    iget-object v2, p0, Lmf/org/apache/xerces/dom/ParentNode;->firstChild:Lmf/org/apache/xerces/dom/ChildNode;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_1
    iget-object v2, p0, Lmf/org/apache/xerces/dom/ParentNode;->firstChild:Lmf/org/apache/xerces/dom/ChildNode;

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ParentNode;->lastChild()Lmf/org/apache/xerces/dom/ChildNode;

    move-result-object v3

    if-ne v2, v3, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lmf/org/apache/xerces/dom/ParentNode;->ownerDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v2, p0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->getNodeListCache(Lmf/org/apache/xerces/dom/ParentNode;)Lmf/org/apache/xerces/dom/NodeListCache;

    move-result-object v2

    iput-object v2, p0, Lmf/org/apache/xerces/dom/ParentNode;->fNodeListCache:Lmf/org/apache/xerces/dom/NodeListCache;

    :cond_3
    iget-object v2, p0, Lmf/org/apache/xerces/dom/ParentNode;->fNodeListCache:Lmf/org/apache/xerces/dom/NodeListCache;

    iget v2, v2, Lmf/org/apache/xerces/dom/NodeListCache;->fLength:I

    if-ne v2, v4, :cond_4

    iget-object v2, p0, Lmf/org/apache/xerces/dom/ParentNode;->fNodeListCache:Lmf/org/apache/xerces/dom/NodeListCache;

    iget v2, v2, Lmf/org/apache/xerces/dom/NodeListCache;->fChildIndex:I

    if-eq v2, v4, :cond_5

    iget-object v2, p0, Lmf/org/apache/xerces/dom/ParentNode;->fNodeListCache:Lmf/org/apache/xerces/dom/NodeListCache;

    iget-object v2, v2, Lmf/org/apache/xerces/dom/NodeListCache;->fChild:Lmf/org/apache/xerces/dom/ChildNode;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lmf/org/apache/xerces/dom/ParentNode;->fNodeListCache:Lmf/org/apache/xerces/dom/NodeListCache;

    iget v0, v2, Lmf/org/apache/xerces/dom/NodeListCache;->fChildIndex:I

    iget-object v2, p0, Lmf/org/apache/xerces/dom/ParentNode;->fNodeListCache:Lmf/org/apache/xerces/dom/NodeListCache;

    iget-object v1, v2, Lmf/org/apache/xerces/dom/NodeListCache;->fChild:Lmf/org/apache/xerces/dom/ChildNode;

    :goto_1
    if-nez v1, :cond_6

    iget-object v2, p0, Lmf/org/apache/xerces/dom/ParentNode;->fNodeListCache:Lmf/org/apache/xerces/dom/NodeListCache;

    iput v0, v2, Lmf/org/apache/xerces/dom/NodeListCache;->fLength:I

    :cond_4
    iget-object v2, p0, Lmf/org/apache/xerces/dom/ParentNode;->fNodeListCache:Lmf/org/apache/xerces/dom/NodeListCache;

    iget v2, v2, Lmf/org/apache/xerces/dom/NodeListCache;->fLength:I

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lmf/org/apache/xerces/dom/ParentNode;->firstChild:Lmf/org/apache/xerces/dom/ChildNode;

    const/4 v0, 0x0

    goto :goto_1

    :cond_6
    add-int/lit8 v0, v0, 0x1

    iget-object v1, v1, Lmf/org/apache/xerces/dom/ChildNode;->nextSibling:Lmf/org/apache/xerces/dom/ChildNode;

    goto :goto_1
.end method

.method private nodeListItem(I)Lmf/org/w3c/dom/Node;
    .locals 7

    const/4 v6, -0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lmf/org/apache/xerces/dom/ParentNode;->fNodeListCache:Lmf/org/apache/xerces/dom/NodeListCache;

    if-nez v4, :cond_3

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ParentNode;->needsSyncChildren()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ParentNode;->synchronizeChildren()V

    :cond_0
    iget-object v4, p0, Lmf/org/apache/xerces/dom/ParentNode;->firstChild:Lmf/org/apache/xerces/dom/ChildNode;

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ParentNode;->lastChild()Lmf/org/apache/xerces/dom/ChildNode;

    move-result-object v5

    if-ne v4, v5, :cond_2

    if-nez p1, :cond_1

    iget-object v3, p0, Lmf/org/apache/xerces/dom/ParentNode;->firstChild:Lmf/org/apache/xerces/dom/ChildNode;

    :cond_1
    :goto_0
    return-object v3

    :cond_2
    iget-object v4, p0, Lmf/org/apache/xerces/dom/ParentNode;->ownerDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v4, p0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->getNodeListCache(Lmf/org/apache/xerces/dom/ParentNode;)Lmf/org/apache/xerces/dom/NodeListCache;

    move-result-object v4

    iput-object v4, p0, Lmf/org/apache/xerces/dom/ParentNode;->fNodeListCache:Lmf/org/apache/xerces/dom/NodeListCache;

    :cond_3
    iget-object v4, p0, Lmf/org/apache/xerces/dom/ParentNode;->fNodeListCache:Lmf/org/apache/xerces/dom/NodeListCache;

    iget v1, v4, Lmf/org/apache/xerces/dom/NodeListCache;->fChildIndex:I

    iget-object v4, p0, Lmf/org/apache/xerces/dom/ParentNode;->fNodeListCache:Lmf/org/apache/xerces/dom/NodeListCache;

    iget-object v2, v4, Lmf/org/apache/xerces/dom/NodeListCache;->fChild:Lmf/org/apache/xerces/dom/ChildNode;

    const/4 v0, 0x1

    if-eq v1, v6, :cond_8

    if-eqz v2, :cond_8

    const/4 v0, 0x0

    if-ge v1, p1, :cond_7

    :goto_1
    if-ge v1, p1, :cond_4

    if-nez v2, :cond_6

    :cond_4
    if-nez v0, :cond_9

    iget-object v4, p0, Lmf/org/apache/xerces/dom/ParentNode;->firstChild:Lmf/org/apache/xerces/dom/ChildNode;

    if-eq v2, v4, :cond_5

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ParentNode;->lastChild()Lmf/org/apache/xerces/dom/ChildNode;

    move-result-object v4

    if-ne v2, v4, :cond_9

    :cond_5
    iget-object v4, p0, Lmf/org/apache/xerces/dom/ParentNode;->fNodeListCache:Lmf/org/apache/xerces/dom/NodeListCache;

    iput v6, v4, Lmf/org/apache/xerces/dom/NodeListCache;->fChildIndex:I

    iget-object v4, p0, Lmf/org/apache/xerces/dom/ParentNode;->fNodeListCache:Lmf/org/apache/xerces/dom/NodeListCache;

    iput-object v3, v4, Lmf/org/apache/xerces/dom/NodeListCache;->fChild:Lmf/org/apache/xerces/dom/ChildNode;

    iget-object v3, p0, Lmf/org/apache/xerces/dom/ParentNode;->ownerDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    iget-object v4, p0, Lmf/org/apache/xerces/dom/ParentNode;->fNodeListCache:Lmf/org/apache/xerces/dom/NodeListCache;

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->freeNodeListCache(Lmf/org/apache/xerces/dom/NodeListCache;)V

    :goto_2
    move-object v3, v2

    goto :goto_0

    :cond_6
    add-int/lit8 v1, v1, 0x1

    iget-object v2, v2, Lmf/org/apache/xerces/dom/ChildNode;->nextSibling:Lmf/org/apache/xerces/dom/ChildNode;

    goto :goto_1

    :cond_7
    if-le v1, p1, :cond_4

    :goto_3
    if-le v1, p1, :cond_4

    if-eqz v2, :cond_4

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v2}, Lmf/org/apache/xerces/dom/ChildNode;->previousSibling()Lmf/org/apache/xerces/dom/ChildNode;

    move-result-object v2

    goto :goto_3

    :cond_8
    if-ltz p1, :cond_1

    iget-object v2, p0, Lmf/org/apache/xerces/dom/ParentNode;->firstChild:Lmf/org/apache/xerces/dom/ChildNode;

    const/4 v1, 0x0

    :goto_4
    if-ge v1, p1, :cond_4

    if-eqz v2, :cond_4

    iget-object v2, v2, Lmf/org/apache/xerces/dom/ChildNode;->nextSibling:Lmf/org/apache/xerces/dom/ChildNode;

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_9
    iget-object v3, p0, Lmf/org/apache/xerces/dom/ParentNode;->fNodeListCache:Lmf/org/apache/xerces/dom/NodeListCache;

    iput v1, v3, Lmf/org/apache/xerces/dom/NodeListCache;->fChildIndex:I

    iget-object v3, p0, Lmf/org/apache/xerces/dom/ParentNode;->fNodeListCache:Lmf/org/apache/xerces/dom/NodeListCache;

    iput-object v2, v3, Lmf/org/apache/xerces/dom/NodeListCache;->fChild:Lmf/org/apache/xerces/dom/ChildNode;

    goto :goto_2
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

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/ParentNode;->needsSyncChildren(Z)V

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ParentNode;->needsSyncChildren()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ParentNode;->synchronizeChildren()V

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
    invoke-virtual {p0, v4}, Lmf/org/apache/xerces/dom/ParentNode;->isNormalized(Z)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-virtual {p1}, Lmf/org/apache/xerces/dom/ChildNode;->isNormalized()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p0, v4}, Lmf/org/apache/xerces/dom/ParentNode;->isNormalized(Z)V

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

    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/dom/ParentNode;->isNormalized(Z)V

    :cond_0
    return-void
.end method

.method public cloneNode(Z)Lmf/org/w3c/dom/Node;
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ParentNode;->needsSyncChildren()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ParentNode;->synchronizeChildren()V

    :cond_0
    invoke-super {p0, p1}, Lmf/org/apache/xerces/dom/ChildNode;->cloneNode(Z)Lmf/org/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/dom/ParentNode;

    iget-object v2, p0, Lmf/org/apache/xerces/dom/ParentNode;->ownerDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    iput-object v2, v1, Lmf/org/apache/xerces/dom/ParentNode;->ownerDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    iput-object v3, v1, Lmf/org/apache/xerces/dom/ParentNode;->firstChild:Lmf/org/apache/xerces/dom/ChildNode;

    iput-object v3, v1, Lmf/org/apache/xerces/dom/ParentNode;->fNodeListCache:Lmf/org/apache/xerces/dom/NodeListCache;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/dom/ParentNode;->firstChild:Lmf/org/apache/xerces/dom/ChildNode;

    :goto_0
    if-nez v0, :cond_2

    :cond_1
    return-object v1

    :cond_2
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/dom/ChildNode;->cloneNode(Z)Lmf/org/w3c/dom/Node;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/dom/ParentNode;->appendChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    iget-object v0, v0, Lmf/org/apache/xerces/dom/ChildNode;->nextSibling:Lmf/org/apache/xerces/dom/ChildNode;

    goto :goto_0
.end method

.method public getChildNodes()Lmf/org/w3c/dom/NodeList;
    .locals 1

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ParentNode;->needsSyncChildren()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ParentNode;->synchronizeChildren()V

    :cond_0
    return-object p0
.end method

.method protected final getChildNodesUnoptimized()Lmf/org/w3c/dom/NodeList;
    .locals 1

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ParentNode;->needsSyncChildren()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ParentNode;->synchronizeChildren()V

    :cond_0
    new-instance v0, Lmf/org/apache/xerces/dom/ParentNode$1;

    invoke-direct {v0, p0}, Lmf/org/apache/xerces/dom/ParentNode$1;-><init>(Lmf/org/apache/xerces/dom/ParentNode;)V

    return-object v0
.end method

.method public getFirstChild()Lmf/org/w3c/dom/Node;
    .locals 1

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ParentNode;->needsSyncChildren()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ParentNode;->synchronizeChildren()V

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/ParentNode;->firstChild:Lmf/org/apache/xerces/dom/ChildNode;

    return-object v0
.end method

.method public getLastChild()Lmf/org/w3c/dom/Node;
    .locals 1

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ParentNode;->needsSyncChildren()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ParentNode;->synchronizeChildren()V

    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ParentNode;->lastChild()Lmf/org/apache/xerces/dom/ChildNode;

    move-result-object v0

    return-object v0
.end method

.method public getLength()I
    .locals 1

    invoke-direct {p0}, Lmf/org/apache/xerces/dom/ParentNode;->nodeListGetLength()I

    move-result v0

    return v0
.end method

.method public getOwnerDocument()Lmf/org/w3c/dom/Document;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/dom/ParentNode;->ownerDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    return-object v0
.end method

.method public getTextContent()Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ParentNode;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/dom/ParentNode;->hasTextContent(Lmf/org/w3c/dom/Node;)Z

    move-result v3

    if-eqz v3, :cond_0

    check-cast v1, Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v1}, Lmf/org/apache/xerces/dom/NodeImpl;->getTextContent()Ljava/lang/String;

    move-result-object v3

    :goto_0
    return-object v3

    :cond_0
    const-string v3, ""

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/ParentNode;->getTextContent(Ljava/lang/StringBuffer;)V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_2
    const-string v3, ""

    goto :goto_0
.end method

.method getTextContent(Ljava/lang/StringBuffer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ParentNode;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/ParentNode;->hasTextContent(Lmf/org/w3c/dom/Node;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v1, p1}, Lmf/org/apache/xerces/dom/NodeImpl;->getTextContent(Ljava/lang/StringBuffer;)V

    :cond_1
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v0

    goto :goto_0
.end method

.method public hasChildNodes()Z
    .locals 1

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ParentNode;->needsSyncChildren()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ParentNode;->synchronizeChildren()V

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/ParentNode;->firstChild:Lmf/org/apache/xerces/dom/ChildNode;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final hasTextContent(Lmf/org/w3c/dom/Node;)Z
    .locals 2

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    check-cast p1, Lmf/org/apache/xerces/dom/TextImpl;

    invoke-virtual {p1}, Lmf/org/apache/xerces/dom/TextImpl;->isIgnorableWhitespace()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
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

    invoke-virtual {p0, p1, p2, v0}, Lmf/org/apache/xerces/dom/ParentNode;->internalInsertBefore(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;Z)Lmf/org/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method internalInsertBefore(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;Z)Lmf/org/w3c/dom/Node;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/dom/ParentNode;->ownerDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    iget-boolean v3, v11, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v11

    const/16 v12, 0xb

    if-ne v11, v12, :cond_4

    if-eqz v3, :cond_0

    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v4

    :goto_0
    if-nez v4, :cond_1

    :cond_0
    :goto_1
    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->hasChildNodes()Z

    move-result v11

    if-nez v11, :cond_3

    :goto_2
    return-object p1

    :cond_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/dom/ParentNode;->ownerDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-object/from16 v0, p0

    invoke-virtual {v11, v0, v4}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->isKidOK(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Z

    move-result v11

    if-nez v11, :cond_2

    new-instance v11, Lmf/org/w3c/dom/DOMException;

    const/4 v12, 0x3

    const-string/jumbo v13, "http://www.w3.org/dom/DOMTR"

    const-string v14, "HIERARCHY_REQUEST_ERR"

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v11

    :cond_2
    invoke-interface {v4}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v4

    goto :goto_0

    :cond_3
    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v11

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v11, v1}, Lmf/org/apache/xerces/dom/ParentNode;->insertBefore(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    goto :goto_1

    :cond_4
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    if-ne v0, v1, :cond_5

    invoke-interface/range {p2 .. p2}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object p2

    invoke-virtual/range {p0 .. p1}, Lmf/org/apache/xerces/dom/ParentNode;->removeChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    invoke-virtual/range {p0 .. p2}, Lmf/org/apache/xerces/dom/ParentNode;->insertBefore(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    goto :goto_2

    :cond_5
    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/dom/ParentNode;->needsSyncChildren()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/dom/ParentNode;->synchronizeChildren()V

    :cond_6
    if-eqz v3, :cond_e

    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/dom/ParentNode;->isReadOnly()Z

    move-result v11

    if-eqz v11, :cond_7

    new-instance v11, Lmf/org/w3c/dom/DOMException;

    const/4 v12, 0x7

    const-string/jumbo v13, "http://www.w3.org/dom/DOMTR"

    const-string v14, "NO_MODIFICATION_ALLOWED_ERR"

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v11

    :cond_7
    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Node;->getOwnerDocument()Lmf/org/w3c/dom/Document;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lmf/org/apache/xerces/dom/ParentNode;->ownerDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    if-eq v11, v12, :cond_8

    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/dom/ParentNode;->ownerDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-object/from16 v0, p1

    if-eq v0, v11, :cond_8

    new-instance v11, Lmf/org/w3c/dom/DOMException;

    const/4 v12, 0x4

    const-string/jumbo v13, "http://www.w3.org/dom/DOMTR"

    const-string v14, "WRONG_DOCUMENT_ERR"

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v11

    :cond_8
    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/dom/ParentNode;->ownerDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v11, v0, v1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->isKidOK(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Z

    move-result v11

    if-nez v11, :cond_9

    new-instance v11, Lmf/org/w3c/dom/DOMException;

    const/4 v12, 0x3

    const-string/jumbo v13, "http://www.w3.org/dom/DOMTR"

    const-string v14, "HIERARCHY_REQUEST_ERR"

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v11

    :cond_9
    if-eqz p2, :cond_a

    invoke-interface/range {p2 .. p2}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v11

    move-object/from16 v0, p0

    if-eq v11, v0, :cond_a

    new-instance v11, Lmf/org/w3c/dom/DOMException;

    const/16 v12, 0x8

    const-string/jumbo v13, "http://www.w3.org/dom/DOMTR"

    const-string v14, "NOT_FOUND_ERR"

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v11

    :cond_a
    const/4 v10, 0x1

    move-object/from16 v2, p0

    :goto_3
    if-eqz v10, :cond_b

    if-nez v2, :cond_c

    :cond_b
    if-nez v10, :cond_e

    new-instance v11, Lmf/org/w3c/dom/DOMException;

    const/4 v12, 0x3

    const-string/jumbo v13, "http://www.w3.org/dom/DOMTR"

    const-string v14, "HIERARCHY_REQUEST_ERR"

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v11, v12, v13}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v11

    :cond_c
    move-object/from16 v0, p1

    if-eq v0, v2, :cond_d

    const/4 v10, 0x1

    :goto_4
    invoke-virtual {v2}, Lmf/org/apache/xerces/dom/NodeImpl;->parentNode()Lmf/org/apache/xerces/dom/NodeImpl;

    move-result-object v2

    goto :goto_3

    :cond_d
    const/4 v10, 0x0

    goto :goto_4

    :cond_e
    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/dom/ParentNode;->ownerDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v11, v0, v1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->insertingNode(Lmf/org/apache/xerces/dom/NodeImpl;Z)V

    move-object/from16 v6, p1

    check-cast v6, Lmf/org/apache/xerces/dom/ChildNode;

    invoke-virtual {v6}, Lmf/org/apache/xerces/dom/ChildNode;->parentNode()Lmf/org/apache/xerces/dom/NodeImpl;

    move-result-object v7

    if-eqz v7, :cond_f

    invoke-interface {v7, v6}, Lmf/org/w3c/dom/Node;->removeChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    :cond_f
    move-object/from16 v9, p2

    check-cast v9, Lmf/org/apache/xerces/dom/ChildNode;

    move-object/from16 v0, p0

    iput-object v0, v6, Lmf/org/apache/xerces/dom/ChildNode;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    const/4 v11, 0x1

    invoke-virtual {v6, v11}, Lmf/org/apache/xerces/dom/ChildNode;->isOwned(Z)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/dom/ParentNode;->firstChild:Lmf/org/apache/xerces/dom/ChildNode;

    if-nez v11, :cond_12

    move-object/from16 v0, p0

    iput-object v6, v0, Lmf/org/apache/xerces/dom/ParentNode;->firstChild:Lmf/org/apache/xerces/dom/ChildNode;

    const/4 v11, 0x1

    invoke-virtual {v6, v11}, Lmf/org/apache/xerces/dom/ChildNode;->isFirstChild(Z)V

    iput-object v6, v6, Lmf/org/apache/xerces/dom/ChildNode;->previousSibling:Lmf/org/apache/xerces/dom/ChildNode;

    :goto_5
    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xerces/dom/ParentNode;->changed()V

    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/dom/ParentNode;->fNodeListCache:Lmf/org/apache/xerces/dom/NodeListCache;

    if-eqz v11, :cond_11

    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/dom/ParentNode;->fNodeListCache:Lmf/org/apache/xerces/dom/NodeListCache;

    iget v11, v11, Lmf/org/apache/xerces/dom/NodeListCache;->fLength:I

    const/4 v12, -0x1

    if-eq v11, v12, :cond_10

    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/dom/ParentNode;->fNodeListCache:Lmf/org/apache/xerces/dom/NodeListCache;

    iget v12, v11, Lmf/org/apache/xerces/dom/NodeListCache;->fLength:I

    add-int/lit8 v12, v12, 0x1

    iput v12, v11, Lmf/org/apache/xerces/dom/NodeListCache;->fLength:I

    :cond_10
    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/dom/ParentNode;->fNodeListCache:Lmf/org/apache/xerces/dom/NodeListCache;

    iget v11, v11, Lmf/org/apache/xerces/dom/NodeListCache;->fChildIndex:I

    const/4 v12, -0x1

    if-eq v11, v12, :cond_11

    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/dom/ParentNode;->fNodeListCache:Lmf/org/apache/xerces/dom/NodeListCache;

    iget-object v11, v11, Lmf/org/apache/xerces/dom/NodeListCache;->fChild:Lmf/org/apache/xerces/dom/ChildNode;

    if-ne v11, v9, :cond_15

    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/dom/ParentNode;->fNodeListCache:Lmf/org/apache/xerces/dom/NodeListCache;

    iput-object v6, v11, Lmf/org/apache/xerces/dom/NodeListCache;->fChild:Lmf/org/apache/xerces/dom/ChildNode;

    :cond_11
    :goto_6
    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/dom/ParentNode;->ownerDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v11, v0, v6, v1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->insertedNode(Lmf/org/apache/xerces/dom/NodeImpl;Lmf/org/apache/xerces/dom/NodeImpl;Z)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lmf/org/apache/xerces/dom/ParentNode;->checkNormalizationAfterInsert(Lmf/org/apache/xerces/dom/ChildNode;)V

    goto/16 :goto_2

    :cond_12
    if-nez v9, :cond_13

    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/dom/ParentNode;->firstChild:Lmf/org/apache/xerces/dom/ChildNode;

    iget-object v5, v11, Lmf/org/apache/xerces/dom/ChildNode;->previousSibling:Lmf/org/apache/xerces/dom/ChildNode;

    iput-object v6, v5, Lmf/org/apache/xerces/dom/ChildNode;->nextSibling:Lmf/org/apache/xerces/dom/ChildNode;

    iput-object v5, v6, Lmf/org/apache/xerces/dom/ChildNode;->previousSibling:Lmf/org/apache/xerces/dom/ChildNode;

    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/dom/ParentNode;->firstChild:Lmf/org/apache/xerces/dom/ChildNode;

    iput-object v6, v11, Lmf/org/apache/xerces/dom/ChildNode;->previousSibling:Lmf/org/apache/xerces/dom/ChildNode;

    goto :goto_5

    :cond_13
    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/dom/ParentNode;->firstChild:Lmf/org/apache/xerces/dom/ChildNode;

    move-object/from16 v0, p2

    if-ne v0, v11, :cond_14

    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/dom/ParentNode;->firstChild:Lmf/org/apache/xerces/dom/ChildNode;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lmf/org/apache/xerces/dom/ChildNode;->isFirstChild(Z)V

    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/dom/ParentNode;->firstChild:Lmf/org/apache/xerces/dom/ChildNode;

    iput-object v11, v6, Lmf/org/apache/xerces/dom/ChildNode;->nextSibling:Lmf/org/apache/xerces/dom/ChildNode;

    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/dom/ParentNode;->firstChild:Lmf/org/apache/xerces/dom/ChildNode;

    iget-object v11, v11, Lmf/org/apache/xerces/dom/ChildNode;->previousSibling:Lmf/org/apache/xerces/dom/ChildNode;

    iput-object v11, v6, Lmf/org/apache/xerces/dom/ChildNode;->previousSibling:Lmf/org/apache/xerces/dom/ChildNode;

    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/dom/ParentNode;->firstChild:Lmf/org/apache/xerces/dom/ChildNode;

    iput-object v6, v11, Lmf/org/apache/xerces/dom/ChildNode;->previousSibling:Lmf/org/apache/xerces/dom/ChildNode;

    move-object/from16 v0, p0

    iput-object v6, v0, Lmf/org/apache/xerces/dom/ParentNode;->firstChild:Lmf/org/apache/xerces/dom/ChildNode;

    const/4 v11, 0x1

    invoke-virtual {v6, v11}, Lmf/org/apache/xerces/dom/ChildNode;->isFirstChild(Z)V

    goto/16 :goto_5

    :cond_14
    iget-object v8, v9, Lmf/org/apache/xerces/dom/ChildNode;->previousSibling:Lmf/org/apache/xerces/dom/ChildNode;

    iput-object v9, v6, Lmf/org/apache/xerces/dom/ChildNode;->nextSibling:Lmf/org/apache/xerces/dom/ChildNode;

    iput-object v6, v8, Lmf/org/apache/xerces/dom/ChildNode;->nextSibling:Lmf/org/apache/xerces/dom/ChildNode;

    iput-object v6, v9, Lmf/org/apache/xerces/dom/ChildNode;->previousSibling:Lmf/org/apache/xerces/dom/ChildNode;

    iput-object v8, v6, Lmf/org/apache/xerces/dom/ChildNode;->previousSibling:Lmf/org/apache/xerces/dom/ChildNode;

    goto/16 :goto_5

    :cond_15
    move-object/from16 v0, p0

    iget-object v11, v0, Lmf/org/apache/xerces/dom/ParentNode;->fNodeListCache:Lmf/org/apache/xerces/dom/NodeListCache;

    const/4 v12, -0x1

    iput v12, v11, Lmf/org/apache/xerces/dom/NodeListCache;->fChildIndex:I

    goto :goto_6
.end method

.method internalRemoveChild(Lmf/org/w3c/dom/Node;Z)Lmf/org/w3c/dom/Node;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    const/4 v8, 0x0

    const/4 v7, -0x1

    const/4 v9, 0x0

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ParentNode;->ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v3

    iget-boolean v5, v3, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ParentNode;->isReadOnly()Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v5, Lmf/org/w3c/dom/DOMException;

    const/4 v6, 0x7

    const-string/jumbo v7, "http://www.w3.org/dom/DOMTR"

    const-string v8, "NO_MODIFICATION_ALLOWED_ERR"

    invoke-static {v7, v8, v9}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v5

    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v5

    if-eq v5, p0, :cond_1

    new-instance v5, Lmf/org/w3c/dom/DOMException;

    const/16 v6, 0x8

    const-string/jumbo v7, "http://www.w3.org/dom/DOMTR"

    const-string v8, "NOT_FOUND_ERR"

    invoke-static {v7, v8, v9}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v5

    :cond_1
    move-object v1, p1

    check-cast v1, Lmf/org/apache/xerces/dom/ChildNode;

    invoke-virtual {v3, p0, v1, p2}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->removingNode(Lmf/org/apache/xerces/dom/NodeImpl;Lmf/org/apache/xerces/dom/NodeImpl;Z)V

    iget-object v5, p0, Lmf/org/apache/xerces/dom/ParentNode;->fNodeListCache:Lmf/org/apache/xerces/dom/NodeListCache;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lmf/org/apache/xerces/dom/ParentNode;->fNodeListCache:Lmf/org/apache/xerces/dom/NodeListCache;

    iget v5, v5, Lmf/org/apache/xerces/dom/NodeListCache;->fLength:I

    if-eq v5, v7, :cond_2

    iget-object v5, p0, Lmf/org/apache/xerces/dom/ParentNode;->fNodeListCache:Lmf/org/apache/xerces/dom/NodeListCache;

    iget v6, v5, Lmf/org/apache/xerces/dom/NodeListCache;->fLength:I

    add-int/lit8 v6, v6, -0x1

    iput v6, v5, Lmf/org/apache/xerces/dom/NodeListCache;->fLength:I

    :cond_2
    iget-object v5, p0, Lmf/org/apache/xerces/dom/ParentNode;->fNodeListCache:Lmf/org/apache/xerces/dom/NodeListCache;

    iget v5, v5, Lmf/org/apache/xerces/dom/NodeListCache;->fChildIndex:I

    if-eq v5, v7, :cond_3

    iget-object v5, p0, Lmf/org/apache/xerces/dom/ParentNode;->fNodeListCache:Lmf/org/apache/xerces/dom/NodeListCache;

    iget-object v5, v5, Lmf/org/apache/xerces/dom/NodeListCache;->fChild:Lmf/org/apache/xerces/dom/ChildNode;

    if-ne v5, v1, :cond_5

    iget-object v5, p0, Lmf/org/apache/xerces/dom/ParentNode;->fNodeListCache:Lmf/org/apache/xerces/dom/NodeListCache;

    iget v6, v5, Lmf/org/apache/xerces/dom/NodeListCache;->fChildIndex:I

    add-int/lit8 v6, v6, -0x1

    iput v6, v5, Lmf/org/apache/xerces/dom/NodeListCache;->fChildIndex:I

    iget-object v5, p0, Lmf/org/apache/xerces/dom/ParentNode;->fNodeListCache:Lmf/org/apache/xerces/dom/NodeListCache;

    invoke-virtual {v1}, Lmf/org/apache/xerces/dom/ChildNode;->previousSibling()Lmf/org/apache/xerces/dom/ChildNode;

    move-result-object v6

    iput-object v6, v5, Lmf/org/apache/xerces/dom/NodeListCache;->fChild:Lmf/org/apache/xerces/dom/ChildNode;

    :cond_3
    :goto_0
    iget-object v5, p0, Lmf/org/apache/xerces/dom/ParentNode;->firstChild:Lmf/org/apache/xerces/dom/ChildNode;

    if-ne v1, v5, :cond_6

    invoke-virtual {v1, v8}, Lmf/org/apache/xerces/dom/ChildNode;->isFirstChild(Z)V

    iget-object v5, v1, Lmf/org/apache/xerces/dom/ChildNode;->nextSibling:Lmf/org/apache/xerces/dom/ChildNode;

    iput-object v5, p0, Lmf/org/apache/xerces/dom/ParentNode;->firstChild:Lmf/org/apache/xerces/dom/ChildNode;

    iget-object v5, p0, Lmf/org/apache/xerces/dom/ParentNode;->firstChild:Lmf/org/apache/xerces/dom/ChildNode;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lmf/org/apache/xerces/dom/ParentNode;->firstChild:Lmf/org/apache/xerces/dom/ChildNode;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lmf/org/apache/xerces/dom/ChildNode;->isFirstChild(Z)V

    iget-object v5, p0, Lmf/org/apache/xerces/dom/ParentNode;->firstChild:Lmf/org/apache/xerces/dom/ChildNode;

    iget-object v6, v1, Lmf/org/apache/xerces/dom/ChildNode;->previousSibling:Lmf/org/apache/xerces/dom/ChildNode;

    iput-object v6, v5, Lmf/org/apache/xerces/dom/ChildNode;->previousSibling:Lmf/org/apache/xerces/dom/ChildNode;

    :cond_4
    :goto_1
    invoke-virtual {v1}, Lmf/org/apache/xerces/dom/ChildNode;->previousSibling()Lmf/org/apache/xerces/dom/ChildNode;

    move-result-object v2

    iput-object v3, v1, Lmf/org/apache/xerces/dom/ChildNode;->ownerNode:Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v1, v8}, Lmf/org/apache/xerces/dom/ChildNode;->isOwned(Z)V

    iput-object v9, v1, Lmf/org/apache/xerces/dom/ChildNode;->nextSibling:Lmf/org/apache/xerces/dom/ChildNode;

    iput-object v9, v1, Lmf/org/apache/xerces/dom/ChildNode;->previousSibling:Lmf/org/apache/xerces/dom/ChildNode;

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ParentNode;->changed()V

    invoke-virtual {v3, p0, p2}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->removedNode(Lmf/org/apache/xerces/dom/NodeImpl;Z)V

    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/dom/ParentNode;->checkNormalizationAfterRemove(Lmf/org/apache/xerces/dom/ChildNode;)V

    return-object v1

    :cond_5
    iget-object v5, p0, Lmf/org/apache/xerces/dom/ParentNode;->fNodeListCache:Lmf/org/apache/xerces/dom/NodeListCache;

    iput v7, v5, Lmf/org/apache/xerces/dom/NodeListCache;->fChildIndex:I

    goto :goto_0

    :cond_6
    iget-object v4, v1, Lmf/org/apache/xerces/dom/ChildNode;->previousSibling:Lmf/org/apache/xerces/dom/ChildNode;

    iget-object v0, v1, Lmf/org/apache/xerces/dom/ChildNode;->nextSibling:Lmf/org/apache/xerces/dom/ChildNode;

    iput-object v0, v4, Lmf/org/apache/xerces/dom/ChildNode;->nextSibling:Lmf/org/apache/xerces/dom/ChildNode;

    if-nez v0, :cond_7

    iget-object v5, p0, Lmf/org/apache/xerces/dom/ParentNode;->firstChild:Lmf/org/apache/xerces/dom/ChildNode;

    iput-object v4, v5, Lmf/org/apache/xerces/dom/ChildNode;->previousSibling:Lmf/org/apache/xerces/dom/ChildNode;

    goto :goto_1

    :cond_7
    iput-object v4, v0, Lmf/org/apache/xerces/dom/ChildNode;->previousSibling:Lmf/org/apache/xerces/dom/ChildNode;

    goto :goto_1
.end method

.method public isEqualNode(Lmf/org/w3c/dom/Node;)Z
    .locals 4

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lmf/org/apache/xerces/dom/ChildNode;->isEqualNode(Lmf/org/w3c/dom/Node;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ParentNode;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v0

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v1

    :goto_1
    if-eqz v0, :cond_2

    if-nez v1, :cond_3

    :cond_2
    if-ne v0, v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    invoke-interface {v0, v1}, Lmf/org/w3c/dom/Node;->isEqualNode(Lmf/org/w3c/dom/Node;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v1

    goto :goto_1
.end method

.method public item(I)Lmf/org/w3c/dom/Node;
    .locals 1

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/dom/ParentNode;->nodeListItem(I)Lmf/org/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method final lastChild()Lmf/org/apache/xerces/dom/ChildNode;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/dom/ParentNode;->firstChild:Lmf/org/apache/xerces/dom/ChildNode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/dom/ParentNode;->firstChild:Lmf/org/apache/xerces/dom/ChildNode;

    iget-object v0, v0, Lmf/org/apache/xerces/dom/ChildNode;->previousSibling:Lmf/org/apache/xerces/dom/ChildNode;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final lastChild(Lmf/org/apache/xerces/dom/ChildNode;)V
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/dom/ParentNode;->firstChild:Lmf/org/apache/xerces/dom/ChildNode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/dom/ParentNode;->firstChild:Lmf/org/apache/xerces/dom/ChildNode;

    iput-object p1, v0, Lmf/org/apache/xerces/dom/ChildNode;->previousSibling:Lmf/org/apache/xerces/dom/ChildNode;

    :cond_0
    return-void
.end method

.method public normalize()V
    .locals 2

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ParentNode;->isNormalized()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ParentNode;->needsSyncChildren()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ParentNode;->synchronizeChildren()V

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/dom/ParentNode;->firstChild:Lmf/org/apache/xerces/dom/ChildNode;

    :goto_1
    if-nez v0, :cond_2

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/dom/ParentNode;->isNormalized(Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/ChildNode;->normalize()V

    iget-object v0, v0, Lmf/org/apache/xerces/dom/ChildNode;->nextSibling:Lmf/org/apache/xerces/dom/ChildNode;

    goto :goto_1
.end method

.method ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/dom/ParentNode;->ownerDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    return-object v0
.end method

.method public removeChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lmf/org/apache/xerces/dom/ParentNode;->internalRemoveChild(Lmf/org/w3c/dom/Node;Z)Lmf/org/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method public replaceChild(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    const/4 v1, 0x1

    iget-object v0, p0, Lmf/org/apache/xerces/dom/ParentNode;->ownerDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v0, p0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->replacingNode(Lmf/org/apache/xerces/dom/NodeImpl;)V

    invoke-virtual {p0, p1, p2, v1}, Lmf/org/apache/xerces/dom/ParentNode;->internalInsertBefore(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;Z)Lmf/org/w3c/dom/Node;

    if-eq p1, p2, :cond_0

    invoke-virtual {p0, p2, v1}, Lmf/org/apache/xerces/dom/ParentNode;->internalRemoveChild(Lmf/org/w3c/dom/Node;Z)Lmf/org/w3c/dom/Node;

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/ParentNode;->ownerDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v0, p0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->replacedNode(Lmf/org/apache/xerces/dom/NodeImpl;)V

    return-object p2
.end method

.method protected setOwnerDocument(Lmf/org/apache/xerces/dom/CoreDocumentImpl;)V
    .locals 2

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ParentNode;->needsSyncChildren()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ParentNode;->synchronizeChildren()V

    :cond_0
    invoke-super {p0, p1}, Lmf/org/apache/xerces/dom/ChildNode;->setOwnerDocument(Lmf/org/apache/xerces/dom/CoreDocumentImpl;)V

    iput-object p1, p0, Lmf/org/apache/xerces/dom/ParentNode;->ownerDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    iget-object v0, p0, Lmf/org/apache/xerces/dom/ParentNode;->firstChild:Lmf/org/apache/xerces/dom/ChildNode;

    :goto_0
    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/dom/ChildNode;->setOwnerDocument(Lmf/org/apache/xerces/dom/CoreDocumentImpl;)V

    iget-object v0, v0, Lmf/org/apache/xerces/dom/ChildNode;->nextSibling:Lmf/org/apache/xerces/dom/ChildNode;

    goto :goto_0
.end method

.method public setReadOnly(ZZ)V
    .locals 3

    invoke-super {p0, p1, p2}, Lmf/org/apache/xerces/dom/ChildNode;->setReadOnly(ZZ)V

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ParentNode;->needsSyncChildren()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ParentNode;->synchronizeChildren()V

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/ParentNode;->firstChild:Lmf/org/apache/xerces/dom/ChildNode;

    :goto_0
    if-nez v0, :cond_2

    :cond_1
    return-void

    :cond_2
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

.method public setTextContent(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    :goto_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ParentNode;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ParentNode;->ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v1

    invoke-virtual {v1, p1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->createTextNode(Ljava/lang/String;)Lmf/org/w3c/dom/Text;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/dom/ParentNode;->appendChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/ParentNode;->removeChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    goto :goto_0
.end method

.method protected synchronizeChildren()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/dom/ParentNode;->needsSyncChildren(Z)V

    return-void
.end method

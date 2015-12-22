.class public Lmf/org/apache/xerces/dom/TextImpl;
.super Lmf/org/apache/xerces/dom/CharacterDataImpl;
.source "TextImpl.java"

# interfaces
.implements Lmf/org/w3c/dom/CharacterData;
.implements Lmf/org/w3c/dom/Text;


# static fields
.field static final serialVersionUID:J = -0x497b8d082105594dL


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmf/org/apache/xerces/dom/CharacterDataImpl;-><init>()V

    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lmf/org/apache/xerces/dom/CharacterDataImpl;-><init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;)V

    return-void
.end method

.method private canModifyNext(Lmf/org/w3c/dom/Node;)Z
    .locals 11

    const/4 v10, 0x5

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v2

    :goto_0
    if-nez v2, :cond_1

    move v5, v6

    :cond_0
    :goto_1
    return v5

    :cond_1
    invoke-interface {v2}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v4

    if-ne v4, v10, :cond_7

    invoke-interface {v2}, Lmf/org/w3c/dom/Node;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_2
    if-nez v0, :cond_3

    :cond_2
    invoke-interface {v2}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v2

    goto :goto_0

    :cond_3
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v1

    if-eq v1, v8, :cond_4

    if-ne v1, v9, :cond_5

    :cond_4
    const/4 v3, 0x1

    :goto_3
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v0

    goto :goto_2

    :cond_5
    if-ne v1, v10, :cond_6

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/dom/TextImpl;->canModifyNext(Lmf/org/w3c/dom/Node;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v3, 0x1

    goto :goto_3

    :cond_6
    if-nez v3, :cond_0

    move v5, v6

    goto :goto_1

    :cond_7
    if-eq v4, v8, :cond_2

    if-eq v4, v9, :cond_2

    move v5, v6

    goto :goto_1
.end method

.method private canModifyPrev(Lmf/org/w3c/dom/Node;)Z
    .locals 11

    const/4 v10, 0x5

    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x0

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getPreviousSibling()Lmf/org/w3c/dom/Node;

    move-result-object v2

    :goto_0
    if-nez v2, :cond_1

    move v5, v6

    :cond_0
    :goto_1
    return v5

    :cond_1
    invoke-interface {v2}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v4

    if-ne v4, v10, :cond_7

    invoke-interface {v2}, Lmf/org/w3c/dom/Node;->getLastChild()Lmf/org/w3c/dom/Node;

    move-result-object v1

    if-eqz v1, :cond_0

    :goto_2
    if-nez v1, :cond_3

    :cond_2
    invoke-interface {v2}, Lmf/org/w3c/dom/Node;->getPreviousSibling()Lmf/org/w3c/dom/Node;

    move-result-object v2

    goto :goto_0

    :cond_3
    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v0

    if-eq v0, v8, :cond_4

    if-ne v0, v9, :cond_5

    :cond_4
    const/4 v3, 0x1

    :goto_3
    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getPreviousSibling()Lmf/org/w3c/dom/Node;

    move-result-object v1

    goto :goto_2

    :cond_5
    if-ne v0, v10, :cond_6

    invoke-direct {p0, v1}, Lmf/org/apache/xerces/dom/TextImpl;->canModifyPrev(Lmf/org/w3c/dom/Node;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v3, 0x1

    goto :goto_3

    :cond_6
    if-nez v3, :cond_0

    move v5, v6

    goto :goto_1

    :cond_7
    if-eq v4, v8, :cond_2

    if-eq v4, v9, :cond_2

    move v5, v6

    goto :goto_1
.end method

.method private getWholeTextBackward(Lmf/org/w3c/dom/Node;Ljava/lang/StringBuffer;Lmf/org/w3c/dom/Node;)Z
    .locals 6

    const/4 v5, 0x5

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    invoke-interface {p3}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v2

    if-ne v2, v5, :cond_2

    move v0, v3

    :cond_0
    :goto_0
    if-nez p1, :cond_3

    if-eqz v0, :cond_6

    invoke-interface {p3}, Lmf/org/w3c/dom/Node;->getPreviousSibling()Lmf/org/w3c/dom/Node;

    move-result-object v2

    invoke-interface {p3}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v4

    invoke-direct {p0, v2, p2, v4}, Lmf/org/apache/xerces/dom/TextImpl;->getWholeTextBackward(Lmf/org/w3c/dom/Node;Ljava/lang/StringBuffer;Lmf/org/w3c/dom/Node;)Z

    :cond_1
    :goto_1
    return v3

    :cond_2
    move v0, v4

    goto :goto_0

    :cond_3
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v1

    if-ne v1, v5, :cond_4

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getLastChild()Lmf/org/w3c/dom/Node;

    move-result-object v2

    invoke-direct {p0, v2, p2, p1}, Lmf/org/apache/xerces/dom/TextImpl;->getWholeTextBackward(Lmf/org/w3c/dom/Node;Ljava/lang/StringBuffer;Lmf/org/w3c/dom/Node;)Z

    move-result v2

    if-nez v2, :cond_1

    :goto_2
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getPreviousSibling()Lmf/org/w3c/dom/Node;

    move-result-object p1

    goto :goto_0

    :cond_4
    const/4 v2, 0x3

    if-eq v1, v2, :cond_5

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    :cond_5
    move-object v2, p1

    check-cast v2, Lmf/org/apache/xerces/dom/TextImpl;

    invoke-virtual {v2, p2}, Lmf/org/apache/xerces/dom/TextImpl;->insertTextContent(Ljava/lang/StringBuffer;)V

    goto :goto_2

    :cond_6
    move v3, v4

    goto :goto_1
.end method

.method private getWholeTextForward(Lmf/org/w3c/dom/Node;Ljava/lang/StringBuffer;Lmf/org/w3c/dom/Node;)Z
    .locals 6

    const/4 v5, 0x5

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    invoke-interface {p3}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v2

    if-ne v2, v5, :cond_2

    move v0, v3

    :cond_0
    :goto_0
    if-nez p1, :cond_3

    if-eqz v0, :cond_6

    invoke-interface {p3}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v2

    invoke-interface {p3}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v4

    invoke-direct {p0, v2, p2, v4}, Lmf/org/apache/xerces/dom/TextImpl;->getWholeTextForward(Lmf/org/w3c/dom/Node;Ljava/lang/StringBuffer;Lmf/org/w3c/dom/Node;)Z

    :cond_1
    :goto_1
    return v3

    :cond_2
    move v0, v4

    goto :goto_0

    :cond_3
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v1

    if-ne v1, v5, :cond_4

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v2

    invoke-direct {p0, v2, p2, p1}, Lmf/org/apache/xerces/dom/TextImpl;->getWholeTextForward(Lmf/org/w3c/dom/Node;Ljava/lang/StringBuffer;Lmf/org/w3c/dom/Node;)Z

    move-result v2

    if-nez v2, :cond_1

    :goto_2
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object p1

    goto :goto_0

    :cond_4
    const/4 v2, 0x3

    if-eq v1, v2, :cond_5

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    :cond_5
    move-object v2, p1

    check-cast v2, Lmf/org/apache/xerces/dom/NodeImpl;

    invoke-virtual {v2, p2}, Lmf/org/apache/xerces/dom/NodeImpl;->getTextContent(Ljava/lang/StringBuffer;)V

    goto :goto_2

    :cond_6
    move v3, v4

    goto :goto_1
.end method

.method private hasTextOnlyChildren(Lmf/org/w3c/dom/Node;)Z
    .locals 5

    const/4 v4, 0x5

    const/4 v2, 0x0

    move-object v0, p1

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v0

    :goto_1
    if-nez v0, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v1

    if-ne v1, v4, :cond_3

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/dom/TextImpl;->hasTextOnlyChildren(Lmf/org/w3c/dom/Node;)Z

    move-result v2

    goto :goto_0

    :cond_3
    const/4 v3, 0x3

    if-eq v1, v3, :cond_4

    const/4 v3, 0x4

    if-eq v1, v3, :cond_4

    if-ne v1, v4, :cond_0

    :cond_4
    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method public getNodeName()Ljava/lang/String;
    .locals 1

    const-string v0, "#text"

    return-object v0
.end method

.method public getNodeType()S
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public getWholeText()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/TextImpl;->needsSyncData()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/TextImpl;->synchronizeData()V

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v2, p0, Lmf/org/apache/xerces/dom/TextImpl;->data:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lmf/org/apache/xerces/dom/TextImpl;->data:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lmf/org/apache/xerces/dom/TextImpl;->data:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/TextImpl;->getPreviousSibling()Lmf/org/w3c/dom/Node;

    move-result-object v2

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/TextImpl;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v3

    invoke-direct {p0, v2, v0, v3}, Lmf/org/apache/xerces/dom/TextImpl;->getWholeTextBackward(Lmf/org/w3c/dom/Node;Ljava/lang/StringBuffer;Lmf/org/w3c/dom/Node;)Z

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/TextImpl;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v2

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/TextImpl;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v3

    invoke-direct {p0, v2, v0, v3}, Lmf/org/apache/xerces/dom/TextImpl;->getWholeTextForward(Lmf/org/w3c/dom/Node;Ljava/lang/StringBuffer;Lmf/org/w3c/dom/Node;)Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method protected insertTextContent(Ljava/lang/StringBuffer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/TextImpl;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    return-void
.end method

.method public isElementContentWhitespace()Z
    .locals 1

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/TextImpl;->needsSyncData()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/TextImpl;->synchronizeData()V

    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/TextImpl;->internalIsIgnorableWhitespace()Z

    move-result v0

    return v0
.end method

.method public isIgnorableWhitespace()Z
    .locals 1

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/TextImpl;->needsSyncData()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/TextImpl;->synchronizeData()V

    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/TextImpl;->internalIsIgnorableWhitespace()Z

    move-result v0

    return v0
.end method

.method public removeData()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lmf/org/apache/xerces/dom/TextImpl;->data:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Lmf/org/apache/xerces/dom/TextImpl;->data:Ljava/lang/String;

    return-object v0
.end method

.method public replaceData(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lmf/org/apache/xerces/dom/TextImpl;->data:Ljava/lang/String;

    return-void
.end method

.method public replaceWholeText(Ljava/lang/String;)Lmf/org/w3c/dom/Text;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    const/4 v9, 0x7

    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/TextImpl;->needsSyncData()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/TextImpl;->synchronizeData()V

    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/TextImpl;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v3

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_3

    :cond_1
    if-eqz v3, :cond_2

    invoke-interface {v3, p0}, Lmf/org/w3c/dom/Node;->removeChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    :cond_2
    :goto_0
    return-object v1

    :cond_3
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/TextImpl;->ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v5

    iget-boolean v5, v5, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v5, :cond_5

    invoke-direct {p0, p0}, Lmf/org/apache/xerces/dom/TextImpl;->canModifyPrev(Lmf/org/w3c/dom/Node;)Z

    move-result v5

    if-nez v5, :cond_4

    new-instance v5, Lmf/org/w3c/dom/DOMException;

    const-string/jumbo v6, "http://www.w3.org/dom/DOMTR"

    const-string v7, "NO_MODIFICATION_ALLOWED_ERR"

    invoke-static {v6, v7, v1}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v9, v6}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v5

    :cond_4
    invoke-direct {p0, p0}, Lmf/org/apache/xerces/dom/TextImpl;->canModifyNext(Lmf/org/w3c/dom/Node;)Z

    move-result v5

    if-nez v5, :cond_5

    new-instance v5, Lmf/org/w3c/dom/DOMException;

    const-string/jumbo v6, "http://www.w3.org/dom/DOMTR"

    const-string v7, "NO_MODIFICATION_ALLOWED_ERR"

    invoke-static {v6, v7, v1}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v9, v6}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v5

    :cond_5
    const/4 v0, 0x0

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/TextImpl;->isReadOnly()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/TextImpl;->ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v5

    invoke-virtual {v5, p1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->createTextNode(Ljava/lang/String;)Lmf/org/w3c/dom/Text;

    move-result-object v1

    if-eqz v3, :cond_2

    invoke-interface {v3, v1, p0}, Lmf/org/w3c/dom/Node;->insertBefore(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    invoke-interface {v3, p0}, Lmf/org/w3c/dom/Node;->removeChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-object v0, v1

    :goto_1
    invoke-interface {v0}, Lmf/org/w3c/dom/Text;->getPreviousSibling()Lmf/org/w3c/dom/Node;

    move-result-object v4

    :goto_2
    if-nez v4, :cond_9

    :cond_6
    invoke-interface {v0}, Lmf/org/w3c/dom/Text;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v2

    :goto_3
    if-nez v2, :cond_b

    :cond_7
    move-object v1, v0

    goto :goto_0

    :cond_8
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/dom/TextImpl;->setData(Ljava/lang/String;)V

    move-object v0, p0

    goto :goto_1

    :cond_9
    invoke-interface {v4}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v5

    if-eq v5, v6, :cond_a

    invoke-interface {v4}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v5

    if-eq v5, v7, :cond_a

    invoke-interface {v4}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v5

    if-ne v5, v8, :cond_6

    invoke-direct {p0, v4}, Lmf/org/apache/xerces/dom/TextImpl;->hasTextOnlyChildren(Lmf/org/w3c/dom/Node;)Z

    move-result v5

    if-eqz v5, :cond_6

    :cond_a
    invoke-interface {v3, v4}, Lmf/org/w3c/dom/Node;->removeChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-object v4, v0

    invoke-interface {v4}, Lmf/org/w3c/dom/Node;->getPreviousSibling()Lmf/org/w3c/dom/Node;

    move-result-object v4

    goto :goto_2

    :cond_b
    invoke-interface {v2}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v5

    if-eq v5, v6, :cond_c

    invoke-interface {v2}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v5

    if-eq v5, v7, :cond_c

    invoke-interface {v2}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v5

    if-ne v5, v8, :cond_7

    invoke-direct {p0, v2}, Lmf/org/apache/xerces/dom/TextImpl;->hasTextOnlyChildren(Lmf/org/w3c/dom/Node;)Z

    move-result v5

    if-eqz v5, :cond_7

    :cond_c
    invoke-interface {v3, v2}, Lmf/org/w3c/dom/Node;->removeChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    move-object v2, v0

    invoke-interface {v2}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v2

    goto :goto_3
.end method

.method public setIgnorableWhitespace(Z)V
    .locals 1

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/TextImpl;->needsSyncData()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/TextImpl;->synchronizeData()V

    :cond_0
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/dom/TextImpl;->isIgnorableWhitespace(Z)V

    return-void
.end method

.method public setValues(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-short v0, p0, Lmf/org/apache/xerces/dom/TextImpl;->flags:S

    iput-object v1, p0, Lmf/org/apache/xerces/dom/TextImpl;->nextSibling:Lmf/org/apache/xerces/dom/ChildNode;

    iput-object v1, p0, Lmf/org/apache/xerces/dom/TextImpl;->previousSibling:Lmf/org/apache/xerces/dom/ChildNode;

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/dom/TextImpl;->setOwnerDocument(Lmf/org/apache/xerces/dom/CoreDocumentImpl;)V

    iput-object p2, p0, Lmf/org/apache/xerces/dom/CharacterDataImpl;->data:Ljava/lang/String;

    return-void
.end method

.method public splitText(I)Lmf/org/w3c/dom/Text;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    const/4 v6, 0x0

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/TextImpl;->isReadOnly()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lmf/org/w3c/dom/DOMException;

    const/4 v3, 0x7

    const-string/jumbo v4, "http://www.w3.org/dom/DOMTR"

    const-string v5, "NO_MODIFICATION_ALLOWED_ERR"

    invoke-static {v4, v5, v6}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v2

    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/TextImpl;->needsSyncData()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/TextImpl;->synchronizeData()V

    :cond_1
    if-ltz p1, :cond_2

    iget-object v2, p0, Lmf/org/apache/xerces/dom/TextImpl;->data:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le p1, v2, :cond_3

    :cond_2
    new-instance v2, Lmf/org/w3c/dom/DOMException;

    const/4 v3, 0x1

    const-string/jumbo v4, "http://www.w3.org/dom/DOMTR"

    const-string v5, "INDEX_SIZE_ERR"

    invoke-static {v4, v5, v6}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v2

    :cond_3
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/TextImpl;->getOwnerDocument()Lmf/org/w3c/dom/Document;

    move-result-object v2

    iget-object v3, p0, Lmf/org/apache/xerces/dom/TextImpl;->data:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lmf/org/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lmf/org/w3c/dom/Text;

    move-result-object v0

    iget-object v2, p0, Lmf/org/apache/xerces/dom/TextImpl;->data:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lmf/org/apache/xerces/dom/TextImpl;->setNodeValue(Ljava/lang/String;)V

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/TextImpl;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v2, p0, Lmf/org/apache/xerces/dom/TextImpl;->nextSibling:Lmf/org/apache/xerces/dom/ChildNode;

    invoke-interface {v1, v0, v2}, Lmf/org/w3c/dom/Node;->insertBefore(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    :cond_4
    return-object v0
.end method

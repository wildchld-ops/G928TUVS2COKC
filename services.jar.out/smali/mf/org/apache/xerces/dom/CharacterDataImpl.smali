.class public abstract Lmf/org/apache/xerces/dom/CharacterDataImpl;
.super Lmf/org/apache/xerces/dom/ChildNode;
.source "CharacterDataImpl.java"


# static fields
.field static final serialVersionUID:J = 0x6e112d3b0d787b76L

.field private static transient singletonNodeList:Lmf/org/w3c/dom/NodeList;


# instance fields
.field protected data:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lmf/org/apache/xerces/dom/CharacterDataImpl$1;

    invoke-direct {v0}, Lmf/org/apache/xerces/dom/CharacterDataImpl$1;-><init>()V

    sput-object v0, Lmf/org/apache/xerces/dom/CharacterDataImpl;->singletonNodeList:Lmf/org/w3c/dom/NodeList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmf/org/apache/xerces/dom/ChildNode;-><init>()V

    return-void
.end method

.method protected constructor <init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/dom/ChildNode;-><init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;)V

    iput-object p2, p0, Lmf/org/apache/xerces/dom/CharacterDataImpl;->data:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public appendData(Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CharacterDataImpl;->isReadOnly()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "http://www.w3.org/dom/DOMTR"

    const-string v2, "NO_MODIFICATION_ALLOWED_ERR"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lmf/org/w3c/dom/DOMException;

    const/4 v2, 0x7

    invoke-direct {v1, v2, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    :cond_0
    if-nez p1, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CharacterDataImpl;->needsSyncData()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CharacterDataImpl;->synchronizeData()V

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lmf/org/apache/xerces/dom/CharacterDataImpl;->data:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmf/org/apache/xerces/dom/CharacterDataImpl;->setNodeValue(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public deleteData(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lmf/org/apache/xerces/dom/CharacterDataImpl;->internalDeleteData(IIZ)V

    return-void
.end method

.method public getChildNodes()Lmf/org/w3c/dom/NodeList;
    .locals 1

    sget-object v0, Lmf/org/apache/xerces/dom/CharacterDataImpl;->singletonNodeList:Lmf/org/w3c/dom/NodeList;

    return-object v0
.end method

.method public getData()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CharacterDataImpl;->needsSyncData()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CharacterDataImpl;->synchronizeData()V

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/CharacterDataImpl;->data:Ljava/lang/String;

    return-object v0
.end method

.method public getLength()I
    .locals 1

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CharacterDataImpl;->needsSyncData()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CharacterDataImpl;->synchronizeData()V

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/CharacterDataImpl;->data:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public getNodeValue()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CharacterDataImpl;->needsSyncData()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CharacterDataImpl;->synchronizeData()V

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/CharacterDataImpl;->data:Ljava/lang/String;

    return-object v0
.end method

.method public insertData(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lmf/org/apache/xerces/dom/CharacterDataImpl;->internalInsertData(ILjava/lang/String;Z)V

    return-void
.end method

.method internalDeleteData(IIZ)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    const/4 v10, 0x1

    const/4 v6, 0x0

    const/4 v9, 0x0

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CharacterDataImpl;->ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v2

    iget-boolean v5, v2, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CharacterDataImpl;->isReadOnly()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string/jumbo v5, "http://www.w3.org/dom/DOMTR"

    const-string v6, "NO_MODIFICATION_ALLOWED_ERR"

    invoke-static {v5, v6, v9}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v5, Lmf/org/w3c/dom/DOMException;

    const/4 v6, 0x7

    invoke-direct {v5, v6, v1}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v5

    :cond_0
    if-gez p2, :cond_1

    const-string/jumbo v5, "http://www.w3.org/dom/DOMTR"

    const-string v6, "INDEX_SIZE_ERR"

    invoke-static {v5, v6, v9}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v5, Lmf/org/w3c/dom/DOMException;

    invoke-direct {v5, v10, v1}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v5

    :cond_1
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CharacterDataImpl;->needsSyncData()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CharacterDataImpl;->synchronizeData()V

    :cond_2
    iget-object v5, p0, Lmf/org/apache/xerces/dom/CharacterDataImpl;->data:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, p2

    sub-int/2addr v5, p1

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lmf/org/apache/xerces/dom/CharacterDataImpl;->data:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {v5, v7, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-lez v3, :cond_3

    iget-object v5, p0, Lmf/org/apache/xerces/dom/CharacterDataImpl;->data:Ljava/lang/String;

    add-int v7, p1, p2

    add-int v8, p1, p2

    add-int/2addr v8, v3

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    :goto_0
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, p3}, Lmf/org/apache/xerces/dom/CharacterDataImpl;->setNodeValueInternal(Ljava/lang/String;Z)V

    invoke-virtual {v2, p0, p1, p2}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->deletedText(Lmf/org/apache/xerces/dom/CharacterDataImpl;II)V

    return-void

    :cond_3
    const-string v5, ""
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v5, "http://www.w3.org/dom/DOMTR"

    const-string v6, "INDEX_SIZE_ERR"

    invoke-static {v5, v6, v9}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v5, Lmf/org/w3c/dom/DOMException;

    invoke-direct {v5, v10, v1}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v5
.end method

.method internalInsertData(ILjava/lang/String;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    const/4 v6, 0x0

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CharacterDataImpl;->ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v2

    iget-boolean v4, v2, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CharacterDataImpl;->isReadOnly()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v4, "http://www.w3.org/dom/DOMTR"

    const-string v5, "NO_MODIFICATION_ALLOWED_ERR"

    invoke-static {v4, v5, v6}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Lmf/org/w3c/dom/DOMException;

    const/4 v5, 0x7

    invoke-direct {v4, v5, v1}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v4

    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CharacterDataImpl;->needsSyncData()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CharacterDataImpl;->synchronizeData()V

    :cond_1
    :try_start_0
    new-instance v4, Ljava/lang/StringBuffer;

    iget-object v5, p0, Lmf/org/apache/xerces/dom/CharacterDataImpl;->data:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, p3}, Lmf/org/apache/xerces/dom/CharacterDataImpl;->setNodeValueInternal(Ljava/lang/String;Z)V

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, p0, p1, v4}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->insertedText(Lmf/org/apache/xerces/dom/CharacterDataImpl;II)V
    :try_end_0
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v4, "http://www.w3.org/dom/DOMTR"

    const-string v5, "INDEX_SIZE_ERR"

    invoke-static {v4, v5, v6}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Lmf/org/w3c/dom/DOMException;

    const/4 v5, 0x1

    invoke-direct {v4, v5, v1}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v4
.end method

.method public replaceData(IILjava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    const/4 v4, 0x1

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CharacterDataImpl;->ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v2

    iget-boolean v3, v2, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CharacterDataImpl;->isReadOnly()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "http://www.w3.org/dom/DOMTR"

    const-string v4, "NO_MODIFICATION_ALLOWED_ERR"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lmf/org/w3c/dom/DOMException;

    const/4 v4, 0x7

    invoke-direct {v3, v4, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v3

    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CharacterDataImpl;->needsSyncData()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CharacterDataImpl;->synchronizeData()V

    :cond_1
    invoke-virtual {v2, p0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->replacingData(Lmf/org/apache/xerces/dom/NodeImpl;)V

    iget-object v1, p0, Lmf/org/apache/xerces/dom/CharacterDataImpl;->data:Ljava/lang/String;

    invoke-virtual {p0, p1, p2, v4}, Lmf/org/apache/xerces/dom/CharacterDataImpl;->internalDeleteData(IIZ)V

    invoke-virtual {p0, p1, p3, v4}, Lmf/org/apache/xerces/dom/CharacterDataImpl;->internalInsertData(ILjava/lang/String;Z)V

    iget-object v3, p0, Lmf/org/apache/xerces/dom/CharacterDataImpl;->data:Ljava/lang/String;

    invoke-virtual {v2, p0, v1, v3}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->replacedCharacterData(Lmf/org/apache/xerces/dom/NodeImpl;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setData(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/dom/CharacterDataImpl;->setNodeValue(Ljava/lang/String;)V

    return-void
.end method

.method public setNodeValue(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/dom/CharacterDataImpl;->setNodeValueInternal(Ljava/lang/String;)V

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CharacterDataImpl;->ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v0

    invoke-virtual {v0, p0}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->replacedText(Lmf/org/apache/xerces/dom/CharacterDataImpl;)V

    return-void
.end method

.method protected setNodeValueInternal(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lmf/org/apache/xerces/dom/CharacterDataImpl;->setNodeValueInternal(Ljava/lang/String;Z)V

    return-void
.end method

.method protected setNodeValueInternal(Ljava/lang/String;Z)V
    .locals 6

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CharacterDataImpl;->ownerDocument()Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v2

    iget-boolean v3, v2, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CharacterDataImpl;->isReadOnly()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "http://www.w3.org/dom/DOMTR"

    const-string v4, "NO_MODIFICATION_ALLOWED_ERR"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lmf/org/w3c/dom/DOMException;

    const/4 v4, 0x7

    invoke-direct {v3, v4, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v3

    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CharacterDataImpl;->needsSyncData()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CharacterDataImpl;->synchronizeData()V

    :cond_1
    iget-object v1, p0, Lmf/org/apache/xerces/dom/CharacterDataImpl;->data:Ljava/lang/String;

    invoke-virtual {v2, p0, p2}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->modifyingCharacterData(Lmf/org/apache/xerces/dom/NodeImpl;Z)V

    iput-object p1, p0, Lmf/org/apache/xerces/dom/CharacterDataImpl;->data:Ljava/lang/String;

    invoke-virtual {v2, p0, v1, p1, p2}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->modifiedCharacterData(Lmf/org/apache/xerces/dom/NodeImpl;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public substringData(II)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CharacterDataImpl;->needsSyncData()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/CharacterDataImpl;->synchronizeData()V

    :cond_0
    iget-object v3, p0, Lmf/org/apache/xerces/dom/CharacterDataImpl;->data:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-ltz p2, :cond_1

    if-ltz p1, :cond_1

    add-int/lit8 v3, v0, -0x1

    if-le p1, v3, :cond_2

    :cond_1
    const-string/jumbo v3, "http://www.w3.org/dom/DOMTR"

    const-string v4, "INDEX_SIZE_ERR"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lmf/org/w3c/dom/DOMException;

    const/4 v4, 0x1

    invoke-direct {v3, v4, v1}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v3

    :cond_2
    add-int v3, p1, p2

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v3, p0, Lmf/org/apache/xerces/dom/CharacterDataImpl;->data:Ljava/lang/String;

    invoke-virtual {v3, p1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

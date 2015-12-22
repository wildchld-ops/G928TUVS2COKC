.class public Lmf/org/apache/xerces/dom/ElementNSImpl;
.super Lmf/org/apache/xerces/dom/ElementImpl;
.source "ElementNSImpl.java"


# static fields
.field static final serialVersionUID:J = -0x7ee003136adf5f42L

.field static final xmlURI:Ljava/lang/String; = "http://www.w3.org/XML/1998/namespace"


# instance fields
.field protected localName:Ljava/lang/String;

.field protected namespaceURI:Ljava/lang/String;

.field transient type:Lmf/org/apache/xerces/xs/XSTypeDefinition;


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmf/org/apache/xerces/dom/ElementImpl;-><init>()V

    return-void
.end method

.method protected constructor <init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lmf/org/apache/xerces/dom/ElementImpl;-><init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;)V

    return-void
.end method

.method protected constructor <init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    invoke-direct {p0, p1, p3}, Lmf/org/apache/xerces/dom/ElementImpl;-><init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;)V

    invoke-direct {p0, p2, p3}, Lmf/org/apache/xerces/dom/ElementNSImpl;->setName(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected constructor <init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    invoke-direct {p0, p1, p3}, Lmf/org/apache/xerces/dom/ElementImpl;-><init>(Lmf/org/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;)V

    iput-object p4, p0, Lmf/org/apache/xerces/dom/ElementNSImpl;->localName:Ljava/lang/String;

    iput-object p2, p0, Lmf/org/apache/xerces/dom/ElementNSImpl;->namespaceURI:Ljava/lang/String;

    return-void
.end method

.method private setName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const/16 v6, 0x3a

    const/16 v7, 0xe

    const/4 v5, 0x0

    iput-object p1, p0, Lmf/org/apache/xerces/dom/ElementNSImpl;->namespaceURI:Ljava/lang/String;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    move-object v4, v5

    :goto_0
    iput-object v4, p0, Lmf/org/apache/xerces/dom/ElementNSImpl;->namespaceURI:Ljava/lang/String;

    :cond_0
    if-nez p2, :cond_2

    const-string/jumbo v4, "http://www.w3.org/dom/DOMTR"

    const-string v6, "NAMESPACE_ERR"

    invoke-static {v4, v6, v5}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lmf/org/w3c/dom/DOMException;

    invoke-direct {v4, v7, v2}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v4

    :cond_1
    move-object v4, p1

    goto :goto_0

    :cond_2
    invoke-virtual {p2, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    invoke-virtual {p2, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    iget-object v4, p0, Lmf/org/apache/xerces/dom/ElementNSImpl;->ownerDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v4, p2, v0, v1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->checkNamespaceWF(Ljava/lang/String;II)V

    if-gez v0, :cond_5

    iput-object p2, p0, Lmf/org/apache/xerces/dom/ElementNSImpl;->localName:Ljava/lang/String;

    iget-object v4, p0, Lmf/org/apache/xerces/dom/ElementNSImpl;->ownerDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    iget-boolean v4, v4, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v4, :cond_8

    iget-object v4, p0, Lmf/org/apache/xerces/dom/ElementNSImpl;->ownerDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    iget-object v6, p0, Lmf/org/apache/xerces/dom/ElementNSImpl;->localName:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->checkQName(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v4, "xmlns"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz p1, :cond_4

    sget-object v4, Lmf/org/apache/xerces/xni/NamespaceContext;->XMLNS_URI:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    if-eqz p1, :cond_8

    sget-object v4, Lmf/org/apache/xerces/xni/NamespaceContext;->XMLNS_URI:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    const-string/jumbo v4, "xmlns"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    :cond_4
    const-string/jumbo v4, "http://www.w3.org/dom/DOMTR"

    const-string v6, "NAMESPACE_ERR"

    invoke-static {v4, v6, v5}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lmf/org/w3c/dom/DOMException;

    invoke-direct {v4, v7, v2}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v4

    :cond_5
    const/4 v4, 0x0

    invoke-virtual {p2, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lmf/org/apache/xerces/dom/ElementNSImpl;->localName:Ljava/lang/String;

    iget-object v4, p0, Lmf/org/apache/xerces/dom/ElementNSImpl;->ownerDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    iget-boolean v4, v4, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v4, :cond_8

    if-eqz p1, :cond_6

    const-string/jumbo v4, "xml"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    sget-object v4, Lmf/org/apache/xerces/xni/NamespaceContext;->XML_URI:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    :cond_6
    const-string/jumbo v4, "http://www.w3.org/dom/DOMTR"

    const-string v6, "NAMESPACE_ERR"

    invoke-static {v4, v6, v5}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Lmf/org/w3c/dom/DOMException;

    invoke-direct {v4, v7, v2}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v4

    :cond_7
    iget-object v4, p0, Lmf/org/apache/xerces/dom/ElementNSImpl;->ownerDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    iget-object v5, p0, Lmf/org/apache/xerces/dom/ElementNSImpl;->localName:Ljava/lang/String;

    invoke-virtual {v4, v3, v5}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->checkQName(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lmf/org/apache/xerces/dom/ElementNSImpl;->ownerDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v4, v3, p1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->checkDOMNSErr(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    return-void
.end method


# virtual methods
.method public getLocalName()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ElementNSImpl;->needsSyncData()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ElementNSImpl;->synchronizeData()V

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/ElementNSImpl;->localName:Ljava/lang/String;

    return-object v0
.end method

.method public getNamespaceURI()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ElementNSImpl;->needsSyncData()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ElementNSImpl;->synchronizeData()V

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/ElementNSImpl;->namespaceURI:Ljava/lang/String;

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ElementNSImpl;->needsSyncData()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ElementNSImpl;->synchronizeData()V

    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/dom/ElementNSImpl;->name:Ljava/lang/String;

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_1

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_1
    iget-object v1, p0, Lmf/org/apache/xerces/dom/ElementNSImpl;->name:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getTypeName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/dom/ElementNSImpl;->type:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/dom/ElementNSImpl;->type:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    instance-of v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/dom/ElementNSImpl;->type:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    check-cast v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->getTypeName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/ElementNSImpl;->type:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    instance-of v0, v0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/dom/ElementNSImpl;->type:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    check-cast v0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->getTypeName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTypeNamespace()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/dom/ElementNSImpl;->type:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/dom/ElementNSImpl;->type:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    invoke-interface {v0}, Lmf/org/apache/xerces/xs/XSTypeDefinition;->getNamespace()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getXMLBaseAttribute()Lmf/org/w3c/dom/Attr;
    .locals 3

    iget-object v0, p0, Lmf/org/apache/xerces/dom/ElementNSImpl;->attributes:Lmf/org/apache/xerces/dom/AttributeMap;

    const-string/jumbo v1, "http://www.w3.org/XML/1998/namespace"

    const-string v2, "base"

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/dom/AttributeMap;->getNamedItemNS(Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lmf/org/w3c/dom/Attr;

    return-object v0
.end method

.method public isDerivedFrom(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ElementNSImpl;->needsSyncData()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ElementNSImpl;->synchronizeData()V

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/dom/ElementNSImpl;->type:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmf/org/apache/xerces/dom/ElementNSImpl;->type:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    instance-of v0, v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/dom/ElementNSImpl;->type:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    check-cast v0, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    invoke-virtual {v0, p1, p2, p3}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->isDOMDerivedFrom(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/dom/ElementNSImpl;->type:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    instance-of v0, v0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmf/org/apache/xerces/dom/ElementNSImpl;->type:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    check-cast v0, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    invoke-virtual {v0, p1, p2, p3}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->isDOMDerivedFrom(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method rename(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ElementNSImpl;->needsSyncData()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ElementNSImpl;->synchronizeData()V

    :cond_0
    iput-object p2, p0, Lmf/org/apache/xerces/dom/ElementNSImpl;->name:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lmf/org/apache/xerces/dom/ElementNSImpl;->setName(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ElementNSImpl;->reconcileDefaultAttributes()V

    return-void
.end method

.method public setPrefix(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/w3c/dom/DOMException;
        }
    .end annotation

    const/16 v4, 0xe

    const/4 v3, 0x0

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ElementNSImpl;->needsSyncData()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ElementNSImpl;->synchronizeData()V

    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/dom/ElementNSImpl;->ownerDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    iget-boolean v1, v1, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lmf/org/apache/xerces/dom/ElementNSImpl;->isReadOnly()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "http://www.w3.org/dom/DOMTR"

    const-string v2, "NO_MODIFICATION_ALLOWED_ERR"

    invoke-static {v1, v2, v3}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lmf/org/w3c/dom/DOMException;

    const/4 v2, 0x7

    invoke-direct {v1, v2, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    :cond_1
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lmf/org/apache/xerces/dom/ElementNSImpl;->ownerDocument:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-virtual {v1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->isXML11Version()Z

    move-result v1

    invoke-static {p1, v1}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->isXMLName(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "http://www.w3.org/dom/DOMTR"

    const-string v2, "INVALID_CHARACTER_ERR"

    invoke-static {v1, v2, v3}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lmf/org/w3c/dom/DOMException;

    const/4 v2, 0x5

    invoke-direct {v1, v2, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    :cond_2
    iget-object v1, p0, Lmf/org/apache/xerces/dom/ElementNSImpl;->namespaceURI:Ljava/lang/String;

    if-eqz v1, :cond_3

    const/16 v1, 0x3a

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_4

    :cond_3
    const-string/jumbo v1, "http://www.w3.org/dom/DOMTR"

    const-string v2, "NAMESPACE_ERR"

    invoke-static {v1, v2, v3}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lmf/org/w3c/dom/DOMException;

    invoke-direct {v1, v4, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    :cond_4
    const-string/jumbo v1, "xml"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lmf/org/apache/xerces/dom/ElementNSImpl;->namespaceURI:Ljava/lang/String;

    const-string/jumbo v2, "http://www.w3.org/XML/1998/namespace"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string/jumbo v1, "http://www.w3.org/dom/DOMTR"

    const-string v2, "NAMESPACE_ERR"

    invoke-static {v1, v2, v3}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lmf/org/w3c/dom/DOMException;

    invoke-direct {v1, v4, v0}, Lmf/org/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw v1

    :cond_5
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lmf/org/apache/xerces/dom/ElementNSImpl;->localName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmf/org/apache/xerces/dom/ElementNSImpl;->name:Ljava/lang/String;

    :goto_0
    return-void

    :cond_6
    iget-object v1, p0, Lmf/org/apache/xerces/dom/ElementNSImpl;->localName:Ljava/lang/String;

    iput-object v1, p0, Lmf/org/apache/xerces/dom/ElementNSImpl;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method public setType(Lmf/org/apache/xerces/xs/XSTypeDefinition;)V
    .locals 0

    iput-object p1, p0, Lmf/org/apache/xerces/dom/ElementNSImpl;->type:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    return-void
.end method

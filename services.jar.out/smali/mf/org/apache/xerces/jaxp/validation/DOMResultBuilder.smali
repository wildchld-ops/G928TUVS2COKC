.class final Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;
.super Ljava/lang/Object;
.source "DOMResultBuilder.java"

# interfaces
.implements Lmf/org/apache/xerces/jaxp/validation/DOMDocumentHandler;


# static fields
.field private static final kidOK:[I


# instance fields
.field private final fAttributeQName:Lmf/org/apache/xerces/xni/QName;

.field private fCurrentNode:Lmf/org/w3c/dom/Node;

.field private fDocument:Lmf/org/w3c/dom/Document;

.field private fDocumentImpl:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

.field private fFragmentRoot:Lmf/org/w3c/dom/Node;

.field private fIgnoreChars:Z

.field private fNextSibling:Lmf/org/w3c/dom/Node;

.field private fStorePSVI:Z

.field private fTarget:Lmf/org/w3c/dom/Node;

.field private final fTargetChildren:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/4 v9, 0x0

    const/16 v0, 0xd

    new-array v0, v0, [I

    sput-object v0, Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;->kidOK:[I

    sget-object v0, Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;->kidOK:[I

    const/16 v1, 0x9

    const/16 v2, 0x582

    aput v2, v0, v1

    sget-object v0, Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;->kidOK:[I

    const/16 v1, 0xb

    sget-object v2, Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;->kidOK:[I

    const/4 v3, 0x6

    sget-object v4, Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;->kidOK:[I

    const/4 v5, 0x5

    sget-object v6, Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;->kidOK:[I

    const/4 v7, 0x1

    const/16 v8, 0x1ba

    aput v8, v6, v7

    aput v8, v4, v5

    aput v8, v2, v3

    aput v8, v0, v1

    sget-object v0, Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;->kidOK:[I

    const/4 v1, 0x2

    const/16 v2, 0x28

    aput v2, v0, v1

    sget-object v0, Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;->kidOK:[I

    const/16 v1, 0xa

    aput v9, v0, v1

    sget-object v0, Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;->kidOK:[I

    const/4 v1, 0x7

    aput v9, v0, v1

    sget-object v0, Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;->kidOK:[I

    const/16 v1, 0x8

    aput v9, v0, v1

    sget-object v0, Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;->kidOK:[I

    const/4 v1, 0x3

    aput v9, v0, v1

    sget-object v0, Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;->kidOK:[I

    const/4 v1, 0x4

    aput v9, v0, v1

    sget-object v0, Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;->kidOK:[I

    const/16 v1, 0xc

    aput v9, v0, v1

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;->fTargetChildren:Ljava/util/ArrayList;

    new-instance v0, Lmf/org/apache/xerces/xni/QName;

    invoke-direct {v0}, Lmf/org/apache/xerces/xni/QName;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    return-void
.end method

.method private append(Lmf/org/w3c/dom/Node;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;->fCurrentNode:Lmf/org/w3c/dom/Node;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;->fCurrentNode:Lmf/org/w3c/dom/Node;

    invoke-interface {v1, p1}, Lmf/org/w3c/dom/Node;->appendChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;->kidOK:[I

    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;->fTarget:Lmf/org/w3c/dom/Node;

    invoke-interface {v2}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v3

    shl-int/2addr v2, v3

    and-int/2addr v1, v2

    if-nez v1, :cond_1

    const-string/jumbo v1, "http://www.w3.org/dom/DOMTR"

    const-string v2, "HIERARCHY_REQUEST_ERR"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lmf/org/apache/xerces/xni/XNIException;

    invoke-direct {v1, v0}, Lmf/org/apache/xerces/xni/XNIException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;->fTargetChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public cdata(Lmf/org/w3c/dom/CDATASection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;->fDocument:Lmf/org/w3c/dom/Document;

    invoke-interface {p1}, Lmf/org/w3c/dom/CDATASection;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lmf/org/w3c/dom/Document;->createCDATASection(Ljava/lang/String;)Lmf/org/w3c/dom/CDATASection;

    move-result-object v0

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;->append(Lmf/org/w3c/dom/Node;)V

    return-void
.end method

.method public characters(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-boolean v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;->fIgnoreChars:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;->fDocument:Lmf/org/w3c/dom/Document;

    invoke-virtual {p1}, Lmf/org/apache/xerces/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lmf/org/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lmf/org/w3c/dom/Text;

    move-result-object v0

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;->append(Lmf/org/w3c/dom/Node;)V

    :cond_0
    return-void
.end method

.method public characters(Lmf/org/w3c/dom/Text;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;->fDocument:Lmf/org/w3c/dom/Document;

    invoke-interface {p1}, Lmf/org/w3c/dom/Text;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lmf/org/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lmf/org/w3c/dom/Text;

    move-result-object v0

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;->append(Lmf/org/w3c/dom/Node;)V

    return-void
.end method

.method public comment(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    return-void
.end method

.method public comment(Lmf/org/w3c/dom/Comment;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;->fDocument:Lmf/org/w3c/dom/Document;

    invoke-interface {p1}, Lmf/org/w3c/dom/Comment;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lmf/org/w3c/dom/Document;->createComment(Ljava/lang/String;)Lmf/org/w3c/dom/Comment;

    move-result-object v0

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;->append(Lmf/org/w3c/dom/Node;)V

    return-void
.end method

.method public doctypeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    return-void
.end method

.method public doctypeDecl(Lmf/org/w3c/dom/DocumentType;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v10, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;->fDocumentImpl:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    if-eqz v10, :cond_1

    iget-object v10, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;->fDocumentImpl:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-interface {p1}, Lmf/org/w3c/dom/DocumentType;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-interface {p1}, Lmf/org/w3c/dom/DocumentType;->getPublicId()Ljava/lang/String;

    move-result-object v12

    invoke-interface {p1}, Lmf/org/w3c/dom/DocumentType;->getSystemId()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v11, v12, v13}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->createDocumentType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/DocumentType;

    move-result-object v0

    invoke-interface {p1}, Lmf/org/w3c/dom/DocumentType;->getInternalSubset()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object v10, v0

    check-cast v10, Lmf/org/apache/xerces/dom/DocumentTypeImpl;

    invoke-virtual {v10, v2}, Lmf/org/apache/xerces/dom/DocumentTypeImpl;->setInternalSubset(Ljava/lang/String;)V

    :cond_0
    invoke-interface {p1}, Lmf/org/w3c/dom/DocumentType;->getEntities()Lmf/org/w3c/dom/NamedNodeMap;

    move-result-object v8

    invoke-interface {v0}, Lmf/org/w3c/dom/DocumentType;->getEntities()Lmf/org/w3c/dom/NamedNodeMap;

    move-result-object v5

    invoke-interface {v8}, Lmf/org/w3c/dom/NamedNodeMap;->getLength()I

    move-result v3

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v3, :cond_2

    invoke-interface {p1}, Lmf/org/w3c/dom/DocumentType;->getNotations()Lmf/org/w3c/dom/NamedNodeMap;

    move-result-object v8

    invoke-interface {v0}, Lmf/org/w3c/dom/DocumentType;->getNotations()Lmf/org/w3c/dom/NamedNodeMap;

    move-result-object v5

    invoke-interface {v8}, Lmf/org/w3c/dom/NamedNodeMap;->getLength()I

    move-result v3

    const/4 v1, 0x0

    :goto_1
    if-lt v1, v3, :cond_3

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;->append(Lmf/org/w3c/dom/Node;)V

    :cond_1
    return-void

    :cond_2
    invoke-interface {v8, v1}, Lmf/org/w3c/dom/NamedNodeMap;->item(I)Lmf/org/w3c/dom/Node;

    move-result-object v7

    check-cast v7, Lmf/org/w3c/dom/Entity;

    iget-object v10, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;->fDocumentImpl:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-interface {v7}, Lmf/org/w3c/dom/Entity;->getNodeName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->createEntity(Ljava/lang/String;)Lmf/org/w3c/dom/Entity;

    move-result-object v4

    check-cast v4, Lmf/org/apache/xerces/dom/EntityImpl;

    invoke-interface {v7}, Lmf/org/w3c/dom/Entity;->getPublicId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Lmf/org/apache/xerces/dom/EntityImpl;->setPublicId(Ljava/lang/String;)V

    invoke-interface {v7}, Lmf/org/w3c/dom/Entity;->getSystemId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Lmf/org/apache/xerces/dom/EntityImpl;->setSystemId(Ljava/lang/String;)V

    invoke-interface {v7}, Lmf/org/w3c/dom/Entity;->getNotationName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Lmf/org/apache/xerces/dom/EntityImpl;->setNotationName(Ljava/lang/String;)V

    invoke-interface {v5, v4}, Lmf/org/w3c/dom/NamedNodeMap;->setNamedItem(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    invoke-interface {v8, v1}, Lmf/org/w3c/dom/NamedNodeMap;->item(I)Lmf/org/w3c/dom/Node;

    move-result-object v9

    check-cast v9, Lmf/org/w3c/dom/Notation;

    iget-object v10, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;->fDocumentImpl:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    invoke-interface {v9}, Lmf/org/w3c/dom/Notation;->getNodeName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->createNotation(Ljava/lang/String;)Lmf/org/w3c/dom/Notation;

    move-result-object v6

    check-cast v6, Lmf/org/apache/xerces/dom/NotationImpl;

    invoke-interface {v9}, Lmf/org/w3c/dom/Notation;->getPublicId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Lmf/org/apache/xerces/dom/NotationImpl;->setPublicId(Ljava/lang/String;)V

    invoke-interface {v9}, Lmf/org/w3c/dom/Notation;->getSystemId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Lmf/org/apache/xerces/dom/NotationImpl;->setSystemId(Ljava/lang/String;)V

    invoke-interface {v5, v6}, Lmf/org/w3c/dom/NamedNodeMap;->setNamedItem(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public emptyElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;->startElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V

    invoke-virtual {p0, p1, p3}, Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;->endElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/Augmentations;)V

    return-void
.end method

.method public endCDATA(Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    return-void
.end method

.method public endDocument(Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;->fTargetChildren:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;->fNextSibling:Lmf/org/w3c/dom/Node;

    if-nez v2, :cond_2

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v1, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;->fTarget:Lmf/org/w3c/dom/Node;

    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;->fTargetChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmf/org/w3c/dom/Node;

    invoke-interface {v3, v2}, Lmf/org/w3c/dom/Node;->appendChild(Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_0

    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;->fTarget:Lmf/org/w3c/dom/Node;

    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;->fTargetChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmf/org/w3c/dom/Node;

    iget-object v4, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;->fNextSibling:Lmf/org/w3c/dom/Node;

    invoke-interface {v3, v2, v4}, Lmf/org/w3c/dom/Node;->insertBefore(Lmf/org/w3c/dom/Node;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/Node;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public endElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/4 v4, 0x0

    if-eqz p2, :cond_2

    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;->fDocumentImpl:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    if-eqz v2, :cond_2

    const-string v2, "ELEMENT_PSVI"

    invoke-interface {p2, v2}, Lmf/org/apache/xerces/xni/Augmentations;->getItem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/xs/ElementPSVI;

    if-eqz v0, :cond_2

    iget-boolean v2, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;->fStorePSVI:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;->fCurrentNode:Lmf/org/w3c/dom/Node;

    check-cast v2, Lmf/org/apache/xerces/dom/PSVIElementNSImpl;

    invoke-virtual {v2, v0}, Lmf/org/apache/xerces/dom/PSVIElementNSImpl;->setPSVI(Lmf/org/apache/xerces/xs/ElementPSVI;)V

    :cond_0
    invoke-interface {v0}, Lmf/org/apache/xerces/xs/ElementPSVI;->getMemberTypeDefinition()Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-interface {v0}, Lmf/org/apache/xerces/xs/ElementPSVI;->getTypeDefinition()Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v1

    :cond_1
    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;->fCurrentNode:Lmf/org/w3c/dom/Node;

    check-cast v2, Lmf/org/apache/xerces/dom/ElementNSImpl;

    invoke-virtual {v2, v1}, Lmf/org/apache/xerces/dom/ElementNSImpl;->setType(Lmf/org/apache/xerces/xs/XSTypeDefinition;)V

    :cond_2
    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;->fCurrentNode:Lmf/org/w3c/dom/Node;

    iget-object v3, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;->fFragmentRoot:Lmf/org/w3c/dom/Node;

    if-ne v2, v3, :cond_3

    iput-object v4, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;->fCurrentNode:Lmf/org/w3c/dom/Node;

    iput-object v4, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;->fFragmentRoot:Lmf/org/w3c/dom/Node;

    :goto_0
    return-void

    :cond_3
    iget-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;->fCurrentNode:Lmf/org/w3c/dom/Node;

    invoke-interface {v2}, Lmf/org/w3c/dom/Node;->getParentNode()Lmf/org/w3c/dom/Node;

    move-result-object v2

    iput-object v2, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;->fCurrentNode:Lmf/org/w3c/dom/Node;

    goto :goto_0
.end method

.method public endGeneralEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    return-void
.end method

.method public getDocumentSource()Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public ignorableWhitespace(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;->characters(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    return-void
.end method

.method public processingInstruction(Lmf/org/w3c/dom/ProcessingInstruction;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;->fDocument:Lmf/org/w3c/dom/Document;

    invoke-interface {p1}, Lmf/org/w3c/dom/ProcessingInstruction;->getTarget()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lmf/org/w3c/dom/ProcessingInstruction;->getData()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lmf/org/w3c/dom/Document;->createProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/ProcessingInstruction;

    move-result-object v0

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;->append(Lmf/org/w3c/dom/Node;)V

    return-void
.end method

.method public setDOMResult(Lmf/javax/xml/transform/dom/DOMResult;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    iput-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;->fCurrentNode:Lmf/org/w3c/dom/Node;

    iput-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;->fFragmentRoot:Lmf/org/w3c/dom/Node;

    iput-boolean v2, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;->fIgnoreChars:Z

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;->fTargetChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lmf/javax/xml/transform/dom/DOMResult;->getNode()Lmf/org/w3c/dom/Node;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;->fTarget:Lmf/org/w3c/dom/Node;

    invoke-virtual {p1}, Lmf/javax/xml/transform/dom/DOMResult;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v0

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;->fNextSibling:Lmf/org/w3c/dom/Node;

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;->fTarget:Lmf/org/w3c/dom/Node;

    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/16 v2, 0x9

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;->fTarget:Lmf/org/w3c/dom/Node;

    check-cast v0, Lmf/org/w3c/dom/Document;

    :goto_0
    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;->fDocument:Lmf/org/w3c/dom/Document;

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;->fDocument:Lmf/org/w3c/dom/Document;

    instance-of v0, v0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;->fDocument:Lmf/org/w3c/dom/Document;

    check-cast v0, Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    :goto_1
    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;->fDocumentImpl:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;->fDocument:Lmf/org/w3c/dom/Document;

    instance-of v0, v0, Lmf/org/apache/xerces/dom/PSVIDocumentImpl;

    iput-boolean v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;->fStorePSVI:Z

    :goto_2
    return-void

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;->fTarget:Lmf/org/w3c/dom/Node;

    invoke-interface {v0}, Lmf/org/w3c/dom/Node;->getOwnerDocument()Lmf/org/w3c/dom/Document;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    goto :goto_1

    :cond_2
    iput-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;->fTarget:Lmf/org/w3c/dom/Node;

    iput-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;->fNextSibling:Lmf/org/w3c/dom/Node;

    iput-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;->fDocument:Lmf/org/w3c/dom/Document;

    iput-object v1, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;->fDocumentImpl:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    iput-boolean v2, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;->fStorePSVI:Z

    goto :goto_2
.end method

.method public setDocumentSource(Lmf/org/apache/xerces/xni/parser/XMLDocumentSource;)V
    .locals 0

    return-void
.end method

.method public setIgnoringCharacters(Z)V
    .locals 0

    iput-boolean p1, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;->fIgnoreChars:Z

    return-void
.end method

.method public startCDATA(Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    return-void
.end method

.method public startDocument(Lmf/org/apache/xerces/xni/XMLLocator;Ljava/lang/String;Lmf/org/apache/xerces/xni/NamespaceContext;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    return-void
.end method

.method public startElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    const/4 v10, 0x1

    invoke-interface {p2}, Lmf/org/apache/xerces/xni/XMLAttributes;->getLength()I

    move-result v1

    iget-object v6, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;->fDocumentImpl:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    if-nez v6, :cond_3

    iget-object v6, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;->fDocument:Lmf/org/w3c/dom/Document;

    iget-object v7, p1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    iget-object v8, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    invoke-interface {v6, v7, v8}, Lmf/org/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/Element;

    move-result-object v3

    const/4 v4, 0x0

    :goto_0
    if-lt v4, v1, :cond_2

    :cond_0
    invoke-direct {p0, v3}, Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;->append(Lmf/org/w3c/dom/Node;)V

    iput-object v3, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;->fCurrentNode:Lmf/org/w3c/dom/Node;

    iget-object v6, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;->fFragmentRoot:Lmf/org/w3c/dom/Node;

    if-nez v6, :cond_1

    iput-object v3, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;->fFragmentRoot:Lmf/org/w3c/dom/Node;

    :cond_1
    return-void

    :cond_2
    iget-object v6, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    invoke-interface {p2, v4, v6}, Lmf/org/apache/xerces/xni/XMLAttributes;->getName(ILmf/org/apache/xerces/xni/QName;)V

    iget-object v6, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v6, v6, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    iget-object v7, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v7, v7, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    invoke-interface {p2, v4}, Lmf/org/apache/xerces/xni/XMLAttributes;->getValue(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v6, v7, v8}, Lmf/org/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    iget-object v6, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;->fDocumentImpl:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    iget-object v7, p1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    iget-object v8, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    iget-object v9, p1, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    invoke-virtual {v6, v7, v8, v9}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->createElementNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/Element;

    move-result-object v3

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v1, :cond_0

    iget-object v6, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    invoke-interface {p2, v4, v6}, Lmf/org/apache/xerces/xni/XMLAttributes;->getName(ILmf/org/apache/xerces/xni/QName;)V

    iget-object v6, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;->fDocumentImpl:Lmf/org/apache/xerces/dom/CoreDocumentImpl;

    iget-object v7, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v7, v7, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    iget-object v8, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v8, v8, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    iget-object v9, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;->fAttributeQName:Lmf/org/apache/xerces/xni/QName;

    iget-object v9, v9, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    invoke-virtual {v6, v7, v8, v9}, Lmf/org/apache/xerces/dom/CoreDocumentImpl;->createAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmf/org/w3c/dom/Attr;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/dom/AttrImpl;

    invoke-interface {p2, v4}, Lmf/org/apache/xerces/xni/XMLAttributes;->getValue(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lmf/org/apache/xerces/dom/AttrImpl;->setValue(Ljava/lang/String;)V

    invoke-interface {v3, v0}, Lmf/org/w3c/dom/Element;->setAttributeNodeNS(Lmf/org/w3c/dom/Attr;)Lmf/org/w3c/dom/Attr;

    invoke-interface {p2, v4}, Lmf/org/apache/xerces/xni/XMLAttributes;->getAugmentations(I)Lmf/org/apache/xerces/xni/Augmentations;

    move-result-object v6

    const-string v7, "ATTRIBUTE_PSVI"

    invoke-interface {v6, v7}, Lmf/org/apache/xerces/xni/Augmentations;->getItem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmf/org/apache/xerces/xs/AttributePSVI;

    if-eqz v2, :cond_5

    iget-boolean v6, p0, Lmf/org/apache/xerces/jaxp/validation/DOMResultBuilder;->fStorePSVI:Z

    if-eqz v6, :cond_4

    move-object v6, v0

    check-cast v6, Lmf/org/apache/xerces/dom/PSVIAttrNSImpl;

    invoke-virtual {v6, v2}, Lmf/org/apache/xerces/dom/PSVIAttrNSImpl;->setPSVI(Lmf/org/apache/xerces/xs/AttributePSVI;)V

    :cond_4
    invoke-interface {v2}, Lmf/org/apache/xerces/xs/AttributePSVI;->getMemberTypeDefinition()Lmf/org/apache/xerces/xs/XSSimpleTypeDefinition;

    move-result-object v5

    if-nez v5, :cond_6

    invoke-interface {v2}, Lmf/org/apache/xerces/xs/AttributePSVI;->getTypeDefinition()Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-virtual {v0, v5}, Lmf/org/apache/xerces/dom/AttrImpl;->setType(Ljava/lang/Object;)V

    check-cast v5, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    invoke-interface {v5}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->isIDType()Z

    move-result v6

    if-eqz v6, :cond_5

    move-object v6, v3

    check-cast v6, Lmf/org/apache/xerces/dom/ElementImpl;

    invoke-virtual {v6, v0, v10}, Lmf/org/apache/xerces/dom/ElementImpl;->setIdAttributeNode(Lmf/org/w3c/dom/Attr;Z)V

    :cond_5
    :goto_2
    invoke-interface {p2, v4}, Lmf/org/apache/xerces/xni/XMLAttributes;->isSpecified(I)Z

    move-result v6

    invoke-virtual {v0, v6}, Lmf/org/apache/xerces/dom/AttrImpl;->setSpecified(Z)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_6
    invoke-virtual {v0, v5}, Lmf/org/apache/xerces/dom/AttrImpl;->setType(Ljava/lang/Object;)V

    check-cast v5, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    invoke-interface {v5}, Lmf/org/apache/xerces/impl/dv/XSSimpleType;->isIDType()Z

    move-result v6

    if-eqz v6, :cond_5

    move-object v6, v3

    check-cast v6, Lmf/org/apache/xerces/dom/ElementImpl;

    invoke-virtual {v6, v0, v10}, Lmf/org/apache/xerces/dom/ElementImpl;->setIdAttributeNode(Lmf/org/w3c/dom/Attr;Z)V

    goto :goto_2
.end method

.method public startGeneralEntity(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    return-void
.end method

.method public textDecl(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    return-void
.end method

.method public xmlDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    return-void
.end method

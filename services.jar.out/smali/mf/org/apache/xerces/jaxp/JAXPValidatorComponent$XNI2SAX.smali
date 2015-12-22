.class final Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$XNI2SAX;
.super Lmf/org/apache/xerces/impl/xs/opti/DefaultXMLDocumentHandler;
.source "JAXPValidatorComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "XNI2SAX"
.end annotation


# instance fields
.field private final fAttributesProxy:Lmf/org/apache/xerces/util/AttributesProxy;

.field private fContentHandler:Lorg/xml/sax/ContentHandler;

.field protected fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

.field private fVersion:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lmf/org/apache/xerces/impl/xs/opti/DefaultXMLDocumentHandler;-><init>()V

    new-instance v0, Lmf/org/apache/xerces/util/AttributesProxy;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/util/AttributesProxy;-><init>(Lmf/org/apache/xerces/xni/XMLAttributes;)V

    iput-object v0, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$XNI2SAX;->fAttributesProxy:Lmf/org/apache/xerces/util/AttributesProxy;

    return-void
.end method

.method synthetic constructor <init>(Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$XNI2SAX;)V
    .locals 0

    invoke-direct {p0}, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$XNI2SAX;-><init>()V

    return-void
.end method


# virtual methods
.method public characters(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$XNI2SAX;->fContentHandler:Lorg/xml/sax/ContentHandler;

    iget-object v2, p1, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    iget v3, p1, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    iget v4, p1, Lmf/org/apache/xerces/xni/XMLString;->length:I

    invoke-interface {v1, v2, v3, v4}, Lorg/xml/sax/ContentHandler;->characters([CII)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lmf/org/apache/xerces/xni/XNIException;

    invoke-direct {v1, v0}, Lmf/org/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public emptyElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$XNI2SAX;->startElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V

    invoke-virtual {p0, p1, p3}, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$XNI2SAX;->endElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/Augmentations;)V

    return-void
.end method

.method public endDocument(Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$XNI2SAX;->fContentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v1}, Lorg/xml/sax/ContentHandler;->endDocument()V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lmf/org/apache/xerces/xni/XNIException;

    invoke-direct {v1, v0}, Lmf/org/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public endElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    :try_start_0
    iget-object v5, p1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-eqz v5, :cond_1

    iget-object v4, p1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    :goto_0
    iget-object v3, p1, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    iget-object v5, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$XNI2SAX;->fContentHandler:Lorg/xml/sax/ContentHandler;

    iget-object v6, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    invoke-interface {v5, v4, v3, v6}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$XNI2SAX;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-interface {v5}, Lmf/org/apache/xerces/xni/NamespaceContext;->getDeclaredPrefixCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v2, 0x0

    :goto_1
    if-lt v2, v0, :cond_2

    :cond_0
    return-void

    :cond_1
    const-string v4, ""

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$XNI2SAX;->fContentHandler:Lorg/xml/sax/ContentHandler;

    iget-object v6, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$XNI2SAX;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-interface {v6, v2}, Lmf/org/apache/xerces/xni/NamespaceContext;->getDeclaredPrefixAt(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lorg/xml/sax/ContentHandler;->endPrefixMapping(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catch_0
    move-exception v1

    new-instance v5, Lmf/org/apache/xerces/xni/XNIException;

    invoke-direct {v5, v1}, Lmf/org/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw v5
.end method

.method public getContentHandler()Lorg/xml/sax/ContentHandler;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$XNI2SAX;->fContentHandler:Lorg/xml/sax/ContentHandler;

    return-object v0
.end method

.method public ignorableWhitespace(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$XNI2SAX;->fContentHandler:Lorg/xml/sax/ContentHandler;

    iget-object v2, p1, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    iget v3, p1, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    iget v4, p1, Lmf/org/apache/xerces/xni/XMLString;->length:I

    invoke-interface {v1, v2, v3, v4}, Lorg/xml/sax/ContentHandler;->ignorableWhitespace([CII)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lmf/org/apache/xerces/xni/XNIException;

    invoke-direct {v1, v0}, Lmf/org/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public processingInstruction(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$XNI2SAX;->fContentHandler:Lorg/xml/sax/ContentHandler;

    invoke-virtual {p2}, Lmf/org/apache/xerces/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lorg/xml/sax/ContentHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lmf/org/apache/xerces/xni/XNIException;

    invoke-direct {v1, v0}, Lmf/org/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public setContentHandler(Lorg/xml/sax/ContentHandler;)V
    .locals 0

    iput-object p1, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$XNI2SAX;->fContentHandler:Lorg/xml/sax/ContentHandler;

    return-void
.end method

.method public startDocument(Lmf/org/apache/xerces/xni/XMLLocator;Ljava/lang/String;Lmf/org/apache/xerces/xni/NamespaceContext;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iput-object p3, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$XNI2SAX;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$XNI2SAX;->fContentHandler:Lorg/xml/sax/ContentHandler;

    new-instance v2, Lmf/org/apache/xerces/util/LocatorProxy;

    invoke-direct {v2, p1}, Lmf/org/apache/xerces/util/LocatorProxy;-><init>(Lmf/org/apache/xerces/xni/XMLLocator;)V

    invoke-interface {v1, v2}, Lorg/xml/sax/ContentHandler;->setDocumentLocator(Lorg/xml/sax/Locator;)V

    :try_start_0
    iget-object v1, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$XNI2SAX;->fContentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v1}, Lorg/xml/sax/ContentHandler;->startDocument()V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lmf/org/apache/xerces/xni/XNIException;

    invoke-direct {v1, v0}, Lmf/org/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public startElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    :try_start_0
    iget-object v6, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$XNI2SAX;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-interface {v6}, Lmf/org/apache/xerces/xni/NamespaceContext;->getDeclaredPrefixCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v0, :cond_1

    :cond_0
    iget-object v6, p1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-eqz v6, :cond_3

    iget-object v5, p1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    :goto_1
    iget-object v3, p1, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    iget-object v6, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$XNI2SAX;->fAttributesProxy:Lmf/org/apache/xerces/util/AttributesProxy;

    invoke-virtual {v6, p2}, Lmf/org/apache/xerces/util/AttributesProxy;->setAttributes(Lmf/org/apache/xerces/xni/XMLAttributes;)V

    iget-object v6, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$XNI2SAX;->fContentHandler:Lorg/xml/sax/ContentHandler;

    iget-object v7, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    iget-object v8, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$XNI2SAX;->fAttributesProxy:Lmf/org/apache/xerces/util/AttributesProxy;

    invoke-interface {v6, v5, v3, v7, v8}, Lorg/xml/sax/ContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    return-void

    :cond_1
    iget-object v6, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$XNI2SAX;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-interface {v6, v2}, Lmf/org/apache/xerces/xni/NamespaceContext;->getDeclaredPrefixAt(I)Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$XNI2SAX;->fNamespaceContext:Lmf/org/apache/xerces/xni/NamespaceContext;

    invoke-interface {v6, v4}, Lmf/org/apache/xerces/xni/NamespaceContext;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v7, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$XNI2SAX;->fContentHandler:Lorg/xml/sax/ContentHandler;

    if-nez v5, :cond_2

    const-string v6, ""

    :goto_2
    invoke-interface {v7, v4, v6}, Lorg/xml/sax/ContentHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move-object v6, v5

    goto :goto_2

    :cond_3
    const-string v5, ""
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    new-instance v6, Lmf/org/apache/xerces/xni/XNIException;

    invoke-direct {v6, v1}, Lmf/org/apache/xerces/xni/XNIException;-><init>(Ljava/lang/Exception;)V

    throw v6
.end method

.method public xmlDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/xni/XNIException;
        }
    .end annotation

    iput-object p1, p0, Lmf/org/apache/xerces/jaxp/JAXPValidatorComponent$XNI2SAX;->fVersion:Ljava/lang/String;

    return-void
.end method

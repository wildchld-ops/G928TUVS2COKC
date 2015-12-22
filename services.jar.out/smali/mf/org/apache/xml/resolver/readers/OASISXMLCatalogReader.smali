.class public Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;
.super Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;
.source "OASISXMLCatalogReader.java"

# interfaces
.implements Lmf/org/apache/xml/resolver/readers/SAXCatalogParser;


# static fields
.field public static final namespaceName:Ljava/lang/String; = "urn:oasis:names:tc:entity:xmlns:xml:catalog"

.field public static final tr9401NamespaceName:Ljava/lang/String; = "urn:oasis:names:tc:entity:xmlns:tr9401:catalog"


# instance fields
.field protected baseURIStack:Ljava/util/Stack;

.field protected catalog:Lmf/org/apache/xml/resolver/Catalog;

.field protected namespaceStack:Ljava/util/Stack;

.field protected overrideStack:Ljava/util/Stack;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->catalog:Lmf/org/apache/xml/resolver/Catalog;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->baseURIStack:Ljava/util/Stack;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->overrideStack:Ljava/util/Stack;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->namespaceStack:Ljava/util/Stack;

    return-void
.end method

.method public constructor <init>(Lmf/javax/xml/parsers/SAXParserFactory;Lmf/org/apache/xml/resolver/Catalog;)V
    .locals 1

    invoke-direct {p0, p1}, Lmf/org/apache/xml/resolver/readers/SAXCatalogReader;-><init>(Lmf/javax/xml/parsers/SAXParserFactory;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->catalog:Lmf/org/apache/xml/resolver/Catalog;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->baseURIStack:Ljava/util/Stack;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->overrideStack:Ljava/util/Stack;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->namespaceStack:Ljava/util/Stack;

    invoke-virtual {p0, p2}, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->setCatalog(Lmf/org/apache/xml/resolver/Catalog;)V

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public checkAttributes(Lorg/xml/sax/Attributes;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x1

    invoke-interface {p1, p2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error: required attribute "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " missing."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method public checkAttributes(Lorg/xml/sax/Attributes;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p0, p1, p2}, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->checkAttributes(Lorg/xml/sax/Attributes;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p3}, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->checkAttributes(Lorg/xml/sax/Attributes;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public endDocument()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v4, -0x1

    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    invoke-virtual {p0}, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->inExtensionNamespace()Z

    move-result v5

    if-eqz p1, :cond_1

    if-nez v5, :cond_1

    const-string/jumbo v9, "urn:oasis:names:tc:entity:xmlns:xml:catalog"

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    const-string/jumbo v9, "urn:oasis:names:tc:entity:xmlns:tr9401:catalog"

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    :cond_0
    iget-object v9, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->baseURIStack:Ljava/util/Stack;

    invoke-virtual {v9}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    iget-object v9, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->baseURIStack:Ljava/util/Stack;

    invoke-virtual {v9}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    sget v4, Lmf/org/apache/xml/resolver/Catalog;->BASE:I

    invoke-virtual {v3, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v9, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const/4 v10, 0x4

    const-string v11, "(reset) xml:base"

    invoke-virtual {v9, v10, v11, v0}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance v1, Lmf/org/apache/xml/resolver/CatalogEntry;

    invoke-direct {v1, v4, v3}, Lmf/org/apache/xml/resolver/CatalogEntry;-><init>(ILjava/util/Vector;)V

    iget-object v9, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->catalog:Lmf/org/apache/xml/resolver/Catalog;

    invoke-virtual {v9, v1}, Lmf/org/apache/xml/resolver/Catalog;->addEntry(Lmf/org/apache/xml/resolver/CatalogEntry;)V
    :try_end_0
    .catch Lmf/org/apache/xml/resolver/CatalogException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    if-eqz p1, :cond_3

    const-string/jumbo v9, "urn:oasis:names:tc:entity:xmlns:xml:catalog"

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    if-nez v5, :cond_3

    const-string v9, "catalog"

    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    const-string/jumbo v9, "group"

    invoke-virtual {p2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    :cond_2
    iget-object v9, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->overrideStack:Ljava/util/Stack;

    invoke-virtual {v9}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iget-object v9, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->overrideStack:Ljava/util/Stack;

    invoke-virtual {v9}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    sget v4, Lmf/org/apache/xml/resolver/Catalog;->OVERRIDE:I

    invoke-virtual {v3, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v9, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->overrideStack:Ljava/util/Stack;

    invoke-virtual {v9, v6}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v9, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const/4 v10, 0x4

    const-string v11, "(reset) override"

    invoke-virtual {v9, v10, v11, v6}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    :try_start_1
    new-instance v1, Lmf/org/apache/xml/resolver/CatalogEntry;

    invoke-direct {v1, v4, v3}, Lmf/org/apache/xml/resolver/CatalogEntry;-><init>(ILjava/util/Vector;)V

    iget-object v9, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->catalog:Lmf/org/apache/xml/resolver/Catalog;

    invoke-virtual {v9, v1}, Lmf/org/apache/xml/resolver/Catalog;->addEntry(Lmf/org/apache/xml/resolver/CatalogEntry;)V
    :try_end_1
    .catch Lmf/org/apache/xml/resolver/CatalogException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_3
    :goto_1
    iget-object v9, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->namespaceStack:Ljava/util/Stack;

    invoke-virtual {v9}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    return-void

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Lmf/org/apache/xml/resolver/CatalogException;->getExceptionType()I

    move-result v9

    const/4 v10, 0x3

    if-ne v9, v10, :cond_4

    iget-object v9, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const/4 v10, 0x1

    const-string v11, "Invalid catalog entry type"

    invoke-virtual {v9, v10, v11, p2}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-virtual {v2}, Lmf/org/apache/xml/resolver/CatalogException;->getExceptionType()I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_1

    iget-object v9, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const/4 v10, 0x1

    const-string v11, "Invalid catalog entry (rbase)"

    invoke-virtual {v9, v10, v11, p2}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Lmf/org/apache/xml/resolver/CatalogException;->getExceptionType()I

    move-result v9

    const/4 v10, 0x3

    if-ne v9, v10, :cond_5

    iget-object v9, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const/4 v10, 0x1

    const-string v11, "Invalid catalog entry type"

    invoke-virtual {v9, v10, v11, p2}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    invoke-virtual {v2}, Lmf/org/apache/xml/resolver/CatalogException;->getExceptionType()I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_3

    iget-object v9, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const/4 v10, 0x1

    const-string v11, "Invalid catalog entry (roverride)"

    invoke-virtual {v9, v10, v11, p2}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public endPrefixMapping(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public getCatalog()Lmf/org/apache/xml/resolver/Catalog;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->catalog:Lmf/org/apache/xml/resolver/Catalog;

    return-object v0
.end method

.method public ignorableWhitespace([CII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method protected inExtensionNamespace()Z
    .locals 4

    const/4 v1, 0x0

    iget-object v3, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->namespaceStack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->elements()Ljava/util/Enumeration;

    move-result-object v0

    :goto_0
    if-nez v1, :cond_0

    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    return v1

    :cond_1
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const-string/jumbo v3, "urn:oasis:names:tc:entity:xmlns:tr9401:catalog"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string/jumbo v3, "urn:oasis:names:tc:entity:xmlns:xml:catalog"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const/4 v1, 0x1

    :goto_1
    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public setCatalog(Lmf/org/apache/xml/resolver/Catalog;)V
    .locals 1

    iput-object p1, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->catalog:Lmf/org/apache/xml/resolver/Catalog;

    invoke-virtual {p1}, Lmf/org/apache/xml/resolver/Catalog;->getCatalogManager()Lmf/org/apache/xml/resolver/CatalogManager;

    move-result-object v0

    iget-object v0, v0, Lmf/org/apache/xml/resolver/CatalogManager;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    iput-object v0, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    return-void
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .locals 0

    return-void
.end method

.method public skippedEntity(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public startDocument()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->baseURIStack:Ljava/util/Stack;

    iget-object v1, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->catalog:Lmf/org/apache/xml/resolver/Catalog;

    invoke-virtual {v1}, Lmf/org/apache/xml/resolver/Catalog;->getCurrentBase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->overrideStack:Ljava/util/Stack;

    iget-object v1, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->catalog:Lmf/org/apache/xml/resolver/Catalog;

    invoke-virtual {v1}, Lmf/org/apache/xml/resolver/Catalog;->getDefaultOverride()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v5, -0x1

    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    iget-object v8, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->namespaceStack:Ljava/util/Stack;

    invoke-virtual {v8, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->inExtensionNamespace()Z

    move-result v6

    if-eqz p1, :cond_4

    const-string/jumbo v8, "urn:oasis:names:tc:entity:xmlns:xml:catalog"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    if-nez v6, :cond_4

    const-string/jumbo v8, "xml:base"

    move-object/from16 v0, p4

    invoke-interface {v0, v8}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_8

    const-string/jumbo v8, "xml:base"

    move-object/from16 v0, p4

    invoke-interface {v0, v8}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget v5, Lmf/org/apache/xml/resolver/Catalog;->BASE:I

    invoke-virtual {v4, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v8, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->baseURIStack:Ljava/util/Stack;

    invoke-virtual {v8, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v8, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const/4 v9, 0x4

    const-string/jumbo v10, "xml:base"

    invoke-virtual {v8, v9, v10, v1}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance v2, Lmf/org/apache/xml/resolver/CatalogEntry;

    invoke-direct {v2, v5, v4}, Lmf/org/apache/xml/resolver/CatalogEntry;-><init>(ILjava/util/Vector;)V

    iget-object v8, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->catalog:Lmf/org/apache/xml/resolver/Catalog;

    invoke-virtual {v8, v2}, Lmf/org/apache/xml/resolver/Catalog;->addEntry(Lmf/org/apache/xml/resolver/CatalogEntry;)V
    :try_end_0
    .catch Lmf/org/apache/xml/resolver/CatalogException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const/4 v5, -0x1

    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    :goto_1
    const-string v8, "catalog"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string/jumbo v8, "group"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c

    :cond_1
    const-string/jumbo v8, "prefer"

    move-object/from16 v0, p4

    invoke-interface {v0, v8}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_c

    const-string/jumbo v8, "prefer"

    move-object/from16 v0, p4

    invoke-interface {v0, v8}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "public"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    const-string/jumbo v7, "yes"

    :goto_2
    sget v5, Lmf/org/apache/xml/resolver/Catalog;->OVERRIDE:I

    invoke-virtual {v4, v7}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v8, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->overrideStack:Ljava/util/Stack;

    invoke-virtual {v8, v7}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v8, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const/4 v9, 0x4

    const-string/jumbo v10, "override"

    invoke-virtual {v8, v9, v10, v7}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    :try_start_1
    new-instance v2, Lmf/org/apache/xml/resolver/CatalogEntry;

    invoke-direct {v2, v5, v4}, Lmf/org/apache/xml/resolver/CatalogEntry;-><init>(ILjava/util/Vector;)V

    iget-object v8, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->catalog:Lmf/org/apache/xml/resolver/Catalog;

    invoke-virtual {v8, v2}, Lmf/org/apache/xml/resolver/Catalog;->addEntry(Lmf/org/apache/xml/resolver/CatalogEntry;)V
    :try_end_1
    .catch Lmf/org/apache/xml/resolver/CatalogException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    :goto_3
    const/4 v5, -0x1

    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    :goto_4
    const-string v8, "delegatePublic"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    const-string/jumbo v8, "publicIdStartString"

    const-string v9, "catalog"

    move-object/from16 v0, p4

    invoke-virtual {p0, v0, v8, v9}, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->checkAttributes(Lorg/xml/sax/Attributes;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    sget v5, Lmf/org/apache/xml/resolver/Catalog;->DELEGATE_PUBLIC:I

    const-string/jumbo v8, "publicIdStartString"

    move-object/from16 v0, p4

    invoke-interface {v0, v8}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string v8, "catalog"

    move-object/from16 v0, p4

    invoke-interface {v0, v8}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v8, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const/4 v9, 0x4

    const-string v10, "delegatePublic"

    const-string/jumbo v11, "publicIdStartString"

    move-object/from16 v0, p4

    invoke-interface {v0, v11}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lmf/org/apache/xml/resolver/helpers/PublicId;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "catalog"

    move-object/from16 v0, p4

    invoke-interface {v0, v12}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v9, v10, v11, v12}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_5
    if-ltz v5, :cond_4

    :try_start_2
    new-instance v2, Lmf/org/apache/xml/resolver/CatalogEntry;

    invoke-direct {v2, v5, v4}, Lmf/org/apache/xml/resolver/CatalogEntry;-><init>(ILjava/util/Vector;)V

    iget-object v8, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->catalog:Lmf/org/apache/xml/resolver/Catalog;

    invoke-virtual {v8, v2}, Lmf/org/apache/xml/resolver/Catalog;->addEntry(Lmf/org/apache/xml/resolver/CatalogEntry;)V
    :try_end_2
    .catch Lmf/org/apache/xml/resolver/CatalogException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_4
    :goto_6
    if-eqz p1, :cond_6

    const-string/jumbo v8, "urn:oasis:names:tc:entity:xmlns:tr9401:catalog"

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    if-nez v6, :cond_6

    const-string/jumbo v8, "xml:base"

    move-object/from16 v0, p4

    invoke-interface {v0, v8}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1a

    const-string/jumbo v8, "xml:base"

    move-object/from16 v0, p4

    invoke-interface {v0, v8}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget v5, Lmf/org/apache/xml/resolver/Catalog;->BASE:I

    invoke-virtual {v4, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v8, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->baseURIStack:Ljava/util/Stack;

    invoke-virtual {v8, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v8, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const/4 v9, 0x4

    const-string/jumbo v10, "xml:base"

    invoke-virtual {v8, v9, v10, v1}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    :try_start_3
    new-instance v2, Lmf/org/apache/xml/resolver/CatalogEntry;

    invoke-direct {v2, v5, v4}, Lmf/org/apache/xml/resolver/CatalogEntry;-><init>(ILjava/util/Vector;)V

    iget-object v8, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->catalog:Lmf/org/apache/xml/resolver/Catalog;

    invoke-virtual {v8, v2}, Lmf/org/apache/xml/resolver/Catalog;->addEntry(Lmf/org/apache/xml/resolver/CatalogEntry;)V
    :try_end_3
    .catch Lmf/org/apache/xml/resolver/CatalogException; {:try_start_3 .. :try_end_3} :catch_3

    :cond_5
    :goto_7
    const/4 v5, -0x1

    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    :goto_8
    const-string v8, "doctype"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1b

    sget v5, Lmf/org/apache/xml/resolver/Catalog;->DOCTYPE:I

    const-string/jumbo v8, "name"

    move-object/from16 v0, p4

    invoke-interface {v0, v8}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string/jumbo v8, "uri"

    move-object/from16 v0, p4

    invoke-interface {v0, v8}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :goto_9
    if-ltz v5, :cond_6

    :try_start_4
    new-instance v2, Lmf/org/apache/xml/resolver/CatalogEntry;

    invoke-direct {v2, v5, v4}, Lmf/org/apache/xml/resolver/CatalogEntry;-><init>(ILjava/util/Vector;)V

    iget-object v8, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->catalog:Lmf/org/apache/xml/resolver/Catalog;

    invoke-virtual {v8, v2}, Lmf/org/apache/xml/resolver/Catalog;->addEntry(Lmf/org/apache/xml/resolver/CatalogEntry;)V
    :try_end_4
    .catch Lmf/org/apache/xml/resolver/CatalogException; {:try_start_4 .. :try_end_4} :catch_4

    :cond_6
    :goto_a
    return-void

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Lmf/org/apache/xml/resolver/CatalogException;->getExceptionType()I

    move-result v8

    const/4 v9, 0x3

    if-ne v8, v9, :cond_7

    iget-object v8, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const/4 v9, 0x1

    const-string v10, "Invalid catalog entry type"

    invoke-virtual {v8, v9, v10, p2}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    invoke-virtual {v3}, Lmf/org/apache/xml/resolver/CatalogException;->getExceptionType()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_0

    iget-object v8, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const/4 v9, 0x1

    const-string v10, "Invalid catalog entry (base)"

    invoke-virtual {v8, v9, v10, p2}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_8
    iget-object v8, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->baseURIStack:Ljava/util/Stack;

    iget-object v9, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->baseURIStack:Ljava/util/Stack;

    invoke-virtual {v9}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_9
    const-string/jumbo v8, "system"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    const-string/jumbo v7, "no"

    goto/16 :goto_2

    :cond_a
    iget-object v8, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const/4 v9, 0x1

    const-string v10, "Invalid prefer: must be \'system\' or \'public\'"

    invoke-virtual {v8, v9, v10, p2}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->catalog:Lmf/org/apache/xml/resolver/Catalog;

    invoke-virtual {v8}, Lmf/org/apache/xml/resolver/Catalog;->getDefaultOverride()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_2

    :catch_1
    move-exception v3

    invoke-virtual {v3}, Lmf/org/apache/xml/resolver/CatalogException;->getExceptionType()I

    move-result v8

    const/4 v9, 0x3

    if-ne v8, v9, :cond_b

    iget-object v8, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const/4 v9, 0x1

    const-string v10, "Invalid catalog entry type"

    invoke-virtual {v8, v9, v10, p2}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_b
    invoke-virtual {v3}, Lmf/org/apache/xml/resolver/CatalogException;->getExceptionType()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_2

    iget-object v8, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const/4 v9, 0x1

    const-string v10, "Invalid catalog entry (override)"

    invoke-virtual {v8, v9, v10, p2}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_c
    iget-object v8, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->overrideStack:Ljava/util/Stack;

    iget-object v9, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->overrideStack:Ljava/util/Stack;

    invoke-virtual {v9}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    :cond_d
    const-string v8, "delegateSystem"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_e

    const-string/jumbo v8, "systemIdStartString"

    const-string v9, "catalog"

    move-object/from16 v0, p4

    invoke-virtual {p0, v0, v8, v9}, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->checkAttributes(Lorg/xml/sax/Attributes;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    sget v5, Lmf/org/apache/xml/resolver/Catalog;->DELEGATE_SYSTEM:I

    const-string/jumbo v8, "systemIdStartString"

    move-object/from16 v0, p4

    invoke-interface {v0, v8}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string v8, "catalog"

    move-object/from16 v0, p4

    invoke-interface {v0, v8}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v8, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const/4 v9, 0x4

    const-string v10, "delegateSystem"

    const-string/jumbo v11, "systemIdStartString"

    move-object/from16 v0, p4

    invoke-interface {v0, v11}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "catalog"

    move-object/from16 v0, p4

    invoke-interface {v0, v12}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v9, v10, v11, v12}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_e
    const-string v8, "delegateURI"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_f

    const-string/jumbo v8, "uriStartString"

    const-string v9, "catalog"

    move-object/from16 v0, p4

    invoke-virtual {p0, v0, v8, v9}, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->checkAttributes(Lorg/xml/sax/Attributes;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    sget v5, Lmf/org/apache/xml/resolver/Catalog;->DELEGATE_URI:I

    const-string/jumbo v8, "uriStartString"

    move-object/from16 v0, p4

    invoke-interface {v0, v8}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string v8, "catalog"

    move-object/from16 v0, p4

    invoke-interface {v0, v8}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v8, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const/4 v9, 0x4

    const-string v10, "delegateURI"

    const-string/jumbo v11, "uriStartString"

    move-object/from16 v0, p4

    invoke-interface {v0, v11}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "catalog"

    move-object/from16 v0, p4

    invoke-interface {v0, v12}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v9, v10, v11, v12}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_f
    const-string/jumbo v8, "rewriteSystem"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_10

    const-string/jumbo v8, "systemIdStartString"

    const-string/jumbo v9, "rewritePrefix"

    move-object/from16 v0, p4

    invoke-virtual {p0, v0, v8, v9}, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->checkAttributes(Lorg/xml/sax/Attributes;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    sget v5, Lmf/org/apache/xml/resolver/Catalog;->REWRITE_SYSTEM:I

    const-string/jumbo v8, "systemIdStartString"

    move-object/from16 v0, p4

    invoke-interface {v0, v8}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string/jumbo v8, "rewritePrefix"

    move-object/from16 v0, p4

    invoke-interface {v0, v8}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v8, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const/4 v9, 0x4

    const-string/jumbo v10, "rewriteSystem"

    const-string/jumbo v11, "systemIdStartString"

    move-object/from16 v0, p4

    invoke-interface {v0, v11}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "rewritePrefix"

    move-object/from16 v0, p4

    invoke-interface {v0, v12}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v9, v10, v11, v12}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_10
    const-string/jumbo v8, "systemSuffix"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_11

    const-string/jumbo v8, "systemIdSuffix"

    const-string/jumbo v9, "uri"

    move-object/from16 v0, p4

    invoke-virtual {p0, v0, v8, v9}, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->checkAttributes(Lorg/xml/sax/Attributes;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    sget v5, Lmf/org/apache/xml/resolver/Catalog;->SYSTEM_SUFFIX:I

    const-string/jumbo v8, "systemIdSuffix"

    move-object/from16 v0, p4

    invoke-interface {v0, v8}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string/jumbo v8, "uri"

    move-object/from16 v0, p4

    invoke-interface {v0, v8}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v8, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const/4 v9, 0x4

    const-string/jumbo v10, "systemSuffix"

    const-string/jumbo v11, "systemIdSuffix"

    move-object/from16 v0, p4

    invoke-interface {v0, v11}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "uri"

    move-object/from16 v0, p4

    invoke-interface {v0, v12}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v9, v10, v11, v12}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_11
    const-string/jumbo v8, "rewriteURI"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_12

    const-string/jumbo v8, "uriStartString"

    const-string/jumbo v9, "rewritePrefix"

    move-object/from16 v0, p4

    invoke-virtual {p0, v0, v8, v9}, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->checkAttributes(Lorg/xml/sax/Attributes;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    sget v5, Lmf/org/apache/xml/resolver/Catalog;->REWRITE_URI:I

    const-string/jumbo v8, "uriStartString"

    move-object/from16 v0, p4

    invoke-interface {v0, v8}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string/jumbo v8, "rewritePrefix"

    move-object/from16 v0, p4

    invoke-interface {v0, v8}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v8, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const/4 v9, 0x4

    const-string/jumbo v10, "rewriteURI"

    const-string/jumbo v11, "uriStartString"

    move-object/from16 v0, p4

    invoke-interface {v0, v11}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "rewritePrefix"

    move-object/from16 v0, p4

    invoke-interface {v0, v12}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v9, v10, v11, v12}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_12
    const-string/jumbo v8, "uriSuffix"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_13

    const-string/jumbo v8, "uriSuffix"

    const-string/jumbo v9, "uri"

    move-object/from16 v0, p4

    invoke-virtual {p0, v0, v8, v9}, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->checkAttributes(Lorg/xml/sax/Attributes;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    sget v5, Lmf/org/apache/xml/resolver/Catalog;->URI_SUFFIX:I

    const-string/jumbo v8, "uriSuffix"

    move-object/from16 v0, p4

    invoke-interface {v0, v8}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string/jumbo v8, "uri"

    move-object/from16 v0, p4

    invoke-interface {v0, v8}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v8, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const/4 v9, 0x4

    const-string/jumbo v10, "uriSuffix"

    const-string/jumbo v11, "uriSuffix"

    move-object/from16 v0, p4

    invoke-interface {v0, v11}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "uri"

    move-object/from16 v0, p4

    invoke-interface {v0, v12}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v9, v10, v11, v12}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_13
    const-string/jumbo v8, "nextCatalog"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    const-string v8, "catalog"

    move-object/from16 v0, p4

    invoke-virtual {p0, v0, v8}, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->checkAttributes(Lorg/xml/sax/Attributes;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    sget v5, Lmf/org/apache/xml/resolver/Catalog;->CATALOG:I

    const-string v8, "catalog"

    move-object/from16 v0, p4

    invoke-interface {v0, v8}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v8, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const/4 v9, 0x4

    const-string/jumbo v10, "nextCatalog"

    const-string v11, "catalog"

    move-object/from16 v0, p4

    invoke-interface {v0, v11}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v9, v10, v11}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_14
    const-string/jumbo v8, "public"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_15

    const-string/jumbo v8, "publicId"

    const-string/jumbo v9, "uri"

    move-object/from16 v0, p4

    invoke-virtual {p0, v0, v8, v9}, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->checkAttributes(Lorg/xml/sax/Attributes;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    sget v5, Lmf/org/apache/xml/resolver/Catalog;->PUBLIC:I

    const-string/jumbo v8, "publicId"

    move-object/from16 v0, p4

    invoke-interface {v0, v8}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string/jumbo v8, "uri"

    move-object/from16 v0, p4

    invoke-interface {v0, v8}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v8, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const/4 v9, 0x4

    const-string/jumbo v10, "public"

    const-string/jumbo v11, "publicId"

    move-object/from16 v0, p4

    invoke-interface {v0, v11}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lmf/org/apache/xml/resolver/helpers/PublicId;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "uri"

    move-object/from16 v0, p4

    invoke-interface {v0, v12}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v9, v10, v11, v12}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_15
    const-string/jumbo v8, "system"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_16

    const-string/jumbo v8, "systemId"

    const-string/jumbo v9, "uri"

    move-object/from16 v0, p4

    invoke-virtual {p0, v0, v8, v9}, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->checkAttributes(Lorg/xml/sax/Attributes;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    sget v5, Lmf/org/apache/xml/resolver/Catalog;->SYSTEM:I

    const-string/jumbo v8, "systemId"

    move-object/from16 v0, p4

    invoke-interface {v0, v8}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string/jumbo v8, "uri"

    move-object/from16 v0, p4

    invoke-interface {v0, v8}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v8, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const/4 v9, 0x4

    const-string/jumbo v10, "system"

    const-string/jumbo v11, "systemId"

    move-object/from16 v0, p4

    invoke-interface {v0, v11}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "uri"

    move-object/from16 v0, p4

    invoke-interface {v0, v12}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v9, v10, v11, v12}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_16
    const-string/jumbo v8, "uri"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_17

    const-string/jumbo v8, "name"

    const-string/jumbo v9, "uri"

    move-object/from16 v0, p4

    invoke-virtual {p0, v0, v8, v9}, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->checkAttributes(Lorg/xml/sax/Attributes;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    sget v5, Lmf/org/apache/xml/resolver/Catalog;->URI:I

    const-string/jumbo v8, "name"

    move-object/from16 v0, p4

    invoke-interface {v0, v8}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string/jumbo v8, "uri"

    move-object/from16 v0, p4

    invoke-interface {v0, v8}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    iget-object v8, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const/4 v9, 0x4

    const-string/jumbo v10, "uri"

    const-string/jumbo v11, "name"

    move-object/from16 v0, p4

    invoke-interface {v0, v11}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "uri"

    move-object/from16 v0, p4

    invoke-interface {v0, v12}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v9, v10, v11, v12}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_17
    const-string v8, "catalog"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    const-string/jumbo v8, "group"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    iget-object v8, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const/4 v9, 0x1

    const-string v10, "Invalid catalog entry type"

    invoke-virtual {v8, v9, v10, p2}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    :catch_2
    move-exception v3

    invoke-virtual {v3}, Lmf/org/apache/xml/resolver/CatalogException;->getExceptionType()I

    move-result v8

    const/4 v9, 0x3

    if-ne v8, v9, :cond_18

    iget-object v8, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const/4 v9, 0x1

    const-string v10, "Invalid catalog entry type"

    invoke-virtual {v8, v9, v10, p2}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_18
    invoke-virtual {v3}, Lmf/org/apache/xml/resolver/CatalogException;->getExceptionType()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_4

    iget-object v8, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const/4 v9, 0x1

    const-string v10, "Invalid catalog entry"

    invoke-virtual {v8, v9, v10, p2}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    :catch_3
    move-exception v3

    invoke-virtual {v3}, Lmf/org/apache/xml/resolver/CatalogException;->getExceptionType()I

    move-result v8

    const/4 v9, 0x3

    if-ne v8, v9, :cond_19

    iget-object v8, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const/4 v9, 0x1

    const-string v10, "Invalid catalog entry type"

    invoke-virtual {v8, v9, v10, p2}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_19
    invoke-virtual {v3}, Lmf/org/apache/xml/resolver/CatalogException;->getExceptionType()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_5

    iget-object v8, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const/4 v9, 0x1

    const-string v10, "Invalid catalog entry (base)"

    invoke-virtual {v8, v9, v10, p2}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_1a
    iget-object v8, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->baseURIStack:Ljava/util/Stack;

    iget-object v9, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->baseURIStack:Ljava/util/Stack;

    invoke-virtual {v9}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_8

    :cond_1b
    const-string v8, "document"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1c

    sget v5, Lmf/org/apache/xml/resolver/Catalog;->DOCUMENT:I

    const-string/jumbo v8, "uri"

    move-object/from16 v0, p4

    invoke-interface {v0, v8}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9

    :cond_1c
    const-string v8, "dtddecl"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1d

    sget v5, Lmf/org/apache/xml/resolver/Catalog;->DTDDECL:I

    const-string/jumbo v8, "publicId"

    move-object/from16 v0, p4

    invoke-interface {v0, v8}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string/jumbo v8, "uri"

    move-object/from16 v0, p4

    invoke-interface {v0, v8}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9

    :cond_1d
    const-string v8, "entity"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1e

    sget v5, Lmf/org/apache/xml/resolver/Catalog;->ENTITY:I

    const-string/jumbo v8, "name"

    move-object/from16 v0, p4

    invoke-interface {v0, v8}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string/jumbo v8, "uri"

    move-object/from16 v0, p4

    invoke-interface {v0, v8}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9

    :cond_1e
    const-string/jumbo v8, "linktype"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1f

    sget v5, Lmf/org/apache/xml/resolver/Catalog;->LINKTYPE:I

    const-string/jumbo v8, "name"

    move-object/from16 v0, p4

    invoke-interface {v0, v8}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string/jumbo v8, "uri"

    move-object/from16 v0, p4

    invoke-interface {v0, v8}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9

    :cond_1f
    const-string/jumbo v8, "notation"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_20

    sget v5, Lmf/org/apache/xml/resolver/Catalog;->NOTATION:I

    const-string/jumbo v8, "name"

    move-object/from16 v0, p4

    invoke-interface {v0, v8}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    const-string/jumbo v8, "uri"

    move-object/from16 v0, p4

    invoke-interface {v0, v8}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9

    :cond_20
    const-string/jumbo v8, "sgmldecl"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_21

    sget v5, Lmf/org/apache/xml/resolver/Catalog;->SGMLDECL:I

    const-string/jumbo v8, "uri"

    move-object/from16 v0, p4

    invoke-interface {v0, v8}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_9

    :cond_21
    iget-object v8, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const/4 v9, 0x1

    const-string v10, "Invalid catalog entry type"

    invoke-virtual {v8, v9, v10, p2}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_9

    :catch_4
    move-exception v3

    invoke-virtual {v3}, Lmf/org/apache/xml/resolver/CatalogException;->getExceptionType()I

    move-result v8

    const/4 v9, 0x3

    if-ne v8, v9, :cond_22

    iget-object v8, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const/4 v9, 0x1

    const-string v10, "Invalid catalog entry type"

    invoke-virtual {v8, v9, v10, p2}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a

    :cond_22
    invoke-virtual {v3}, Lmf/org/apache/xml/resolver/CatalogException;->getExceptionType()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_6

    iget-object v8, p0, Lmf/org/apache/xml/resolver/readers/OASISXMLCatalogReader;->debug:Lmf/org/apache/xml/resolver/helpers/Debug;

    const/4 v9, 0x1

    const-string v10, "Invalid catalog entry"

    invoke-virtual {v8, v9, v10, p2}, Lmf/org/apache/xml/resolver/helpers/Debug;->message(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

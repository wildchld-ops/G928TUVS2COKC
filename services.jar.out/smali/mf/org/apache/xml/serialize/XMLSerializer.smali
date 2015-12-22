.class public Lmf/org/apache/xml/serialize/XMLSerializer;
.super Lmf/org/apache/xml/serialize/BaseMarkupSerializer;
.source "XMLSerializer.java"


# static fields
.field protected static final DEBUG:Z = false

.field protected static final PREFIX:Ljava/lang/String; = "NS"


# instance fields
.field protected fLocalNSBinder:Lmf/org/apache/xerces/util/NamespaceSupport;

.field protected fNSBinder:Lmf/org/apache/xerces/util/NamespaceSupport;

.field protected fNamespacePrefixes:Z

.field protected fNamespaces:Z

.field private fPreserveSpace:Z

.field protected fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Lmf/org/apache/xml/serialize/OutputFormat;

    const-string/jumbo v1, "xml"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v3}, Lmf/org/apache/xml/serialize/OutputFormat;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-direct {p0, v0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;-><init>(Lmf/org/apache/xml/serialize/OutputFormat;)V

    iput-boolean v3, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->fNamespaces:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->fNamespacePrefixes:Z

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Lmf/org/apache/xml/serialize/OutputFormat;)V
    .locals 3

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    :goto_0
    invoke-direct {p0, p2}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;-><init>(Lmf/org/apache/xml/serialize/OutputFormat;)V

    iput-boolean v2, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->fNamespaces:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->fNamespacePrefixes:Z

    iget-object v0, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    const-string/jumbo v1, "xml"

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/OutputFormat;->setMethod(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lmf/org/apache/xml/serialize/XMLSerializer;->setOutputByteStream(Ljava/io/OutputStream;)V

    return-void

    :cond_0
    new-instance p2, Lmf/org/apache/xml/serialize/OutputFormat;

    const-string/jumbo v0, "xml"

    const/4 v1, 0x0

    invoke-direct {p2, v0, v1, v2}, Lmf/org/apache/xml/serialize/OutputFormat;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public constructor <init>(Ljava/io/Writer;Lmf/org/apache/xml/serialize/OutputFormat;)V
    .locals 3

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    :goto_0
    invoke-direct {p0, p2}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;-><init>(Lmf/org/apache/xml/serialize/OutputFormat;)V

    iput-boolean v2, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->fNamespaces:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->fNamespacePrefixes:Z

    iget-object v0, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    const-string/jumbo v1, "xml"

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/OutputFormat;->setMethod(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lmf/org/apache/xml/serialize/XMLSerializer;->setOutputCharStream(Ljava/io/Writer;)V

    return-void

    :cond_0
    new-instance p2, Lmf/org/apache/xml/serialize/OutputFormat;

    const-string/jumbo v0, "xml"

    const/4 v1, 0x0

    invoke-direct {p2, v0, v1, v2}, Lmf/org/apache/xml/serialize/OutputFormat;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public constructor <init>(Lmf/org/apache/xml/serialize/OutputFormat;)V
    .locals 3

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    :goto_0
    invoke-direct {p0, p1}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;-><init>(Lmf/org/apache/xml/serialize/OutputFormat;)V

    iput-boolean v2, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->fNamespaces:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->fNamespacePrefixes:Z

    iget-object v0, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    const-string/jumbo v1, "xml"

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/OutputFormat;->setMethod(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance p1, Lmf/org/apache/xml/serialize/OutputFormat;

    const-string/jumbo v0, "xml"

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1, v2}, Lmf/org/apache/xml/serialize/OutputFormat;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private extractNamespaces(Lorg/xml/sax/Attributes;)Lorg/xml/sax/Attributes;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v6, 0x5

    if-nez p1, :cond_1

    const/4 v0, 0x0

    :cond_0
    return-object v0

    :cond_1
    invoke-interface {p1}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v2

    new-instance v0, Lorg/xml/sax/helpers/AttributesImpl;

    invoke-direct {v0, p1}, Lorg/xml/sax/helpers/AttributesImpl;-><init>(Lorg/xml/sax/Attributes;)V

    add-int/lit8 v1, v2, -0x1

    :goto_0
    if-ltz v1, :cond_0

    invoke-virtual {v0, v1}, Lorg/xml/sax/helpers/AttributesImpl;->getQName(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "xmlns"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v6, :cond_3

    const-string v4, ""

    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lmf/org/apache/xml/serialize/XMLSerializer;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/xml/sax/helpers/AttributesImpl;->removeAttribute(I)V

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v3, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x3a

    if-ne v4, v5, :cond_2

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lmf/org/apache/xml/serialize/XMLSerializer;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lorg/xml/sax/helpers/AttributesImpl;->removeAttribute(I)V

    goto :goto_1
.end method

.method private printAttribute(Ljava/lang/String;Ljava/lang/String;ZLmf/org/w3c/dom/Attr;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p3, :cond_0

    iget-short v1, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->features:S

    and-int/lit8 v1, v1, 0x40

    if-nez v1, :cond_2

    :cond_0
    iget-object v1, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->fDOMFilter:Lmf/org/w3c/dom/ls/LSSerializerFilter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->fDOMFilter:Lmf/org/w3c/dom/ls/LSSerializerFilter;

    invoke-interface {v1}, Lmf/org/w3c/dom/ls/LSSerializerFilter;->getWhatToShow()I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    iget-object v1, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->fDOMFilter:Lmf/org/w3c/dom/ls/LSSerializerFilter;

    invoke-interface {v1, p4}, Lmf/org/w3c/dom/ls/LSSerializerFilter;->acceptNode(Lmf/org/w3c/dom/Node;)S

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_1
    iget-object v1, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v1}, Lmf/org/apache/xml/serialize/Printer;->printSpace()V

    iget-object v1, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v1, p1}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v1, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v2, "=\""

    invoke-virtual {v1, v2}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lmf/org/apache/xml/serialize/XMLSerializer;->printEscaped(Ljava/lang/String;)V

    iget-object v1, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const/16 v2, 0x22

    invoke-virtual {v1, v2}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    :cond_2
    const-string/jumbo v1, "xml:space"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v1, "preserve"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    iput-boolean v1, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->fPreserveSpace:Z

    :cond_3
    :goto_0
    :pswitch_0
    return-void

    :cond_4
    iget-object v1, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    invoke-virtual {v1}, Lmf/org/apache/xml/serialize/OutputFormat;->getPreserveSpace()Z

    move-result v1

    iput-boolean v1, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->fPreserveSpace:Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private printNamespaceAttr(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v0}, Lmf/org/apache/xml/serialize/Printer;->printSpace()V

    sget-object v0, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    sget-object v1, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v1, "=\""

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lmf/org/apache/xml/serialize/XMLSerializer;->printEscaped(Ljava/lang/String;)V

    iget-object v0, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const/16 v1, 0x22

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    return-void

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "xmlns:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method protected checkUnboundNamespacePrefixedNode(Lmf/org/w3c/dom/Node;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v6, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->fNamespaces:Z

    if-eqz v6, :cond_0

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v2

    :goto_0
    if-nez v2, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-interface {v2}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v2}, Lmf/org/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_6

    :cond_2
    sget-object v5, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    :goto_1
    iget-object v6, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->fNSBinder:Lmf/org/apache/xerces/util/NamespaceSupport;

    invoke-virtual {v6, v5}, Lmf/org/apache/xerces/util/NamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_3

    if-eqz v5, :cond_3

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "The replacement text of the entity node \'"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' contains an element node \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v2}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' with an undeclared prefix \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lmf/org/apache/xml/serialize/XMLSerializer;->fatalError(Ljava/lang/String;)V

    :cond_3
    invoke-interface {v2}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_4

    invoke-interface {v2}, Lmf/org/w3c/dom/Node;->getAttributes()Lmf/org/w3c/dom/NamedNodeMap;

    move-result-object v1

    const/4 v3, 0x0

    :goto_2
    invoke-interface {v1}, Lmf/org/w3c/dom/NamedNodeMap;->getLength()I

    move-result v6

    if-lt v3, v6, :cond_7

    :cond_4
    invoke-interface {v2}, Lmf/org/w3c/dom/Node;->hasChildNodes()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {p0, v2}, Lmf/org/apache/xml/serialize/XMLSerializer;->checkUnboundNamespacePrefixedNode(Lmf/org/w3c/dom/Node;)V

    :cond_5
    move-object v2, v4

    goto :goto_0

    :cond_6
    iget-object v6, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v6, v5}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_7
    invoke-interface {v1, v3}, Lmf/org/w3c/dom/NamedNodeMap;->item(I)Lmf/org/w3c/dom/Node;

    move-result-object v6

    invoke-interface {v6}, Lmf/org/w3c/dom/Node;->getPrefix()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_a

    :cond_8
    sget-object v0, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    :goto_3
    iget-object v6, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->fNSBinder:Lmf/org/apache/xerces/util/NamespaceSupport;

    invoke-virtual {v6, v0}, Lmf/org/apache/xerces/util/NamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_9

    if-eqz v0, :cond_9

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "The replacement text of the entity node \'"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' contains an element node \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v2}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' with an attribute \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v1, v3}, Lmf/org/w3c/dom/NamedNodeMap;->item(I)Lmf/org/w3c/dom/Node;

    move-result-object v7

    invoke-interface {v7}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' an undeclared prefix \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lmf/org/apache/xml/serialize/XMLSerializer;->fatalError(Ljava/lang/String;)V

    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_a
    iget-object v6, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    invoke-virtual {v6, v0}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method

.method public endElement(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, p1}, Lmf/org/apache/xml/serialize/XMLSerializer;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lmf/org/apache/xml/serialize/XMLSerializer;->endElementIO(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public endElementIO(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v1, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v1}, Lmf/org/apache/xml/serialize/Printer;->unindent()V

    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/XMLSerializer;->getElementState()Lmf/org/apache/xml/serialize/ElementState;

    move-result-object v0

    iget-boolean v1, v0, Lmf/org/apache/xml/serialize/ElementState;->empty:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v2, "/>"

    invoke-virtual {v1, v2}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/XMLSerializer;->leaveElementState()Lmf/org/apache/xml/serialize/ElementState;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lmf/org/apache/xml/serialize/ElementState;->afterElement:Z

    iput-boolean v3, v0, Lmf/org/apache/xml/serialize/ElementState;->afterComment:Z

    iput-boolean v3, v0, Lmf/org/apache/xml/serialize/ElementState;->empty:Z

    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/XMLSerializer;->isDocumentState()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v1}, Lmf/org/apache/xml/serialize/Printer;->flush()V

    :cond_0
    return-void

    :cond_1
    iget-boolean v1, v0, Lmf/org/apache/xml/serialize/ElementState;->inCData:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v2, "]]>"

    invoke-virtual {v1, v2}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    :cond_2
    iget-boolean v1, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_indenting:Z

    if-eqz v1, :cond_4

    iget-boolean v1, v0, Lmf/org/apache/xml/serialize/ElementState;->preserveSpace:Z

    if-nez v1, :cond_4

    iget-boolean v1, v0, Lmf/org/apache/xml/serialize/ElementState;->afterElement:Z

    if-nez v1, :cond_3

    iget-boolean v1, v0, Lmf/org/apache/xml/serialize/ElementState;->afterComment:Z

    if-eqz v1, :cond_4

    :cond_3
    iget-object v1, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v1}, Lmf/org/apache/xml/serialize/Printer;->breakLine()V

    :cond_4
    iget-object v1, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v2, "</"

    invoke-virtual {v1, v2}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v1, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    iget-object v2, v0, Lmf/org/apache/xml/serialize/ElementState;->rawName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v1, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const/16 v2, 0x3e

    invoke-virtual {v1, v2}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    goto :goto_0
.end method

.method protected getEntityRef(I)Ljava/lang/String;
    .locals 1

    sparse-switch p1, :sswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :sswitch_0
    const-string/jumbo v0, "lt"

    goto :goto_0

    :sswitch_1
    const-string/jumbo v0, "gt"

    goto :goto_0

    :sswitch_2
    const-string/jumbo v0, "quot"

    goto :goto_0

    :sswitch_3
    const-string v0, "apos"

    goto :goto_0

    :sswitch_4
    const-string v0, "amp"

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_2
        0x26 -> :sswitch_4
        0x27 -> :sswitch_3
        0x3c -> :sswitch_0
        0x3e -> :sswitch_1
    .end sparse-switch
.end method

.method protected printEscaped(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lmf/org/apache/xerces/util/XMLChar;->isValid(I)Z

    move-result v3

    if-nez v3, :cond_2

    add-int/lit8 v1, v1, 0x1

    if-ge v1, v2, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p0, v0, v3, v4}, Lmf/org/apache/xml/serialize/XMLSerializer;->surrogates(IIZ)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "The character \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-char v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' is an invalid XML character"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lmf/org/apache/xml/serialize/XMLSerializer;->fatalError(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const/16 v3, 0xa

    if-eq v0, v3, :cond_3

    const/16 v3, 0xd

    if-eq v0, v3, :cond_3

    const/16 v3, 0x9

    if-ne v0, v3, :cond_4

    :cond_3
    invoke-virtual {p0, v0}, Lmf/org/apache/xml/serialize/XMLSerializer;->printHex(I)V

    goto :goto_1

    :cond_4
    const/16 v3, 0x3c

    if-ne v0, v3, :cond_5

    iget-object v3, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v4, "&lt;"

    invoke-virtual {v3, v4}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const/16 v3, 0x26

    if-ne v0, v3, :cond_6

    iget-object v3, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v4, "&amp;"

    invoke-virtual {v3, v4}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    const/16 v3, 0x22

    if-ne v0, v3, :cond_7

    iget-object v3, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v4, "&quot;"

    invoke-virtual {v3, v4}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    const/16 v3, 0x20

    if-lt v0, v3, :cond_8

    iget-object v3, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_encodingInfo:Lmf/org/apache/xml/serialize/EncodingInfo;

    int-to-char v4, v0

    invoke-virtual {v3, v4}, Lmf/org/apache/xml/serialize/EncodingInfo;->isPrintable(C)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    int-to-char v4, v0

    invoke-virtual {v3, v4}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    goto :goto_1

    :cond_8
    invoke-virtual {p0, v0}, Lmf/org/apache/xml/serialize/XMLSerializer;->printHex(I)V

    goto :goto_1
.end method

.method protected printText(Ljava/lang/String;ZZ)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz p2, :cond_5

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v2, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lmf/org/apache/xerces/util/XMLChar;->isValid(I)Z

    move-result v3

    if-nez v3, :cond_3

    add-int/lit8 v1, v1, 0x1

    if-ge v1, v2, :cond_2

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {p0, v0, v3, v5}, Lmf/org/apache/xml/serialize/XMLSerializer;->surrogates(IIZ)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "The character \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' is an invalid XML character"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lmf/org/apache/xml/serialize/XMLSerializer;->fatalError(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    if-eqz p3, :cond_4

    iget-object v3, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v3, v0}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0, v0}, Lmf/org/apache/xml/serialize/XMLSerializer;->printXMLChar(I)V

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v2, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lmf/org/apache/xerces/util/XMLChar;->isValid(I)Z

    move-result v3

    if-nez v3, :cond_7

    add-int/lit8 v1, v1, 0x1

    if-ge v1, v2, :cond_6

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {p0, v0, v3, v5}, Lmf/org/apache/xml/serialize/XMLSerializer;->surrogates(IIZ)V

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "The character \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' is an invalid XML character"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lmf/org/apache/xml/serialize/XMLSerializer;->fatalError(Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    if-eqz p3, :cond_8

    iget-object v3, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v3, v0}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    goto :goto_3

    :cond_8
    invoke-virtual {p0, v0}, Lmf/org/apache/xml/serialize/XMLSerializer;->printXMLChar(I)V

    goto :goto_3
.end method

.method protected printText([CIIZZ)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x1

    if-eqz p4, :cond_8

    move v1, p3

    move v2, p2

    :goto_0
    add-int/lit8 p3, v1, -0x1

    if-gtz v1, :cond_0

    move p2, v2

    :goto_1
    return-void

    :cond_0
    add-int/lit8 p2, v2, 0x1

    aget-char v0, p1, v2

    invoke-static {v0}, Lmf/org/apache/xerces/util/XMLChar;->isValid(I)Z

    move-result v3

    if-nez v3, :cond_2

    add-int/lit8 v1, p3, -0x1

    if-lez p3, :cond_1

    add-int/lit8 v2, p2, 0x1

    aget-char v3, p1, p2

    invoke-virtual {p0, v0, v3, v5}, Lmf/org/apache/xml/serialize/XMLSerializer;->surrogates(IIZ)V

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "The character \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' is an invalid XML character"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lmf/org/apache/xml/serialize/XMLSerializer;->fatalError(Ljava/lang/String;)V

    move v2, p2

    goto :goto_0

    :cond_2
    if-eqz p5, :cond_3

    iget-object v3, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v3, v0}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    move v1, p3

    move v2, p2

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v0}, Lmf/org/apache/xml/serialize/XMLSerializer;->printXMLChar(I)V

    move v1, p3

    move v2, p2

    goto :goto_0

    :cond_4
    add-int/lit8 p2, v2, 0x1

    aget-char v0, p1, v2

    invoke-static {v0}, Lmf/org/apache/xerces/util/XMLChar;->isValid(I)Z

    move-result v3

    if-nez v3, :cond_6

    add-int/lit8 v1, p3, -0x1

    if-lez p3, :cond_5

    add-int/lit8 v2, p2, 0x1

    aget-char v3, p1, p2

    invoke-virtual {p0, v0, v3, v5}, Lmf/org/apache/xml/serialize/XMLSerializer;->surrogates(IIZ)V

    :goto_2
    add-int/lit8 p3, v1, -0x1

    if-gtz v1, :cond_4

    move p2, v2

    goto :goto_1

    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "The character \'"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' is an invalid XML character"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lmf/org/apache/xml/serialize/XMLSerializer;->fatalError(Ljava/lang/String;)V

    move v2, p2

    goto :goto_2

    :cond_6
    if-eqz p5, :cond_7

    iget-object v3, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v3, v0}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    move v1, p3

    move v2, p2

    goto :goto_2

    :cond_7
    invoke-virtual {p0, v0}, Lmf/org/apache/xml/serialize/XMLSerializer;->printXMLChar(I)V

    :cond_8
    move v1, p3

    move v2, p2

    goto :goto_2
.end method

.method protected printXMLChar(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xd

    if-ne p1, v0, :cond_0

    invoke-virtual {p0, p1}, Lmf/org/apache/xml/serialize/XMLSerializer;->printHex(I)V

    :goto_0
    return-void

    :cond_0
    const/16 v0, 0x3c

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v1, "&lt;"

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x26

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v1, "&amp;"

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/16 v0, 0x3e

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v1, "&gt;"

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const/16 v0, 0xa

    if-eq p1, v0, :cond_4

    const/16 v0, 0x9

    if-eq p1, v0, :cond_4

    const/16 v0, 0x20

    if-lt p1, v0, :cond_5

    iget-object v0, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_encodingInfo:Lmf/org/apache/xml/serialize/EncodingInfo;

    int-to-char v1, p1

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/EncodingInfo;->isPrintable(C)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    iget-object v0, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    int-to-char v1, p1

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    goto :goto_0

    :cond_5
    invoke-virtual {p0, p1}, Lmf/org/apache/xml/serialize/XMLSerializer;->printHex(I)V

    goto :goto_0
.end method

.method public reset()Z
    .locals 3

    invoke-super {p0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->reset()Z

    iget-object v0, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->fNSBinder:Lmf/org/apache/xerces/util/NamespaceSupport;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->fNSBinder:Lmf/org/apache/xerces/util/NamespaceSupport;

    invoke-virtual {v0}, Lmf/org/apache/xerces/util/NamespaceSupport;->reset()V

    iget-object v0, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->fNSBinder:Lmf/org/apache/xerces/util/NamespaceSupport;

    sget-object v1, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    sget-object v2, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/util/NamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected serializeElement(Lmf/org/w3c/dom/Element;)V
    .locals 29
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->fNamespaces:Z

    move/from16 v24, v0

    if-eqz v24, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->fLocalNSBinder:Lmf/org/apache/xerces/util/NamespaceSupport;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lmf/org/apache/xerces/util/NamespaceSupport;->reset()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->fNSBinder:Lmf/org/apache/xerces/util/NamespaceSupport;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lmf/org/apache/xerces/util/NamespaceSupport;->pushContext()V

    :cond_0
    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xml/serialize/XMLSerializer;->getElementState()Lmf/org/apache/xml/serialize/ElementState;

    move-result-object v20

    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xml/serialize/XMLSerializer;->isDocumentState()Z

    move-result v24

    if-eqz v24, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->_started:Z

    move/from16 v24, v0

    if-nez v24, :cond_1

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/XMLSerializer;->startDocument(Ljava/lang/String;)V

    :cond_1
    :goto_0
    move-object/from16 v0, v20

    iget-boolean v0, v0, Lmf/org/apache/xml/serialize/ElementState;->preserveSpace:Z

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lmf/org/apache/xml/serialize/XMLSerializer;->fPreserveSpace:Z

    const/4 v14, 0x0

    const/4 v6, 0x0

    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Element;->hasAttributes()Z

    move-result v24

    if-eqz v24, :cond_2

    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Element;->getAttributes()Lmf/org/w3c/dom/NamedNodeMap;

    move-result-object v6

    invoke-interface {v6}, Lmf/org/w3c/dom/NamedNodeMap;->getLength()I

    move-result v14

    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->fNamespaces:Z

    move/from16 v24, v0

    if-nez v24, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    move-object/from16 v24, v0

    const/16 v25, 0x3c

    invoke-virtual/range {v24 .. v25}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lmf/org/apache/xml/serialize/Printer;->indent()V

    const/4 v13, 0x0

    :goto_1
    if-lt v13, v14, :cond_a

    :cond_3
    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Element;->hasChildNodes()Z

    move-result v24

    if-eqz v24, :cond_31

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->fPreserveSpace:Z

    move/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move-object/from16 v3, v21

    move/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Lmf/org/apache/xml/serialize/XMLSerializer;->enterElementState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lmf/org/apache/xml/serialize/ElementState;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/OutputFormat;->isCDataElement(Ljava/lang/String;)Z

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, v20

    iput-boolean v0, v1, Lmf/org/apache/xml/serialize/ElementState;->doCData:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/OutputFormat;->isNonEscapingElement(Ljava/lang/String;)Z

    move-result v24

    move/from16 v0, v24

    move-object/from16 v1, v20

    iput-boolean v0, v1, Lmf/org/apache/xml/serialize/ElementState;->unescaped:Z

    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Element;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v7

    :goto_2
    if-nez v7, :cond_30

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->fNamespaces:Z

    move/from16 v24, v0

    if-eqz v24, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->fNSBinder:Lmf/org/apache/xerces/util/NamespaceSupport;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lmf/org/apache/xerces/util/NamespaceSupport;->popContext()V

    :cond_4
    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Lmf/org/apache/xml/serialize/XMLSerializer;->endElementIO(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_3
    return-void

    :cond_6
    move-object/from16 v0, v20

    iget-boolean v0, v0, Lmf/org/apache/xml/serialize/ElementState;->empty:Z

    move/from16 v24, v0

    if-eqz v24, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    move-object/from16 v24, v0

    const/16 v25, 0x3e

    invoke-virtual/range {v24 .. v25}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    :cond_7
    move-object/from16 v0, v20

    iget-boolean v0, v0, Lmf/org/apache/xml/serialize/ElementState;->inCData:Z

    move/from16 v24, v0

    if-eqz v24, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    move-object/from16 v24, v0

    const-string v25, "]]>"

    invoke-virtual/range {v24 .. v25}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, v20

    iput-boolean v0, v1, Lmf/org/apache/xml/serialize/ElementState;->inCData:Z

    :cond_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->_indenting:Z

    move/from16 v24, v0

    if-eqz v24, :cond_1

    move-object/from16 v0, v20

    iget-boolean v0, v0, Lmf/org/apache/xml/serialize/ElementState;->preserveSpace:Z

    move/from16 v24, v0

    if-nez v24, :cond_1

    move-object/from16 v0, v20

    iget-boolean v0, v0, Lmf/org/apache/xml/serialize/ElementState;->empty:Z

    move/from16 v24, v0

    if-nez v24, :cond_9

    move-object/from16 v0, v20

    iget-boolean v0, v0, Lmf/org/apache/xml/serialize/ElementState;->afterElement:Z

    move/from16 v24, v0

    if-nez v24, :cond_9

    move-object/from16 v0, v20

    iget-boolean v0, v0, Lmf/org/apache/xml/serialize/ElementState;->afterComment:Z

    move/from16 v24, v0

    if-eqz v24, :cond_1

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lmf/org/apache/xml/serialize/Printer;->breakLine()V

    goto/16 :goto_0

    :cond_a
    invoke-interface {v6, v13}, Lmf/org/w3c/dom/NamedNodeMap;->item(I)Lmf/org/w3c/dom/Node;

    move-result-object v5

    check-cast v5, Lmf/org/w3c/dom/Attr;

    invoke-interface {v5}, Lmf/org/w3c/dom/Attr;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-interface {v5}, Lmf/org/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v23

    if-nez v23, :cond_b

    const-string v23, ""

    :cond_b
    invoke-interface {v5}, Lmf/org/w3c/dom/Attr;->getSpecified()Z

    move-result v24

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v23

    move/from16 v3, v24

    invoke-direct {v0, v1, v2, v3, v5}, Lmf/org/apache/xml/serialize/XMLSerializer;->printAttribute(Ljava/lang/String;Ljava/lang/String;ZLmf/org/w3c/dom/Attr;)V

    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_1

    :cond_c
    const/4 v13, 0x0

    :goto_4
    if-lt v13, v14, :cond_15

    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Element;->getNamespaceURI()Ljava/lang/String;

    move-result-object v22

    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Element;->getPrefix()Ljava/lang/String;

    move-result-object v19

    if-eqz v22, :cond_1c

    if-eqz v19, :cond_1c

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v24

    if-nez v24, :cond_1c

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v24

    if-eqz v24, :cond_1c

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    move-object/from16 v24, v0

    const/16 v25, 0x3c

    invoke-virtual/range {v24 .. v25}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    move-object/from16 v24, v0

    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Element;->getLocalName()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lmf/org/apache/xml/serialize/Printer;->indent()V

    :goto_5
    if-eqz v22, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    if-eqz v19, :cond_d

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v24

    if-nez v24, :cond_1d

    :cond_d
    sget-object v19, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->fNSBinder:Lmf/org/apache/xerces/util/NamespaceSupport;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/util/NamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    if-eq v0, v1, :cond_f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->fNamespacePrefixes:Z

    move/from16 v24, v0

    if-eqz v24, :cond_e

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lmf/org/apache/xml/serialize/XMLSerializer;->printNamespaceAttr(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->fLocalNSBinder:Lmf/org/apache/xerces/util/NamespaceSupport;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/util/NamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->fNSBinder:Lmf/org/apache/xerces/util/NamespaceSupport;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/util/NamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_f
    :goto_7
    const/4 v13, 0x0

    :goto_8
    if-ge v13, v14, :cond_3

    invoke-interface {v6, v13}, Lmf/org/w3c/dom/NamedNodeMap;->item(I)Lmf/org/w3c/dom/Node;

    move-result-object v5

    check-cast v5, Lmf/org/w3c/dom/Attr;

    invoke-interface {v5}, Lmf/org/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v23

    invoke-interface {v5}, Lmf/org/w3c/dom/Attr;->getNodeName()Ljava/lang/String;

    move-result-object v18

    invoke-interface {v5}, Lmf/org/w3c/dom/Attr;->getNamespaceURI()Ljava/lang/String;

    move-result-object v22

    if-eqz v22, :cond_10

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v24

    if-nez v24, :cond_10

    const/16 v22, 0x0

    invoke-interface {v5}, Lmf/org/w3c/dom/Attr;->getLocalName()Ljava/lang/String;

    move-result-object v18

    :cond_10
    if-nez v23, :cond_11

    sget-object v23, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    :cond_11
    if-eqz v22, :cond_2d

    invoke-interface {v5}, Lmf/org/w3c/dom/Attr;->getPrefix()Ljava/lang/String;

    move-result-object v19

    if-nez v19, :cond_21

    sget-object v19, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    move-object/from16 v24, v0

    invoke-interface {v5}, Lmf/org/w3c/dom/Attr;->getLocalName()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    if-eqz v22, :cond_24

    sget-object v24, Lmf/org/apache/xerces/xni/NamespaceContext;->XMLNS_URI:Ljava/lang/String;

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_24

    invoke-interface {v5}, Lmf/org/w3c/dom/Attr;->getPrefix()Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_12

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v24

    if-nez v24, :cond_22

    :cond_12
    sget-object v19, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    move-object/from16 v24, v0

    invoke-interface {v5}, Lmf/org/w3c/dom/Attr;->getLocalName()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    sget-object v24, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_23

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->fLocalNSBinder:Lmf/org/apache/xerces/util/NamespaceSupport;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/util/NamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v24

    if-eqz v24, :cond_14

    if-nez v15, :cond_14

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->fNamespacePrefixes:Z

    move/from16 v24, v0

    if-eqz v24, :cond_13

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lmf/org/apache/xml/serialize/XMLSerializer;->printNamespaceAttr(Ljava/lang/String;Ljava/lang/String;)V

    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->fLocalNSBinder:Lmf/org/apache/xerces/util/NamespaceSupport;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/util/NamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_14
    :goto_b
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_8

    :cond_15
    invoke-interface {v6, v13}, Lmf/org/w3c/dom/NamedNodeMap;->item(I)Lmf/org/w3c/dom/Node;

    move-result-object v5

    check-cast v5, Lmf/org/w3c/dom/Attr;

    invoke-interface {v5}, Lmf/org/w3c/dom/Attr;->getNamespaceURI()Ljava/lang/String;

    move-result-object v22

    if-eqz v22, :cond_19

    sget-object v24, Lmf/org/apache/xerces/xni/NamespaceContext;->XMLNS_URI:Ljava/lang/String;

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_19

    invoke-interface {v5}, Lmf/org/w3c/dom/Attr;->getNodeValue()Ljava/lang/String;

    move-result-object v23

    if-nez v23, :cond_16

    sget-object v23, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    :cond_16
    sget-object v24, Lmf/org/apache/xerces/xni/NamespaceContext;->XMLNS_URI:Ljava/lang/String;

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->fDOMErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    move-object/from16 v24, v0

    if-eqz v24, :cond_19

    const-string/jumbo v24, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v25, "CantBindXMLNS"

    const/16 v26, 0x0

    invoke-static/range {v24 .. v26}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    const/16 v24, 0x2

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v24

    move-object/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3, v5}, Lmf/org/apache/xml/serialize/XMLSerializer;->modifyDOMError(Ljava/lang/String;SLjava/lang/String;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/DOMError;

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->fDOMErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->fDOMError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    move-object/from16 v25, v0

    invoke-interface/range {v24 .. v25}, Lmf/org/w3c/dom/DOMErrorHandler;->handleError(Lmf/org/w3c/dom/DOMError;)Z

    move-result v8

    if-nez v8, :cond_19

    new-instance v24, Ljava/lang/RuntimeException;

    const-string/jumbo v25, "http://apache.org/xml/serializer"

    const-string v26, "SerializationStopped"

    const/16 v27, 0x0

    invoke-static/range {v25 .. v27}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v24

    :cond_17
    invoke-interface {v5}, Lmf/org/w3c/dom/Attr;->getPrefix()Ljava/lang/String;

    move-result-object v19

    if-eqz v19, :cond_18

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v24

    if-nez v24, :cond_1a

    :cond_18
    sget-object v19, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    move-object/from16 v24, v0

    invoke-interface {v5}, Lmf/org/w3c/dom/Attr;->getLocalName()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    sget-object v24, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v24

    if-eqz v24, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->fNSBinder:Lmf/org/apache/xerces/util/NamespaceSupport;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/util/NamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_19
    :goto_d
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_4

    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    goto :goto_c

    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->fNSBinder:Lmf/org/apache/xerces/util/NamespaceSupport;

    move-object/from16 v24, v0

    sget-object v25, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/util/NamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_d

    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    move-object/from16 v24, v0

    const/16 v25, 0x3c

    invoke-virtual/range {v24 .. v25}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lmf/org/apache/xml/serialize/Printer;->indent()V

    goto/16 :goto_5

    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    goto/16 :goto_6

    :cond_1e
    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Element;->getLocalName()Ljava/lang/String;

    move-result-object v24

    if-nez v24, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->fDOMErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    move-object/from16 v24, v0

    if-eqz v24, :cond_f

    const-string/jumbo v24, "http://www.w3.org/dom/DOMTR"

    const-string v25, "NullLocalElementName"

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-interface/range {p1 .. p1}, Lmf/org/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v28

    aput-object v28, v26, v27

    invoke-static/range {v24 .. v26}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    const/16 v24, 0x2

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v24

    move-object/from16 v3, v25

    move-object/from16 v4, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Lmf/org/apache/xml/serialize/XMLSerializer;->modifyDOMError(Ljava/lang/String;SLjava/lang/String;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/DOMError;

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->fDOMErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->fDOMError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    move-object/from16 v25, v0

    invoke-interface/range {v24 .. v25}, Lmf/org/w3c/dom/DOMErrorHandler;->handleError(Lmf/org/w3c/dom/DOMError;)Z

    move-result v8

    if-nez v8, :cond_f

    new-instance v24, Ljava/lang/RuntimeException;

    const-string/jumbo v25, "http://apache.org/xml/serializer"

    const-string v26, "SerializationStopped"

    const/16 v27, 0x0

    invoke-static/range {v25 .. v27}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v24

    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->fNSBinder:Lmf/org/apache/xerces/util/NamespaceSupport;

    move-object/from16 v24, v0

    sget-object v25, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    invoke-virtual/range {v24 .. v25}, Lmf/org/apache/xerces/util/NamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    if-eqz v22, :cond_f

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v24

    if-lez v24, :cond_f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->fNamespacePrefixes:Z

    move/from16 v24, v0

    if-eqz v24, :cond_20

    sget-object v24, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    sget-object v25, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lmf/org/apache/xml/serialize/XMLSerializer;->printNamespaceAttr(Ljava/lang/String;Ljava/lang/String;)V

    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->fLocalNSBinder:Lmf/org/apache/xerces/util/NamespaceSupport;

    move-object/from16 v24, v0

    sget-object v25, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    sget-object v26, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    invoke-virtual/range {v24 .. v26}, Lmf/org/apache/xerces/util/NamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->fNSBinder:Lmf/org/apache/xerces/util/NamespaceSupport;

    move-object/from16 v24, v0

    sget-object v25, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    sget-object v26, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    invoke-virtual/range {v24 .. v26}, Lmf/org/apache/xerces/util/NamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_7

    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    goto/16 :goto_9

    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    goto/16 :goto_a

    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->fNSBinder:Lmf/org/apache/xerces/util/NamespaceSupport;

    move-object/from16 v24, v0

    sget-object v25, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    invoke-virtual/range {v24 .. v25}, Lmf/org/apache/xerces/util/NamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->fLocalNSBinder:Lmf/org/apache/xerces/util/NamespaceSupport;

    move-object/from16 v24, v0

    sget-object v25, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    invoke-virtual/range {v24 .. v25}, Lmf/org/apache/xerces/util/NamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    if-nez v15, :cond_14

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->fNamespacePrefixes:Z

    move/from16 v24, v0

    if-eqz v24, :cond_14

    sget-object v24, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lmf/org/apache/xml/serialize/XMLSerializer;->printNamespaceAttr(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->fNSBinder:Lmf/org/apache/xerces/util/NamespaceSupport;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/util/NamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    sget-object v24, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    if-eq v0, v1, :cond_25

    move-object/from16 v0, v22

    if-eq v12, v0, :cond_26

    :cond_25
    invoke-interface {v5}, Lmf/org/w3c/dom/Attr;->getNodeName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->fNSBinder:Lmf/org/apache/xerces/util/NamespaceSupport;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/util/NamespaceSupport;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_27

    sget-object v24, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    move-object/from16 v0, v24

    if-eq v11, v0, :cond_27

    move-object/from16 v19, v11

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v25, ":"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    :cond_26
    :goto_e
    if-nez v23, :cond_2c

    sget-object v24, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    :goto_f
    invoke-interface {v5}, Lmf/org/w3c/dom/Attr;->getSpecified()Z

    move-result v25

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v24

    move/from16 v3, v25

    invoke-direct {v0, v1, v2, v3, v5}, Lmf/org/apache/xml/serialize/XMLSerializer;->printAttribute(Ljava/lang/String;Ljava/lang/String;ZLmf/org/w3c/dom/Attr;)V

    goto/16 :goto_b

    :cond_27
    sget-object v24, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    if-eq v0, v1, :cond_28

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->fLocalNSBinder:Lmf/org/apache/xerces/util/NamespaceSupport;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/util/NamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    if-eqz v24, :cond_29

    :cond_28
    const/4 v9, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, "NS"

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v10, v9, 0x1

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move v9, v10

    :goto_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->fLocalNSBinder:Lmf/org/apache/xerces/util/NamespaceSupport;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/util/NamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    if-nez v24, :cond_2b

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v25, ":"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    :cond_29
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->fNamespacePrefixes:Z

    move/from16 v24, v0

    if-eqz v24, :cond_2a

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lmf/org/apache/xml/serialize/XMLSerializer;->printNamespaceAttr(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->fLocalNSBinder:Lmf/org/apache/xerces/util/NamespaceSupport;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/util/NamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->fNSBinder:Lmf/org/apache/xerces/util/NamespaceSupport;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v19

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Lmf/org/apache/xerces/util/NamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_e

    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    move-object/from16 v24, v0

    new-instance v25, Ljava/lang/StringBuilder;

    const-string v26, "NS"

    invoke-direct/range {v25 .. v26}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v10, v9, 0x1

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Lmf/org/apache/xerces/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    move v9, v10

    goto/16 :goto_10

    :cond_2c
    move-object/from16 v24, v23

    goto/16 :goto_f

    :cond_2d
    invoke-interface {v5}, Lmf/org/w3c/dom/Attr;->getLocalName()Ljava/lang/String;

    move-result-object v24

    if-nez v24, :cond_2f

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->fDOMErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    move-object/from16 v24, v0

    if-eqz v24, :cond_2e

    const-string/jumbo v24, "http://www.w3.org/dom/DOMTR"

    const-string v25, "NullLocalAttrName"

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-interface {v5}, Lmf/org/w3c/dom/Attr;->getNodeName()Ljava/lang/String;

    move-result-object v28

    aput-object v28, v26, v27

    invoke-static/range {v24 .. v26}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    const/16 v24, 0x2

    const/16 v25, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v24

    move-object/from16 v3, v25

    invoke-virtual {v0, v1, v2, v3, v5}, Lmf/org/apache/xml/serialize/XMLSerializer;->modifyDOMError(Ljava/lang/String;SLjava/lang/String;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/DOMError;

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->fDOMErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->fDOMError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    move-object/from16 v25, v0

    invoke-interface/range {v24 .. v25}, Lmf/org/w3c/dom/DOMErrorHandler;->handleError(Lmf/org/w3c/dom/DOMError;)Z

    move-result v8

    if-nez v8, :cond_2e

    new-instance v24, Ljava/lang/RuntimeException;

    const-string/jumbo v25, "http://apache.org/xml/serializer"

    const-string v26, "SerializationStopped"

    const/16 v27, 0x0

    invoke-static/range {v25 .. v27}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v24

    :cond_2e
    invoke-interface {v5}, Lmf/org/w3c/dom/Attr;->getSpecified()Z

    move-result v24

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v23

    move/from16 v3, v24

    invoke-direct {v0, v1, v2, v3, v5}, Lmf/org/apache/xml/serialize/XMLSerializer;->printAttribute(Ljava/lang/String;Ljava/lang/String;ZLmf/org/w3c/dom/Attr;)V

    goto/16 :goto_b

    :cond_2f
    invoke-interface {v5}, Lmf/org/w3c/dom/Attr;->getSpecified()Z

    move-result v24

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object/from16 v2, v23

    move/from16 v3, v24

    invoke-direct {v0, v1, v2, v3, v5}, Lmf/org/apache/xml/serialize/XMLSerializer;->printAttribute(Ljava/lang/String;Ljava/lang/String;ZLmf/org/w3c/dom/Attr;)V

    goto/16 :goto_b

    :cond_30
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lmf/org/apache/xml/serialize/XMLSerializer;->serializeNode(Lmf/org/w3c/dom/Node;)V

    invoke-interface {v7}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v7

    goto/16 :goto_2

    :cond_31
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->fNamespaces:Z

    move/from16 v24, v0

    if-eqz v24, :cond_32

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->fNSBinder:Lmf/org/apache/xerces/util/NamespaceSupport;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lmf/org/apache/xerces/util/NamespaceSupport;->popContext()V

    :cond_32
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lmf/org/apache/xml/serialize/Printer;->unindent()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    move-object/from16 v24, v0

    const-string v25, "/>"

    invoke-virtual/range {v24 .. v25}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, v20

    iput-boolean v0, v1, Lmf/org/apache/xml/serialize/ElementState;->afterElement:Z

    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, v20

    iput-boolean v0, v1, Lmf/org/apache/xml/serialize/ElementState;->afterComment:Z

    const/16 v24, 0x0

    move/from16 v0, v24

    move-object/from16 v1, v20

    iput-boolean v0, v1, Lmf/org/apache/xml/serialize/ElementState;->empty:Z

    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xml/serialize/XMLSerializer;->isDocumentState()Z

    move-result v24

    if-eqz v24, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Lmf/org/apache/xml/serialize/Printer;->flush()V

    goto/16 :goto_3
.end method

.method public setNamespaces(Z)V
    .locals 1

    iput-boolean p1, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->fNamespaces:Z

    iget-object v0, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->fNSBinder:Lmf/org/apache/xerces/util/NamespaceSupport;

    if-nez v0, :cond_0

    new-instance v0, Lmf/org/apache/xerces/util/NamespaceSupport;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/NamespaceSupport;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->fNSBinder:Lmf/org/apache/xerces/util/NamespaceSupport;

    new-instance v0, Lmf/org/apache/xerces/util/NamespaceSupport;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/NamespaceSupport;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->fLocalNSBinder:Lmf/org/apache/xerces/util/NamespaceSupport;

    new-instance v0, Lmf/org/apache/xerces/util/SymbolTable;

    invoke-direct {v0}, Lmf/org/apache/xerces/util/SymbolTable;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;

    :cond_0
    return-void
.end method

.method public setOutputFormat(Lmf/org/apache/xml/serialize/OutputFormat;)V
    .locals 3

    if-eqz p1, :cond_0

    :goto_0
    invoke-super {p0, p1}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->setOutputFormat(Lmf/org/apache/xml/serialize/OutputFormat;)V

    return-void

    :cond_0
    new-instance p1, Lmf/org/apache/xml/serialize/OutputFormat;

    const-string/jumbo v0, "xml"

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p1, v0, v1, v2}, Lmf/org/apache/xml/serialize/OutputFormat;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method protected startDocument(Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v5, 0x22

    const/4 v6, 0x1

    iget-object v4, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v4}, Lmf/org/apache/xml/serialize/Printer;->leaveDTD()Ljava/lang/String;

    move-result-object v1

    iget-boolean v4, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_started:Z

    if-nez v4, :cond_4

    iget-object v4, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    invoke-virtual {v4}, Lmf/org/apache/xml/serialize/OutputFormat;->getOmitXMLDeclaration()Z

    move-result v4

    if-nez v4, :cond_2

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v4, "<?xml version=\""

    invoke-direct {v0, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    invoke-virtual {v4}, Lmf/org/apache/xml/serialize/OutputFormat;->getVersion()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    invoke-virtual {v4}, Lmf/org/apache/xml/serialize/OutputFormat;->getVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v4, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    invoke-virtual {v4}, Lmf/org/apache/xml/serialize/OutputFormat;->getEncoding()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v4, " encoding=\""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_0
    iget-object v4, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    invoke-virtual {v4}, Lmf/org/apache/xml/serialize/OutputFormat;->getStandalone()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_docTypeSystemId:Ljava/lang/String;

    if-nez v4, :cond_1

    iget-object v4, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_docTypePublicId:Ljava/lang/String;

    if-nez v4, :cond_1

    const-string v4, " standalone=\"yes\""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    const-string v4, "?>"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v4, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v4, v0}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/StringBuffer;)V

    iget-object v4, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v4}, Lmf/org/apache/xml/serialize/Printer;->breakLine()V

    :cond_2
    iget-object v4, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    invoke-virtual {v4}, Lmf/org/apache/xml/serialize/OutputFormat;->getOmitDocumentType()Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_docTypeSystemId:Ljava/lang/String;

    if-eqz v4, :cond_9

    iget-object v4, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v5, "<!DOCTYPE "

    invoke-virtual {v4, v5}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v4, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v4, p1}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v4, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_docTypePublicId:Ljava/lang/String;

    if-eqz v4, :cond_8

    iget-object v4, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v5, " PUBLIC "

    invoke-virtual {v4, v5}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v4, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_docTypePublicId:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lmf/org/apache/xml/serialize/XMLSerializer;->printDoctypeURL(Ljava/lang/String;)V

    iget-boolean v4, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_indenting:Z

    if-eqz v4, :cond_7

    iget-object v4, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v4}, Lmf/org/apache/xml/serialize/Printer;->breakLine()V

    const/4 v3, 0x0

    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x12

    if-lt v3, v4, :cond_6

    :goto_2
    iget-object v4, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_docTypeSystemId:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lmf/org/apache/xml/serialize/XMLSerializer;->printDoctypeURL(Ljava/lang/String;)V

    :goto_3
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3

    iget-object v4, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v5, " ["

    invoke-virtual {v4, v5}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v6, v6}, Lmf/org/apache/xml/serialize/XMLSerializer;->printText(Ljava/lang/String;ZZ)V

    iget-object v4, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const/16 v5, 0x5d

    invoke-virtual {v4, v5}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    :cond_3
    iget-object v4, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v5, ">"

    invoke-virtual {v4, v5}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v4, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v4}, Lmf/org/apache/xml/serialize/Printer;->breakLine()V

    :cond_4
    :goto_4
    iput-boolean v6, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_started:Z

    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/XMLSerializer;->serializePreRoot()V

    return-void

    :cond_5
    const-string v4, "1.0"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0

    :cond_6
    iget-object v4, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v5, " "

    invoke-virtual {v4, v5}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_7
    iget-object v4, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v5, " "

    invoke-virtual {v4, v5}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    iget-object v4, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v5, " SYSTEM "

    invoke-virtual {v4, v5}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v4, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_docTypeSystemId:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lmf/org/apache/xml/serialize/XMLSerializer;->printDoctypeURL(Ljava/lang/String;)V

    goto :goto_3

    :cond_9
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_4

    iget-object v4, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v5, "<!DOCTYPE "

    invoke-virtual {v4, v5}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v4, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v4, p1}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v4, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v5, " ["

    invoke-virtual {v4, v5}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v6, v6}, Lmf/org/apache/xml/serialize/XMLSerializer;->printText(Ljava/lang/String;ZZ)V

    iget-object v4, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v5, "]>"

    invoke-virtual {v4, v5}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v4, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v4}, Lmf/org/apache/xml/serialize/Printer;->breakLine()V

    goto :goto_4
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    :try_start_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    if-nez v15, :cond_0

    const-string/jumbo v15, "http://apache.org/xml/serializer"

    const-string v16, "NoWriterSupplied"

    const/16 v17, 0x0

    invoke-static/range {v15 .. v17}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    new-instance v15, Ljava/lang/IllegalStateException;

    invoke-direct {v15, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v15
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v7

    new-instance v15, Lorg/xml/sax/SAXException;

    invoke-direct {v15, v7}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v15

    :cond_0
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xml/serialize/XMLSerializer;->getElementState()Lmf/org/apache/xml/serialize/ElementState;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lmf/org/apache/xml/serialize/XMLSerializer;->isDocumentState()Z

    move-result v15

    if-eqz v15, :cond_5

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->_started:Z

    if-nez v15, :cond_2

    if-eqz p2, :cond_1

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v15

    if-nez v15, :cond_4

    :cond_1
    move-object/from16 v15, p3

    :goto_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lmf/org/apache/xml/serialize/XMLSerializer;->startDocument(Ljava/lang/String;)V

    :cond_2
    :goto_1
    iget-boolean v12, v13, Lmf/org/apache/xml/serialize/ElementState;->preserveSpace:Z

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Lmf/org/apache/xml/serialize/XMLSerializer;->extractNamespaces(Lorg/xml/sax/Attributes;)Lorg/xml/sax/Attributes;

    move-result-object p4

    if-eqz p3, :cond_3

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v15

    if-nez v15, :cond_a

    :cond_3
    if-nez p2, :cond_9

    const-string/jumbo v15, "http://apache.org/xml/serializer"

    const-string v16, "NoName"

    const/16 v17, 0x0

    invoke-static/range {v15 .. v17}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    new-instance v15, Lorg/xml/sax/SAXException;

    invoke-direct {v15, v9}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v15

    :cond_4
    move-object/from16 v15, p2

    goto :goto_0

    :cond_5
    iget-boolean v15, v13, Lmf/org/apache/xml/serialize/ElementState;->empty:Z

    if-eqz v15, :cond_6

    move-object/from16 v0, p0

    iget-object v15, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const/16 v16, 0x3e

    invoke-virtual/range {v15 .. v16}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    :cond_6
    iget-boolean v15, v13, Lmf/org/apache/xml/serialize/ElementState;->inCData:Z

    if-eqz v15, :cond_7

    move-object/from16 v0, p0

    iget-object v15, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v16, "]]>"

    invoke-virtual/range {v15 .. v16}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    const/4 v15, 0x0

    iput-boolean v15, v13, Lmf/org/apache/xml/serialize/ElementState;->inCData:Z

    :cond_7
    move-object/from16 v0, p0

    iget-boolean v15, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->_indenting:Z

    if-eqz v15, :cond_2

    iget-boolean v15, v13, Lmf/org/apache/xml/serialize/ElementState;->preserveSpace:Z

    if-nez v15, :cond_2

    iget-boolean v15, v13, Lmf/org/apache/xml/serialize/ElementState;->empty:Z

    if-nez v15, :cond_8

    iget-boolean v15, v13, Lmf/org/apache/xml/serialize/ElementState;->afterElement:Z

    if-nez v15, :cond_8

    iget-boolean v15, v13, Lmf/org/apache/xml/serialize/ElementState;->afterComment:Z

    if-eqz v15, :cond_2

    :cond_8
    move-object/from16 v0, p0

    iget-object v15, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v15}, Lmf/org/apache/xml/serialize/Printer;->breakLine()V

    goto :goto_1

    :cond_9
    if-eqz p1, :cond_f

    const-string v15, ""

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_f

    invoke-virtual/range {p0 .. p1}, Lmf/org/apache/xml/serialize/XMLSerializer;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_e

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v15

    if-lez v15, :cond_e

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v16, ":"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    :cond_a
    :goto_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const/16 v16, 0x3c

    invoke-virtual/range {v15 .. v16}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    move-object/from16 v0, p3

    invoke-virtual {v15, v0}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v15}, Lmf/org/apache/xml/serialize/Printer;->indent()V

    if-eqz p4, :cond_b

    const/4 v8, 0x0

    :goto_3
    invoke-interface/range {p4 .. p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v15

    if-lt v8, v15, :cond_10

    :cond_b
    move-object/from16 v0, p0

    iget-object v15, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->_prefixes:Ljava/util/Hashtable;

    if-eqz v15, :cond_c

    move-object/from16 v0, p0

    iget-object v15, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->_prefixes:Ljava/util/Hashtable;

    invoke-virtual {v15}, Ljava/util/Hashtable;->entrySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-nez v15, :cond_16

    :cond_c
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3, v12}, Lmf/org/apache/xml/serialize/XMLSerializer;->enterElementState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lmf/org/apache/xml/serialize/ElementState;

    move-result-object v13

    if-eqz p2, :cond_d

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v15

    if-nez v15, :cond_18

    :cond_d
    move-object/from16 v10, p3

    :goto_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    invoke-virtual {v15, v10}, Lmf/org/apache/xml/serialize/OutputFormat;->isCDataElement(Ljava/lang/String;)Z

    move-result v15

    iput-boolean v15, v13, Lmf/org/apache/xml/serialize/ElementState;->doCData:Z

    move-object/from16 v0, p0

    iget-object v15, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    invoke-virtual {v15, v10}, Lmf/org/apache/xml/serialize/OutputFormat;->isNonEscapingElement(Ljava/lang/String;)Z

    move-result v15

    iput-boolean v15, v13, Lmf/org/apache/xml/serialize/ElementState;->unescaped:Z

    return-void

    :cond_e
    move-object/from16 p3, p2

    goto :goto_2

    :cond_f
    move-object/from16 p3, p2

    goto :goto_2

    :cond_10
    move-object/from16 v0, p0

    iget-object v15, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v15}, Lmf/org/apache/xml/serialize/Printer;->printSpace()V

    move-object/from16 v0, p4

    invoke-interface {v0, v8}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_12

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v15

    if-nez v15, :cond_12

    move-object/from16 v0, p4

    invoke-interface {v0, v8}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p4

    invoke-interface {v0, v8}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_12

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v15

    if-eqz v15, :cond_12

    if-eqz p1, :cond_11

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v15

    if-eqz v15, :cond_11

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_12

    :cond_11
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lmf/org/apache/xml/serialize/XMLSerializer;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_12

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v15

    if-lez v15, :cond_12

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v16, ":"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    :cond_12
    move-object/from16 v0, p4

    invoke-interface {v0, v8}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v14

    if-nez v14, :cond_13

    const-string v14, ""

    :cond_13
    move-object/from16 v0, p0

    iget-object v15, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v15, v10}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v16, "=\""

    invoke-virtual/range {v15 .. v16}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lmf/org/apache/xml/serialize/XMLSerializer;->printEscaped(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const/16 v16, 0x22

    invoke-virtual/range {v15 .. v16}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    const-string/jumbo v15, "xml:space"

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_14

    const-string/jumbo v15, "preserve"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_15

    const/4 v12, 0x1

    :cond_14
    :goto_6
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_3

    :cond_15
    move-object/from16 v0, p0

    iget-object v15, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    invoke-virtual {v15}, Lmf/org/apache/xml/serialize/OutputFormat;->getPreserveSpace()Z

    move-result v12

    goto :goto_6

    :cond_16
    move-object/from16 v0, p0

    iget-object v15, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v15}, Lmf/org/apache/xml/serialize/Printer;->printSpace()V

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v15

    if-nez v15, :cond_17

    move-object/from16 v0, p0

    iget-object v15, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string/jumbo v16, "xmlns=\""

    invoke-virtual/range {v15 .. v16}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lmf/org/apache/xml/serialize/XMLSerializer;->printEscaped(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const/16 v16, 0x22

    invoke-virtual/range {v15 .. v16}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    goto/16 :goto_4

    :cond_17
    move-object/from16 v0, p0

    iget-object v15, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string/jumbo v16, "xmlns:"

    invoke-virtual/range {v15 .. v16}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v15, v10}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v16, "=\""

    invoke-virtual/range {v15 .. v16}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lmf/org/apache/xml/serialize/XMLSerializer;->printEscaped(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const/16 v16, 0x22

    invoke-virtual/range {v15 .. v16}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    goto/16 :goto_4

    :cond_18
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v16, "^"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v10

    goto/16 :goto_5
.end method

.method public startElement(Ljava/lang/String;Lorg/xml/sax/AttributeList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    :try_start_0
    iget-object v7, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    if-nez v7, :cond_0

    const-string/jumbo v7, "http://apache.org/xml/serializer"

    const-string v8, "NoWriterSupplied"

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v7, Ljava/lang/IllegalStateException;

    invoke-direct {v7, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v7, Lorg/xml/sax/SAXException;

    invoke-direct {v7, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v7

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/XMLSerializer;->getElementState()Lmf/org/apache/xml/serialize/ElementState;

    move-result-object v5

    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/XMLSerializer;->isDocumentState()Z

    move-result v7

    if-eqz v7, :cond_3

    iget-boolean v7, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_started:Z

    if-nez v7, :cond_1

    invoke-virtual {p0, p1}, Lmf/org/apache/xml/serialize/XMLSerializer;->startDocument(Ljava/lang/String;)V

    :cond_1
    :goto_0
    iget-boolean v4, v5, Lmf/org/apache/xml/serialize/ElementState;->preserveSpace:Z

    iget-object v7, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const/16 v8, 0x3c

    invoke-virtual {v7, v8}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    iget-object v7, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v7, p1}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v7, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v7}, Lmf/org/apache/xml/serialize/Printer;->indent()V

    if-eqz p2, :cond_2

    const/4 v1, 0x0

    :goto_1
    invoke-interface {p2}, Lorg/xml/sax/AttributeList;->getLength()I

    move-result v7

    if-lt v1, v7, :cond_7

    :cond_2
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {p0, v7, v8, p1, v4}, Lmf/org/apache/xml/serialize/XMLSerializer;->enterElementState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lmf/org/apache/xml/serialize/ElementState;

    move-result-object v5

    iget-object v7, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    invoke-virtual {v7, p1}, Lmf/org/apache/xml/serialize/OutputFormat;->isCDataElement(Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, v5, Lmf/org/apache/xml/serialize/ElementState;->doCData:Z

    iget-object v7, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    invoke-virtual {v7, p1}, Lmf/org/apache/xml/serialize/OutputFormat;->isNonEscapingElement(Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, v5, Lmf/org/apache/xml/serialize/ElementState;->unescaped:Z

    return-void

    :cond_3
    iget-boolean v7, v5, Lmf/org/apache/xml/serialize/ElementState;->empty:Z

    if-eqz v7, :cond_4

    iget-object v7, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const/16 v8, 0x3e

    invoke-virtual {v7, v8}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    :cond_4
    iget-boolean v7, v5, Lmf/org/apache/xml/serialize/ElementState;->inCData:Z

    if-eqz v7, :cond_5

    iget-object v7, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v8, "]]>"

    invoke-virtual {v7, v8}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    const/4 v7, 0x0

    iput-boolean v7, v5, Lmf/org/apache/xml/serialize/ElementState;->inCData:Z

    :cond_5
    iget-boolean v7, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_indenting:Z

    if-eqz v7, :cond_1

    iget-boolean v7, v5, Lmf/org/apache/xml/serialize/ElementState;->preserveSpace:Z

    if-nez v7, :cond_1

    iget-boolean v7, v5, Lmf/org/apache/xml/serialize/ElementState;->empty:Z

    if-nez v7, :cond_6

    iget-boolean v7, v5, Lmf/org/apache/xml/serialize/ElementState;->afterElement:Z

    if-nez v7, :cond_6

    iget-boolean v7, v5, Lmf/org/apache/xml/serialize/ElementState;->afterComment:Z

    if-eqz v7, :cond_1

    :cond_6
    iget-object v7, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v7}, Lmf/org/apache/xml/serialize/Printer;->breakLine()V

    goto :goto_0

    :cond_7
    iget-object v7, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v7}, Lmf/org/apache/xml/serialize/Printer;->printSpace()V

    invoke-interface {p2, v1}, Lorg/xml/sax/AttributeList;->getName(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v1}, Lorg/xml/sax/AttributeList;->getValue(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_8

    iget-object v7, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v7, v3}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v7, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v8, "=\""

    invoke-virtual {v7, v8}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Lmf/org/apache/xml/serialize/XMLSerializer;->printEscaped(Ljava/lang/String;)V

    iget-object v7, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const/16 v8, 0x22

    invoke-virtual {v7, v8}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    :cond_8
    const-string/jumbo v7, "xml:space"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    const-string/jumbo v7, "preserve"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    const/4 v4, 0x1

    :cond_9
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :cond_a
    iget-object v7, p0, Lmf/org/apache/xml/serialize/XMLSerializer;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    invoke-virtual {v7}, Lmf/org/apache/xml/serialize/OutputFormat;->getPreserveSpace()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v4

    goto :goto_2
.end method

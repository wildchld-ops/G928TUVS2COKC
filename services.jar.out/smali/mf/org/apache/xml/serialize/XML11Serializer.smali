.class public Lmf/org/apache/xml/serialize/XML11Serializer;
.super Lmf/org/apache/xml/serialize/XMLSerializer;
.source "XML11Serializer.java"


# static fields
.field protected static final DEBUG:Z = false

.field protected static final PREFIX:Ljava/lang/String; = "NS"


# instance fields
.field protected fDOML1:Z

.field protected fLocalNSBinder:Lmf/org/apache/xerces/util/NamespaceSupport;

.field protected fNSBinder:Lmf/org/apache/xerces/util/NamespaceSupport;

.field protected fNamespaceCounter:I

.field protected fNamespaces:Z

.field protected fSymbolTable:Lmf/org/apache/xerces/util/SymbolTable;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lmf/org/apache/xml/serialize/XMLSerializer;-><init>()V

    iput-boolean v1, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->fDOML1:Z

    const/4 v0, 0x1

    iput v0, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->fNamespaceCounter:I

    iput-boolean v1, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->fNamespaces:Z

    iget-object v0, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    const-string v1, "1.1"

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/OutputFormat;->setVersion(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Lmf/org/apache/xml/serialize/OutputFormat;)V
    .locals 3

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    :goto_0
    invoke-direct {p0, p1, p2}, Lmf/org/apache/xml/serialize/XMLSerializer;-><init>(Ljava/io/OutputStream;Lmf/org/apache/xml/serialize/OutputFormat;)V

    iput-boolean v2, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->fDOML1:Z

    const/4 v0, 0x1

    iput v0, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->fNamespaceCounter:I

    iput-boolean v2, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->fNamespaces:Z

    iget-object v0, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    const-string v1, "1.1"

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/OutputFormat;->setVersion(Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance p2, Lmf/org/apache/xml/serialize/OutputFormat;

    const-string/jumbo v0, "xml"

    const/4 v1, 0x0

    invoke-direct {p2, v0, v1, v2}, Lmf/org/apache/xml/serialize/OutputFormat;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public constructor <init>(Ljava/io/Writer;Lmf/org/apache/xml/serialize/OutputFormat;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Lmf/org/apache/xml/serialize/XMLSerializer;-><init>(Ljava/io/Writer;Lmf/org/apache/xml/serialize/OutputFormat;)V

    iput-boolean v1, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->fDOML1:Z

    const/4 v0, 0x1

    iput v0, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->fNamespaceCounter:I

    iput-boolean v1, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->fNamespaces:Z

    iget-object v0, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    const-string v1, "1.1"

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/OutputFormat;->setVersion(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xml/serialize/OutputFormat;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lmf/org/apache/xml/serialize/XMLSerializer;-><init>(Lmf/org/apache/xml/serialize/OutputFormat;)V

    iput-boolean v1, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->fDOML1:Z

    const/4 v0, 0x1

    iput v0, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->fNamespaceCounter:I

    iput-boolean v1, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->fNamespaces:Z

    iget-object v0, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    const-string v1, "1.1"

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/OutputFormat;->setVersion(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/16 v2, 0x5d

    :try_start_0
    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/XML11Serializer;->content()Lmf/org/apache/xml/serialize/ElementState;

    move-result-object v11

    iget-boolean v0, v11, Lmf/org/apache/xml/serialize/ElementState;->inCData:Z

    if-nez v0, :cond_0

    iget-boolean v0, v11, Lmf/org/apache/xml/serialize/ElementState;->doCData:Z

    if-eqz v0, :cond_7

    :cond_0
    iget-boolean v0, v11, Lmf/org/apache/xml/serialize/ElementState;->inCData:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v1, "<![CDATA["

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, v11, Lmf/org/apache/xml/serialize/ElementState;->inCData:Z

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v0}, Lmf/org/apache/xml/serialize/Printer;->getNextIndent()I

    move-result v10

    iget-object v0, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/Printer;->setNextIndent(I)V

    add-int v7, p2, p3

    move v9, p2

    :goto_0
    if-lt v9, v7, :cond_2

    iget-object v0, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v0, v10}, Lmf/org/apache/xml/serialize/Printer;->setNextIndent(I)V

    :goto_1
    return-void

    :cond_2
    aget-char v6, p1, v9

    if-ne v6, v2, :cond_3

    add-int/lit8 v0, v9, 0x2

    if-ge v0, v7, :cond_3

    add-int/lit8 v0, v9, 0x1

    aget-char v0, p1, v0

    if-ne v0, v2, :cond_3

    add-int/lit8 v0, v9, 0x2

    aget-char v0, p1, v0

    const/16 v1, 0x3e

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v1, "]]]]><![CDATA[>"

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    add-int/lit8 v9, v9, 0x2

    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_3
    invoke-static {v6}, Lmf/org/apache/xerces/util/XML11Char;->isXML11Valid(I)Z

    move-result v0

    if-nez v0, :cond_5

    add-int/lit8 v9, v9, 0x1

    if-ge v9, v7, :cond_4

    aget-char v0, p1, v9

    const/4 v1, 0x1

    invoke-virtual {p0, v6, v0, v1}, Lmf/org/apache/xml/serialize/XML11Serializer;->surrogates(IIZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v8

    new-instance v0, Lorg/xml/sax/SAXException;

    invoke-direct {v0, v8}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v0

    :cond_4
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "The character \'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' is an invalid XML character"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmf/org/apache/xml/serialize/XML11Serializer;->fatalError(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->_encodingInfo:Lmf/org/apache/xml/serialize/EncodingInfo;

    invoke-virtual {v0, v6}, Lmf/org/apache/xml/serialize/EncodingInfo;->isPrintable(C)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {v6}, Lmf/org/apache/xerces/util/XML11Char;->isXML11ValidLiteral(I)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v0, v6}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v1, "]]>&#x"

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v0, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v0, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v1, ";<![CDATA["

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    iget-boolean v0, v11, Lmf/org/apache/xml/serialize/ElementState;->preserveSpace:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v0}, Lmf/org/apache/xml/serialize/Printer;->getNextIndent()I

    move-result v10

    iget-object v0, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/Printer;->setNextIndent(I)V

    const/4 v4, 0x1

    iget-boolean v5, v11, Lmf/org/apache/xml/serialize/ElementState;->unescaped:Z

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lmf/org/apache/xml/serialize/XML11Serializer;->printText([CIIZZ)V

    iget-object v0, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v0, v10}, Lmf/org/apache/xml/serialize/Printer;->setNextIndent(I)V

    goto/16 :goto_1

    :cond_8
    const/4 v4, 0x0

    iget-boolean v5, v11, Lmf/org/apache/xml/serialize/ElementState;->unescaped:Z

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lmf/org/apache/xml/serialize/XML11Serializer;->printText([CIIZZ)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method protected final printCDATAText(Ljava/lang/String;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v9, 0x5d

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v9, :cond_3

    add-int/lit8 v5, v2, 0x2

    if-ge v5, v3, :cond_3

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v9, :cond_3

    add-int/lit8 v5, v2, 0x2

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x3e

    if-ne v5, v6, :cond_3

    iget-object v5, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->fDOMErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    if-eqz v5, :cond_2

    iget-short v5, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->features:S

    and-int/lit8 v5, v5, 0x10

    if-nez v5, :cond_1

    iget-short v5, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->features:S

    and-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_1

    const-string/jumbo v5, "http://apache.org/xml/serializer"

    const-string v6, "EndingCDATA"

    invoke-static {v5, v6, v7}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    iget-object v6, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->fCurrentNode:Lmf/org/w3c/dom/Node;

    invoke-virtual {p0, v4, v5, v7, v6}, Lmf/org/apache/xml/serialize/XML11Serializer;->modifyDOMError(Ljava/lang/String;SLjava/lang/String;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/DOMError;

    iget-object v5, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->fDOMErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    iget-object v6, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->fDOMError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    invoke-interface {v5, v6}, Lmf/org/w3c/dom/DOMErrorHandler;->handleError(Lmf/org/w3c/dom/DOMError;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v5, Ljava/io/IOException;

    invoke-direct {v5}, Ljava/io/IOException;-><init>()V

    throw v5

    :cond_1
    const-string/jumbo v5, "http://apache.org/xml/serializer"

    const-string v6, "SplittingCDATA"

    invoke-static {v5, v6, v7}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->fCurrentNode:Lmf/org/w3c/dom/Node;

    invoke-virtual {p0, v4, v8, v7, v5}, Lmf/org/apache/xml/serialize/XML11Serializer;->modifyDOMError(Ljava/lang/String;SLjava/lang/String;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/DOMError;

    iget-object v5, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->fDOMErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    iget-object v6, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->fDOMError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    invoke-interface {v5, v6}, Lmf/org/w3c/dom/DOMErrorHandler;->handleError(Lmf/org/w3c/dom/DOMError;)Z

    :cond_2
    iget-object v5, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v6, "]]]]><![CDATA[>"

    invoke-virtual {v5, v6}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x2

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    invoke-static {v0}, Lmf/org/apache/xerces/util/XML11Char;->isXML11Valid(I)Z

    move-result v5

    if-nez v5, :cond_5

    add-int/lit8 v2, v2, 0x1

    if-ge v2, v3, :cond_4

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {p0, v0, v5, v8}, Lmf/org/apache/xml/serialize/XML11Serializer;->surrogates(IIZ)V

    goto :goto_1

    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "The character \'"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' is an invalid XML character"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lmf/org/apache/xml/serialize/XML11Serializer;->fatalError(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    iget-object v5, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->_encodingInfo:Lmf/org/apache/xml/serialize/EncodingInfo;

    invoke-virtual {v5, v0}, Lmf/org/apache/xml/serialize/EncodingInfo;->isPrintable(C)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-static {v0}, Lmf/org/apache/xerces/util/XML11Char;->isXML11ValidLiteral(I)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v5, v0}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    goto :goto_1

    :cond_6
    iget-object v5, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v6, "]]>&#x"

    invoke-virtual {v5, v6}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v5, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v5, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v6, ";<![CDATA["

    invoke-virtual {v5, v6}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    goto :goto_1
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

    invoke-static {v0}, Lmf/org/apache/xerces/util/XML11Char;->isXML11Valid(I)Z

    move-result v3

    if-nez v3, :cond_2

    add-int/lit8 v1, v1, 0x1

    if-ge v1, v2, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p0, v0, v3, v4}, Lmf/org/apache/xml/serialize/XML11Serializer;->surrogates(IIZ)V

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

    invoke-virtual {p0, v3}, Lmf/org/apache/xml/serialize/XML11Serializer;->fatalError(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const/16 v3, 0xa

    if-eq v0, v3, :cond_3

    const/16 v3, 0xd

    if-eq v0, v3, :cond_3

    const/16 v3, 0x9

    if-eq v0, v3, :cond_3

    const/16 v3, 0x85

    if-eq v0, v3, :cond_3

    const/16 v3, 0x2028

    if-ne v0, v3, :cond_4

    :cond_3
    invoke-virtual {p0, v0}, Lmf/org/apache/xml/serialize/XML11Serializer;->printHex(I)V

    goto :goto_1

    :cond_4
    const/16 v3, 0x3c

    if-ne v0, v3, :cond_5

    iget-object v3, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v4, "&lt;"

    invoke-virtual {v3, v4}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const/16 v3, 0x26

    if-ne v0, v3, :cond_6

    iget-object v3, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v4, "&amp;"

    invoke-virtual {v3, v4}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    const/16 v3, 0x22

    if-ne v0, v3, :cond_7

    iget-object v3, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v4, "&quot;"

    invoke-virtual {v3, v4}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    const/16 v3, 0x20

    if-lt v0, v3, :cond_8

    iget-object v3, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->_encodingInfo:Lmf/org/apache/xml/serialize/EncodingInfo;

    int-to-char v4, v0

    invoke-virtual {v3, v4}, Lmf/org/apache/xml/serialize/EncodingInfo;->isPrintable(C)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    int-to-char v4, v0

    invoke-virtual {v3, v4}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    goto :goto_1

    :cond_8
    invoke-virtual {p0, v0}, Lmf/org/apache/xml/serialize/XML11Serializer;->printHex(I)V

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

    invoke-static {v0}, Lmf/org/apache/xerces/util/XML11Char;->isXML11Valid(I)Z

    move-result v3

    if-nez v3, :cond_3

    add-int/lit8 v1, v1, 0x1

    if-ge v1, v2, :cond_2

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {p0, v0, v3, v5}, Lmf/org/apache/xml/serialize/XML11Serializer;->surrogates(IIZ)V

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

    invoke-virtual {p0, v3}, Lmf/org/apache/xml/serialize/XML11Serializer;->fatalError(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    if-eqz p3, :cond_4

    invoke-static {v0}, Lmf/org/apache/xerces/util/XML11Char;->isXML11ValidLiteral(I)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v3, v0}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0, v0}, Lmf/org/apache/xml/serialize/XML11Serializer;->printXMLChar(I)V

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    :goto_2
    if-ge v1, v2, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lmf/org/apache/xerces/util/XML11Char;->isXML11Valid(I)Z

    move-result v3

    if-nez v3, :cond_7

    add-int/lit8 v1, v1, 0x1

    if-ge v1, v2, :cond_6

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {p0, v0, v3, v5}, Lmf/org/apache/xml/serialize/XML11Serializer;->surrogates(IIZ)V

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

    invoke-virtual {p0, v3}, Lmf/org/apache/xml/serialize/XML11Serializer;->fatalError(Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    if-eqz p3, :cond_8

    invoke-static {v0}, Lmf/org/apache/xerces/util/XML11Char;->isXML11ValidLiteral(I)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v3, v0}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    goto :goto_3

    :cond_8
    invoke-virtual {p0, v0}, Lmf/org/apache/xml/serialize/XML11Serializer;->printXMLChar(I)V

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

    invoke-static {v0}, Lmf/org/apache/xerces/util/XML11Char;->isXML11Valid(I)Z

    move-result v3

    if-nez v3, :cond_2

    add-int/lit8 v1, p3, -0x1

    if-lez p3, :cond_1

    add-int/lit8 v2, p2, 0x1

    aget-char v3, p1, p2

    invoke-virtual {p0, v0, v3, v5}, Lmf/org/apache/xml/serialize/XML11Serializer;->surrogates(IIZ)V

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

    invoke-virtual {p0, v3}, Lmf/org/apache/xml/serialize/XML11Serializer;->fatalError(Ljava/lang/String;)V

    move v2, p2

    goto :goto_0

    :cond_2
    if-eqz p5, :cond_3

    invoke-static {v0}, Lmf/org/apache/xerces/util/XML11Char;->isXML11ValidLiteral(I)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v3, v0}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    move v1, p3

    move v2, p2

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v0}, Lmf/org/apache/xml/serialize/XML11Serializer;->printXMLChar(I)V

    move v1, p3

    move v2, p2

    goto :goto_0

    :cond_4
    add-int/lit8 p2, v2, 0x1

    aget-char v0, p1, v2

    invoke-static {v0}, Lmf/org/apache/xerces/util/XML11Char;->isXML11Valid(I)Z

    move-result v3

    if-nez v3, :cond_6

    add-int/lit8 v1, p3, -0x1

    if-lez p3, :cond_5

    add-int/lit8 v2, p2, 0x1

    aget-char v3, p1, p2

    invoke-virtual {p0, v0, v3, v5}, Lmf/org/apache/xml/serialize/XML11Serializer;->surrogates(IIZ)V

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

    invoke-virtual {p0, v3}, Lmf/org/apache/xml/serialize/XML11Serializer;->fatalError(Ljava/lang/String;)V

    move v2, p2

    goto :goto_2

    :cond_6
    if-eqz p5, :cond_7

    invoke-static {v0}, Lmf/org/apache/xerces/util/XML11Char;->isXML11ValidLiteral(I)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v3, v0}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    move v1, p3

    move v2, p2

    goto :goto_2

    :cond_7
    invoke-virtual {p0, v0}, Lmf/org/apache/xml/serialize/XML11Serializer;->printXMLChar(I)V

    :cond_8
    move v1, p3

    move v2, p2

    goto :goto_2
.end method

.method protected final printXMLChar(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xd

    if-eq p1, v0, :cond_0

    const/16 v0, 0x85

    if-eq p1, v0, :cond_0

    const/16 v0, 0x2028

    if-ne p1, v0, :cond_1

    :cond_0
    invoke-virtual {p0, p1}, Lmf/org/apache/xml/serialize/XML11Serializer;->printHex(I)V

    :goto_0
    return-void

    :cond_1
    const/16 v0, 0x3c

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v1, "&lt;"

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/16 v0, 0x26

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v1, "&amp;"

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const/16 v0, 0x3e

    if-ne p1, v0, :cond_4

    iget-object v0, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v1, "&gt;"

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->_encodingInfo:Lmf/org/apache/xml/serialize/EncodingInfo;

    int-to-char v1, p1

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/EncodingInfo;->isPrintable(C)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {p1}, Lmf/org/apache/xerces/util/XML11Char;->isXML11ValidLiteral(I)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    int-to-char v1, p1

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    goto :goto_0

    :cond_5
    invoke-virtual {p0, p1}, Lmf/org/apache/xml/serialize/XML11Serializer;->printHex(I)V

    goto :goto_0
.end method

.method public reset()Z
    .locals 1

    invoke-super {p0}, Lmf/org/apache/xml/serialize/XMLSerializer;->reset()Z

    const/4 v0, 0x1

    return v0
.end method

.method protected final surrogates(IIZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lmf/org/apache/xerces/util/XMLChar;->isHighSurrogate(I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p2}, Lmf/org/apache/xerces/util/XMLChar;->isLowSurrogate(I)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The character \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-char v2, p2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' is an invalid XML character"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmf/org/apache/xml/serialize/XML11Serializer;->fatalError(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    int-to-char v1, p1

    int-to-char v2, p2

    invoke-static {v1, v2}, Lmf/org/apache/xerces/util/XMLChar;->supplemental(CC)I

    move-result v0

    invoke-static {v0}, Lmf/org/apache/xerces/util/XML11Char;->isXML11Valid(I)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The character \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-char v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' is an invalid XML character"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmf/org/apache/xml/serialize/XML11Serializer;->fatalError(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/XML11Serializer;->content()Lmf/org/apache/xml/serialize/ElementState;

    move-result-object v1

    iget-boolean v1, v1, Lmf/org/apache/xml/serialize/ElementState;->inCData:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v2, "]]>&#x"

    invoke-virtual {v1, v2}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v1, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v1, p0, Lmf/org/apache/xml/serialize/XML11Serializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v2, ";<![CDATA["

    invoke-virtual {v1, v2}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v0}, Lmf/org/apache/xml/serialize/XML11Serializer;->printHex(I)V

    goto :goto_0

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The character \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-char v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' is an invalid XML character"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lmf/org/apache/xml/serialize/XML11Serializer;->fatalError(Ljava/lang/String;)V

    goto :goto_0
.end method

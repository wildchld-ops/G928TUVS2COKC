.class public abstract Lmf/org/apache/xml/serialize/BaseMarkupSerializer;
.super Ljava/lang/Object;
.source "BaseMarkupSerializer.java"

# interfaces
.implements Lorg/xml/sax/ContentHandler;
.implements Lorg/xml/sax/DocumentHandler;
.implements Lorg/xml/sax/ext/LexicalHandler;
.implements Lorg/xml/sax/DTDHandler;
.implements Lorg/xml/sax/ext/DeclHandler;
.implements Lmf/org/apache/xml/serialize/DOMSerializer;
.implements Lmf/org/apache/xml/serialize/Serializer;


# instance fields
.field protected _docTypePublicId:Ljava/lang/String;

.field protected _docTypeSystemId:Ljava/lang/String;

.field private _elementStateCount:I

.field private _elementStates:[Lmf/org/apache/xml/serialize/ElementState;

.field protected _encodingInfo:Lmf/org/apache/xml/serialize/EncodingInfo;

.field protected _format:Lmf/org/apache/xml/serialize/OutputFormat;

.field protected _indenting:Z

.field private _output:Ljava/io/OutputStream;

.field private _preRoot:Ljava/util/Vector;

.field protected _prefixes:Ljava/util/Hashtable;

.field private _prepared:Z

.field protected _printer:Lmf/org/apache/xml/serialize/Printer;

.field protected _started:Z

.field private _writer:Ljava/io/Writer;

.field protected fCurrentNode:Lmf/org/w3c/dom/Node;

.field protected final fDOMError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

.field protected fDOMErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

.field protected fDOMFilter:Lmf/org/w3c/dom/ls/LSSerializerFilter;

.field protected final fStrBuffer:Ljava/lang/StringBuffer;

.field protected features:S


# direct methods
.method protected constructor <init>(Lmf/org/apache/xml/serialize/OutputFormat;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, -0x1

    iput-short v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->features:S

    new-instance v1, Lmf/org/apache/xerces/dom/DOMErrorImpl;

    invoke-direct {v1}, Lmf/org/apache/xerces/dom/DOMErrorImpl;-><init>()V

    iput-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fDOMError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    new-instance v1, Ljava/lang/StringBuffer;

    const/16 v2, 0x28

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    iput-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fStrBuffer:Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    iput-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fCurrentNode:Lmf/org/w3c/dom/Node;

    const/16 v1, 0xa

    new-array v1, v1, [Lmf/org/apache/xml/serialize/ElementState;

    iput-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_elementStates:[Lmf/org/apache/xml/serialize/ElementState;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_elementStates:[Lmf/org/apache/xml/serialize/ElementState;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    iput-object p1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    return-void

    :cond_0
    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_elementStates:[Lmf/org/apache/xml/serialize/ElementState;

    new-instance v2, Lmf/org/apache/xml/serialize/ElementState;

    invoke-direct {v2}, Lmf/org/apache/xml/serialize/ElementState;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public asContentHandler()Lorg/xml/sax/ContentHandler;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->prepare()V

    return-object p0
.end method

.method public asDOMSerializer()Lmf/org/apache/xml/serialize/DOMSerializer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->prepare()V

    return-object p0
.end method

.method public asDocumentHandler()Lorg/xml/sax/DocumentHandler;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->prepare()V

    return-object p0
.end method

.method public attributeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v1}, Lmf/org/apache/xml/serialize/Printer;->enterDTD()V

    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v2, "<!ATTLIST "

    invoke-virtual {v1, v2}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v1, p1}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v1, p2}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v1, p3}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    if-eqz p4, :cond_0

    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v1, p4}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    :cond_0
    if-eqz p5, :cond_1

    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v2, " \""

    invoke-virtual {v1, v2}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    invoke-virtual {p0, p5}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->printEscaped(Ljava/lang/String;)V

    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const/16 v2, 0x22

    invoke-virtual {v1, v2}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    :cond_1
    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const/16 v2, 0x3e

    invoke-virtual {v1, v2}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    iget-boolean v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_indenting:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v1}, Lmf/org/apache/xml/serialize/Printer;->breakLine()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method protected characters(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->content()Lmf/org/apache/xml/serialize/ElementState;

    move-result-object v1

    iget-boolean v2, v1, Lmf/org/apache/xml/serialize/ElementState;->inCData:Z

    if-nez v2, :cond_0

    iget-boolean v2, v1, Lmf/org/apache/xml/serialize/ElementState;->doCData:Z

    if-eqz v2, :cond_2

    :cond_0
    iget-boolean v2, v1, Lmf/org/apache/xml/serialize/ElementState;->inCData:Z

    if-nez v2, :cond_1

    iget-object v2, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v3, "<![CDATA["

    invoke-virtual {v2, v3}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iput-boolean v5, v1, Lmf/org/apache/xml/serialize/ElementState;->inCData:Z

    :cond_1
    iget-object v2, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v2}, Lmf/org/apache/xml/serialize/Printer;->getNextIndent()I

    move-result v0

    iget-object v2, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v2, v4}, Lmf/org/apache/xml/serialize/Printer;->setNextIndent(I)V

    invoke-virtual {p0, p1}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->printCDATAText(Ljava/lang/String;)V

    iget-object v2, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v2, v0}, Lmf/org/apache/xml/serialize/Printer;->setNextIndent(I)V

    :goto_0
    return-void

    :cond_2
    iget-boolean v2, v1, Lmf/org/apache/xml/serialize/ElementState;->preserveSpace:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v2}, Lmf/org/apache/xml/serialize/Printer;->getNextIndent()I

    move-result v0

    iget-object v2, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v2, v4}, Lmf/org/apache/xml/serialize/Printer;->setNextIndent(I)V

    iget-boolean v2, v1, Lmf/org/apache/xml/serialize/ElementState;->unescaped:Z

    invoke-virtual {p0, p1, v5, v2}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->printText(Ljava/lang/String;ZZ)V

    iget-object v2, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v2, v0}, Lmf/org/apache/xml/serialize/Printer;->setNextIndent(I)V

    goto :goto_0

    :cond_3
    iget-boolean v2, v1, Lmf/org/apache/xml/serialize/ElementState;->unescaped:Z

    invoke-virtual {p0, p1, v4, v2}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->printText(Ljava/lang/String;ZZ)V

    goto :goto_0
.end method

.method public characters([CII)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/16 v2, 0x5d

    :try_start_0
    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->content()Lmf/org/apache/xml/serialize/ElementState;

    move-result-object v11

    iget-boolean v0, v11, Lmf/org/apache/xml/serialize/ElementState;->inCData:Z

    if-nez v0, :cond_0

    iget-boolean v0, v11, Lmf/org/apache/xml/serialize/ElementState;->doCData:Z

    if-eqz v0, :cond_9

    :cond_0
    iget-boolean v0, v11, Lmf/org/apache/xml/serialize/ElementState;->inCData:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v1, "<![CDATA["

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, v11, Lmf/org/apache/xml/serialize/ElementState;->inCData:Z

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v0}, Lmf/org/apache/xml/serialize/Printer;->getNextIndent()I

    move-result v10

    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/Printer;->setNextIndent(I)V

    add-int v7, p2, p3

    move v9, p2

    :goto_0
    if-lt v9, v7, :cond_2

    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

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

    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v1, "]]]]><![CDATA[>"

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    add-int/lit8 v9, v9, 0x2

    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_3
    invoke-static {v6}, Lmf/org/apache/xerces/util/XMLChar;->isValid(I)Z

    move-result v0

    if-nez v0, :cond_5

    add-int/lit8 v9, v9, 0x1

    if-ge v9, v7, :cond_4

    aget-char v0, p1, v9

    const/4 v1, 0x1

    invoke-virtual {p0, v6, v0, v1}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->surrogates(IIZ)V
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

    invoke-virtual {p0, v0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fatalError(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    const/16 v0, 0x20

    if-lt v6, v0, :cond_6

    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_encodingInfo:Lmf/org/apache/xml/serialize/EncodingInfo;

    invoke-virtual {v0, v6}, Lmf/org/apache/xml/serialize/EncodingInfo;->isPrintable(C)Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v0, 0x7f

    if-ne v6, v0, :cond_7

    :cond_6
    const/16 v0, 0xa

    if-eq v6, v0, :cond_7

    const/16 v0, 0xd

    if-eq v6, v0, :cond_7

    const/16 v0, 0x9

    if-ne v6, v0, :cond_8

    :cond_7
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v0, v6}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    goto :goto_2

    :cond_8
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v1, "]]>&#x"

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v1, ";<![CDATA["

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    goto :goto_2

    :cond_9
    iget-boolean v0, v11, Lmf/org/apache/xml/serialize/ElementState;->preserveSpace:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v0}, Lmf/org/apache/xml/serialize/Printer;->getNextIndent()I

    move-result v10

    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/Printer;->setNextIndent(I)V

    const/4 v4, 0x1

    iget-boolean v5, v11, Lmf/org/apache/xml/serialize/ElementState;->unescaped:Z

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->printText([CIIZZ)V

    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v0, v10}, Lmf/org/apache/xml/serialize/Printer;->setNextIndent(I)V

    goto/16 :goto_1

    :cond_a
    const/4 v4, 0x0

    iget-boolean v5, v11, Lmf/org/apache/xml/serialize/ElementState;->unescaped:Z

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->printText([CIIZZ)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method protected checkUnboundNamespacePrefixedNode(Lmf/org/w3c/dom/Node;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method protected cleanup()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fCurrentNode:Lmf/org/w3c/dom/Node;

    return-void
.end method

.method final clearDocumentState()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_elementStateCount:I

    return-void
.end method

.method public comment(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-object v2, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    invoke-virtual {v2}, Lmf/org/apache/xml/serialize/OutputFormat;->getOmitComments()Z

    move-result v2

    if-eqz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->content()Lmf/org/apache/xml/serialize/ElementState;

    move-result-object v1

    const-string v2, "-->"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_3

    iget-object v2, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fStrBuffer:Ljava/lang/StringBuffer;

    const-string v3, "<!--"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p1, v5, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "-->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->isDocumentState()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_preRoot:Ljava/util/Vector;

    if-nez v2, :cond_1

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_preRoot:Ljava/util/Vector;

    :cond_1
    iget-object v2, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_preRoot:Ljava/util/Vector;

    iget-object v3, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fStrBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_2
    :goto_2
    iget-object v2, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fStrBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->setLength(I)V

    iput-boolean v4, v1, Lmf/org/apache/xml/serialize/ElementState;->afterComment:Z

    iput-boolean v5, v1, Lmf/org/apache/xml/serialize/ElementState;->afterElement:Z

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fStrBuffer:Ljava/lang/StringBuffer;

    const-string v3, "<!--"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "-->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_4
    iget-boolean v2, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_indenting:Z

    if-eqz v2, :cond_5

    iget-boolean v2, v1, Lmf/org/apache/xml/serialize/ElementState;->preserveSpace:Z

    if-nez v2, :cond_5

    iget-object v2, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v2}, Lmf/org/apache/xml/serialize/Printer;->breakLine()V

    :cond_5
    iget-object v2, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v2}, Lmf/org/apache/xml/serialize/Printer;->indent()V

    iget-object v2, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fStrBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v4, v4}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->printText(Ljava/lang/String;ZZ)V

    iget-object v2, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v2}, Lmf/org/apache/xml/serialize/Printer;->unindent()V

    iget-boolean v2, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_indenting:Z

    if-eqz v2, :cond_2

    iput-boolean v4, v1, Lmf/org/apache/xml/serialize/ElementState;->afterElement:Z

    goto :goto_2
.end method

.method public comment([CII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    :try_start_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p0, v1}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->comment(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method protected content()Lmf/org/apache/xml/serialize/ElementState;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->getElementState()Lmf/org/apache/xml/serialize/ElementState;

    move-result-object v0

    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->isDocumentState()Z

    move-result v1

    if-nez v1, :cond_2

    iget-boolean v1, v0, Lmf/org/apache/xml/serialize/ElementState;->inCData:Z

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Lmf/org/apache/xml/serialize/ElementState;->doCData:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v2, "]]>"

    invoke-virtual {v1, v2}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iput-boolean v3, v0, Lmf/org/apache/xml/serialize/ElementState;->inCData:Z

    :cond_0
    iget-boolean v1, v0, Lmf/org/apache/xml/serialize/ElementState;->empty:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const/16 v2, 0x3e

    invoke-virtual {v1, v2}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    iput-boolean v3, v0, Lmf/org/apache/xml/serialize/ElementState;->empty:Z

    :cond_1
    iput-boolean v3, v0, Lmf/org/apache/xml/serialize/ElementState;->afterElement:Z

    iput-boolean v3, v0, Lmf/org/apache/xml/serialize/ElementState;->afterComment:Z

    :cond_2
    return-object v0
.end method

.method public elementDecl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v1}, Lmf/org/apache/xml/serialize/Printer;->enterDTD()V

    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v2, "<!ELEMENT "

    invoke-virtual {v1, v2}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v1, p1}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v1, p2}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const/16 v2, 0x3e

    invoke-virtual {v1, v2}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    iget-boolean v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_indenting:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v1}, Lmf/org/apache/xml/serialize/Printer;->breakLine()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public endCDATA()V
    .locals 2

    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->getElementState()Lmf/org/apache/xml/serialize/ElementState;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lmf/org/apache/xml/serialize/ElementState;->doCData:Z

    return-void
.end method

.method public endDTD()V
    .locals 0

    return-void
.end method

.method public endDocument()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->serializePreRoot()V

    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v1}, Lmf/org/apache/xml/serialize/Printer;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public endEntity(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public endNonEscaping()V
    .locals 2

    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->getElementState()Lmf/org/apache/xml/serialize/ElementState;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lmf/org/apache/xml/serialize/ElementState;->unescaped:Z

    return-void
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

.method public endPreserving()V
    .locals 2

    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->getElementState()Lmf/org/apache/xml/serialize/ElementState;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lmf/org/apache/xml/serialize/ElementState;->preserveSpace:Z

    return-void
.end method

.method protected enterElementState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lmf/org/apache/xml/serialize/ElementState;
    .locals 6

    const/4 v5, 0x0

    iget v3, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_elementStateCount:I

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_elementStates:[Lmf/org/apache/xml/serialize/ElementState;

    array-length v4, v4

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_elementStates:[Lmf/org/apache/xml/serialize/ElementState;

    array-length v3, v3

    add-int/lit8 v3, v3, 0xa

    new-array v1, v3, [Lmf/org/apache/xml/serialize/ElementState;

    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_elementStates:[Lmf/org/apache/xml/serialize/ElementState;

    array-length v3, v3

    if-lt v0, v3, :cond_1

    iget-object v3, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_elementStates:[Lmf/org/apache/xml/serialize/ElementState;

    array-length v0, v3

    :goto_1
    array-length v3, v1

    if-lt v0, v3, :cond_2

    iput-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_elementStates:[Lmf/org/apache/xml/serialize/ElementState;

    :cond_0
    iget v3, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_elementStateCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_elementStateCount:I

    iget-object v3, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_elementStates:[Lmf/org/apache/xml/serialize/ElementState;

    iget v4, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_elementStateCount:I

    aget-object v2, v3, v4

    iput-object p1, v2, Lmf/org/apache/xml/serialize/ElementState;->namespaceURI:Ljava/lang/String;

    iput-object p2, v2, Lmf/org/apache/xml/serialize/ElementState;->localName:Ljava/lang/String;

    iput-object p3, v2, Lmf/org/apache/xml/serialize/ElementState;->rawName:Ljava/lang/String;

    iput-boolean p4, v2, Lmf/org/apache/xml/serialize/ElementState;->preserveSpace:Z

    const/4 v3, 0x1

    iput-boolean v3, v2, Lmf/org/apache/xml/serialize/ElementState;->empty:Z

    iput-boolean v5, v2, Lmf/org/apache/xml/serialize/ElementState;->afterElement:Z

    iput-boolean v5, v2, Lmf/org/apache/xml/serialize/ElementState;->afterComment:Z

    iput-boolean v5, v2, Lmf/org/apache/xml/serialize/ElementState;->inCData:Z

    iput-boolean v5, v2, Lmf/org/apache/xml/serialize/ElementState;->doCData:Z

    iput-boolean v5, v2, Lmf/org/apache/xml/serialize/ElementState;->unescaped:Z

    iget-object v3, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_prefixes:Ljava/util/Hashtable;

    iput-object v3, v2, Lmf/org/apache/xml/serialize/ElementState;->prefixes:Ljava/util/Hashtable;

    const/4 v3, 0x0

    iput-object v3, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_prefixes:Ljava/util/Hashtable;

    return-object v2

    :cond_1
    iget-object v3, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_elementStates:[Lmf/org/apache/xml/serialize/ElementState;

    aget-object v3, v3, v0

    aput-object v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    new-instance v3, Lmf/org/apache/xml/serialize/ElementState;

    invoke-direct {v3}, Lmf/org/apache/xml/serialize/ElementState;-><init>()V

    aput-object v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public externalEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v1}, Lmf/org/apache/xml/serialize/Printer;->enterDTD()V

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, p3, v1}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->unparsedEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method protected fatalError(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fDOMErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    const/4 v1, 0x0

    iget-object v2, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fCurrentNode:Lmf/org/w3c/dom/Node;

    invoke-virtual {p0, p1, v0, v1, v2}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->modifyDOMError(Ljava/lang/String;SLjava/lang/String;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/DOMError;

    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fDOMErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fDOMError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    invoke-interface {v0, v1}, Lmf/org/w3c/dom/DOMErrorHandler;->handleError(Lmf/org/w3c/dom/DOMError;)Z

    return-void

    :cond_0
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected getElementState()Lmf/org/apache/xml/serialize/ElementState;
    .locals 2

    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_elementStates:[Lmf/org/apache/xml/serialize/ElementState;

    iget v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_elementStateCount:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method protected abstract getEntityRef(I)Ljava/lang/String;
.end method

.method protected getPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v2, 0x0

    iget-object v3, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_prefixes:Ljava/util/Hashtable;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_prefixes:Ljava/util/Hashtable;

    invoke-virtual {v3, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    iget v3, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_elementStateCount:I

    if-nez v3, :cond_2

    move-object v1, v2

    goto :goto_0

    :cond_2
    iget v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_elementStateCount:I

    :goto_1
    if-gtz v0, :cond_3

    move-object v1, v2

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_elementStates:[Lmf/org/apache/xml/serialize/ElementState;

    aget-object v3, v3, v0

    iget-object v3, v3, Lmf/org/apache/xml/serialize/ElementState;->prefixes:Ljava/util/Hashtable;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_elementStates:[Lmf/org/apache/xml/serialize/ElementState;

    aget-object v3, v3, v0

    iget-object v3, v3, Lmf/org/apache/xml/serialize/ElementState;->prefixes:Ljava/util/Hashtable;

    invoke-virtual {v3, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_0

    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method public ignorableWhitespace([CII)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->content()Lmf/org/apache/xml/serialize/ElementState;

    iget-boolean v3, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_indenting:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lmf/org/apache/xml/serialize/Printer;->setThisIndent(I)V

    move v1, p2

    move v2, p3

    :goto_0
    add-int/lit8 p3, v2, -0x1

    if-gtz v2, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v3, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    aget-char v4, p1, v1

    invoke-virtual {v3, v4}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    move v2, p3

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v3, Lorg/xml/sax/SAXException;

    invoke-direct {v3, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v3
.end method

.method public internalEntityDecl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v1}, Lmf/org/apache/xml/serialize/Printer;->enterDTD()V

    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v2, "<!ENTITY "

    invoke-virtual {v1, v2}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v1, p1}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v2, " \""

    invoke-virtual {v1, v2}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->printEscaped(Ljava/lang/String;)V

    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v2, "\">"

    invoke-virtual {v1, v2}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-boolean v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_indenting:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v1}, Lmf/org/apache/xml/serialize/Printer;->breakLine()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method protected isDocumentState()Z
    .locals 1

    iget v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_elementStateCount:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected leaveElementState()Lmf/org/apache/xml/serialize/ElementState;
    .locals 4

    const/4 v3, 0x0

    iget v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_elementStateCount:I

    if-lez v1, :cond_0

    iput-object v3, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_prefixes:Ljava/util/Hashtable;

    iget v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_elementStateCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_elementStateCount:I

    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_elementStates:[Lmf/org/apache/xml/serialize/ElementState;

    iget v2, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_elementStateCount:I

    aget-object v1, v1, v2

    return-object v1

    :cond_0
    const-string/jumbo v1, "http://apache.org/xml/serializer"

    const-string v2, "Internal"

    invoke-static {v1, v2, v3}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected modifyDOMError(Ljava/lang/String;SLjava/lang/String;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/DOMError;
    .locals 7

    const/4 v1, -0x1

    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fDOMError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    invoke-virtual {v0}, Lmf/org/apache/xerces/dom/DOMErrorImpl;->reset()V

    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fDOMError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    iput-object p1, v0, Lmf/org/apache/xerces/dom/DOMErrorImpl;->fMessage:Ljava/lang/String;

    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fDOMError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    iput-object p3, v0, Lmf/org/apache/xerces/dom/DOMErrorImpl;->fType:Ljava/lang/String;

    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fDOMError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    iput-short p2, v0, Lmf/org/apache/xerces/dom/DOMErrorImpl;->fSeverity:S

    iget-object v6, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fDOMError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    new-instance v0, Lmf/org/apache/xerces/dom/DOMLocatorImpl;

    const/4 v5, 0x0

    move v2, v1

    move v3, v1

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lmf/org/apache/xerces/dom/DOMLocatorImpl;-><init>(IIILmf/org/w3c/dom/Node;Ljava/lang/String;)V

    iput-object v0, v6, Lmf/org/apache/xerces/dom/DOMErrorImpl;->fLocator:Lmf/org/apache/xerces/dom/DOMLocatorImpl;

    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fDOMError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    return-object v0
.end method

.method public notationDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v1}, Lmf/org/apache/xml/serialize/Printer;->enterDTD()V

    if-eqz p2, :cond_2

    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v2, "<!NOTATION "

    invoke-virtual {v1, v2}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v1, p1}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v2, " PUBLIC "

    invoke-virtual {v1, v2}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->printDoctypeURL(Ljava/lang/String;)V

    if-eqz p3, :cond_0

    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    invoke-virtual {p0, p3}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->printDoctypeURL(Ljava/lang/String;)V

    :cond_0
    :goto_0
    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const/16 v2, 0x3e

    invoke-virtual {v1, v2}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    iget-boolean v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_indenting:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v1}, Lmf/org/apache/xml/serialize/Printer;->breakLine()V

    :cond_1
    return-void

    :cond_2
    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v2, "<!NOTATION "

    invoke-virtual {v1, v2}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v1, p1}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v2, " SYSTEM "

    invoke-virtual {v1, v2}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->printDoctypeURL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method protected prepare()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    iget-boolean v2, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_prepared:Z

    if-eqz v2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_writer:Ljava/io/Writer;

    if-nez v2, :cond_1

    iget-object v2, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_output:Ljava/io/OutputStream;

    if-nez v2, :cond_1

    const-string/jumbo v2, "http://apache.org/xml/serializer"

    const-string v3, "NoWriterSupplied"

    invoke-static {v2, v3, v6}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    iget-object v2, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    invoke-virtual {v2}, Lmf/org/apache/xml/serialize/OutputFormat;->getEncodingInfo()Lmf/org/apache/xml/serialize/EncodingInfo;

    move-result-object v2

    iput-object v2, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_encodingInfo:Lmf/org/apache/xml/serialize/EncodingInfo;

    iget-object v2, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_output:Ljava/io/OutputStream;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_encodingInfo:Lmf/org/apache/xml/serialize/EncodingInfo;

    iget-object v3, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_output:Ljava/io/OutputStream;

    invoke-virtual {v2, v3}, Lmf/org/apache/xml/serialize/EncodingInfo;->getWriter(Ljava/io/OutputStream;)Ljava/io/Writer;

    move-result-object v2

    iput-object v2, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_writer:Ljava/io/Writer;

    :cond_2
    iget-object v2, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    invoke-virtual {v2}, Lmf/org/apache/xml/serialize/OutputFormat;->getIndenting()Z

    move-result v2

    if-eqz v2, :cond_3

    iput-boolean v7, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_indenting:Z

    new-instance v2, Lmf/org/apache/xml/serialize/IndentPrinter;

    iget-object v3, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_writer:Ljava/io/Writer;

    iget-object v4, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    invoke-direct {v2, v3, v4}, Lmf/org/apache/xml/serialize/IndentPrinter;-><init>(Ljava/io/Writer;Lmf/org/apache/xml/serialize/OutputFormat;)V

    iput-object v2, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    :goto_1
    iput v5, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_elementStateCount:I

    iget-object v2, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_elementStates:[Lmf/org/apache/xml/serialize/ElementState;

    aget-object v1, v2, v5

    iput-object v6, v1, Lmf/org/apache/xml/serialize/ElementState;->namespaceURI:Ljava/lang/String;

    iput-object v6, v1, Lmf/org/apache/xml/serialize/ElementState;->localName:Ljava/lang/String;

    iput-object v6, v1, Lmf/org/apache/xml/serialize/ElementState;->rawName:Ljava/lang/String;

    iget-object v2, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    invoke-virtual {v2}, Lmf/org/apache/xml/serialize/OutputFormat;->getPreserveSpace()Z

    move-result v2

    iput-boolean v2, v1, Lmf/org/apache/xml/serialize/ElementState;->preserveSpace:Z

    iput-boolean v7, v1, Lmf/org/apache/xml/serialize/ElementState;->empty:Z

    iput-boolean v5, v1, Lmf/org/apache/xml/serialize/ElementState;->afterElement:Z

    iput-boolean v5, v1, Lmf/org/apache/xml/serialize/ElementState;->afterComment:Z

    iput-boolean v5, v1, Lmf/org/apache/xml/serialize/ElementState;->inCData:Z

    iput-boolean v5, v1, Lmf/org/apache/xml/serialize/ElementState;->doCData:Z

    iput-object v6, v1, Lmf/org/apache/xml/serialize/ElementState;->prefixes:Ljava/util/Hashtable;

    iget-object v2, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    invoke-virtual {v2}, Lmf/org/apache/xml/serialize/OutputFormat;->getDoctypePublic()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_docTypePublicId:Ljava/lang/String;

    iget-object v2, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    invoke-virtual {v2}, Lmf/org/apache/xml/serialize/OutputFormat;->getDoctypeSystem()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_docTypeSystemId:Ljava/lang/String;

    iput-boolean v5, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_started:Z

    iput-boolean v7, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_prepared:Z

    goto :goto_0

    :cond_3
    iput-boolean v5, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_indenting:Z

    new-instance v2, Lmf/org/apache/xml/serialize/Printer;

    iget-object v3, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_writer:Ljava/io/Writer;

    iget-object v4, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    invoke-direct {v2, v3, v4}, Lmf/org/apache/xml/serialize/Printer;-><init>(Ljava/io/Writer;Lmf/org/apache/xml/serialize/OutputFormat;)V

    iput-object v2, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    goto :goto_1
.end method

.method protected printCDATAText(Ljava/lang/String;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v10, 0x5d

    const/16 v9, 0x52

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v10, :cond_4

    add-int/lit8 v4, v1, 0x2

    if-ge v4, v2, :cond_4

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v10, :cond_4

    add-int/lit8 v4, v1, 0x2

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x3e

    if-ne v4, v5, :cond_4

    iget-object v4, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fDOMErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    if-eqz v4, :cond_3

    iget-short v4, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->features:S

    and-int/lit8 v4, v4, 0x10

    if-nez v4, :cond_2

    const-string/jumbo v4, "http://apache.org/xml/serializer"

    const-string v5, "EndingCDATA"

    invoke-static {v4, v5, v7}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-short v4, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->features:S

    and-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_1

    const/4 v4, 0x3

    const-string/jumbo v5, "wf-invalid-character"

    iget-object v6, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fCurrentNode:Lmf/org/w3c/dom/Node;

    invoke-virtual {p0, v3, v4, v5, v6}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->modifyDOMError(Ljava/lang/String;SLjava/lang/String;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/DOMError;

    iget-object v4, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fDOMErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    iget-object v5, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fDOMError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    invoke-interface {v4, v5}, Lmf/org/w3c/dom/DOMErrorHandler;->handleError(Lmf/org/w3c/dom/DOMError;)Z

    new-instance v4, Lmf/org/w3c/dom/ls/LSException;

    invoke-direct {v4, v9, v3}, Lmf/org/w3c/dom/ls/LSException;-><init>(SLjava/lang/String;)V

    throw v4

    :cond_1
    const/4 v4, 0x2

    const-string v5, "cdata-section-not-splitted"

    iget-object v6, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fCurrentNode:Lmf/org/w3c/dom/Node;

    invoke-virtual {p0, v3, v4, v5, v6}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->modifyDOMError(Ljava/lang/String;SLjava/lang/String;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/DOMError;

    iget-object v4, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fDOMErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    iget-object v5, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fDOMError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    invoke-interface {v4, v5}, Lmf/org/w3c/dom/DOMErrorHandler;->handleError(Lmf/org/w3c/dom/DOMError;)Z

    move-result v4

    if-nez v4, :cond_3

    new-instance v4, Lmf/org/w3c/dom/ls/LSException;

    invoke-direct {v4, v9, v3}, Lmf/org/w3c/dom/ls/LSException;-><init>(SLjava/lang/String;)V

    throw v4

    :cond_2
    const-string/jumbo v4, "http://apache.org/xml/serializer"

    const-string v5, "SplittingCDATA"

    invoke-static {v4, v5, v7}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fCurrentNode:Lmf/org/w3c/dom/Node;

    invoke-virtual {p0, v3, v8, v7, v4}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->modifyDOMError(Ljava/lang/String;SLjava/lang/String;Lmf/org/w3c/dom/Node;)Lmf/org/w3c/dom/DOMError;

    iget-object v4, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fDOMErrorHandler:Lmf/org/w3c/dom/DOMErrorHandler;

    iget-object v5, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fDOMError:Lmf/org/apache/xerces/dom/DOMErrorImpl;

    invoke-interface {v4, v5}, Lmf/org/w3c/dom/DOMErrorHandler;->handleError(Lmf/org/w3c/dom/DOMError;)Z

    :cond_3
    iget-object v4, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v5, "]]]]><![CDATA[>"

    invoke-virtual {v4, v5}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x2

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_4
    invoke-static {v0}, Lmf/org/apache/xerces/util/XMLChar;->isValid(I)Z

    move-result v4

    if-nez v4, :cond_6

    add-int/lit8 v1, v1, 0x1

    if-ge v1, v2, :cond_5

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {p0, v0, v4, v8}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->surrogates(IIZ)V

    goto :goto_1

    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "The character \'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' is an invalid XML character"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fatalError(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    const/16 v4, 0x20

    if-lt v0, v4, :cond_7

    iget-object v4, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_encodingInfo:Lmf/org/apache/xml/serialize/EncodingInfo;

    invoke-virtual {v4, v0}, Lmf/org/apache/xml/serialize/EncodingInfo;->isPrintable(C)Z

    move-result v4

    if-eqz v4, :cond_7

    const/16 v4, 0x7f

    if-ne v0, v4, :cond_8

    :cond_7
    const/16 v4, 0xa

    if-eq v0, v4, :cond_8

    const/16 v4, 0xd

    if-eq v0, v4, :cond_8

    const/16 v4, 0x9

    if-ne v0, v4, :cond_9

    :cond_8
    iget-object v4, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v4, v0}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    goto :goto_1

    :cond_9
    iget-object v4, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v5, "]]>&#x"

    invoke-virtual {v4, v5}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v4, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v4, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v5, ";<![CDATA["

    invoke-virtual {v4, v5}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected printDoctypeURL(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v3, 0x22

    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v1, v3}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v1, v3}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    return-void

    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v3, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x20

    if-lt v1, v2, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x7f

    if-le v1, v2, :cond_2

    :cond_1
    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const/16 v2, 0x25

    invoke-virtual {v1, v2}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    goto :goto_1
.end method

.method protected printEscaped(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/high16 v4, 0x10000

    invoke-virtual {p0, p1}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->getEntityRef(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const/16 v2, 0x26

    invoke-virtual {v1, v2}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v1, v0}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const/16 v2, 0x3b

    invoke-virtual {v1, v2}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    :goto_0
    return-void

    :cond_0
    const/16 v1, 0x20

    if-lt p1, v1, :cond_1

    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_encodingInfo:Lmf/org/apache/xml/serialize/EncodingInfo;

    int-to-char v2, p1

    invoke-virtual {v1, v2}, Lmf/org/apache/xml/serialize/EncodingInfo;->isPrintable(C)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x7f

    if-ne p1, v1, :cond_2

    :cond_1
    const/16 v1, 0xa

    if-eq p1, v1, :cond_2

    const/16 v1, 0xd

    if-eq p1, v1, :cond_2

    const/16 v1, 0x9

    if-ne p1, v1, :cond_4

    :cond_2
    if-ge p1, v4, :cond_3

    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    int-to-char v2, p1

    invoke-virtual {v1, v2}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    sub-int v2, p1, v4

    shr-int/lit8 v2, v2, 0xa

    const v3, 0xd800

    add-int/2addr v2, v3

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    sub-int v2, p1, v4

    and-int/lit16 v2, v2, 0x3ff

    const v3, 0xdc00

    add-int/2addr v2, v3

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0, p1}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->printHex(I)V

    goto :goto_0
.end method

.method protected printEscaped(Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const v7, 0xfc00

    const v6, 0xdc00

    const v5, 0xd800

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v1, v3, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    and-int v3, v0, v7

    if-ne v3, v5, :cond_1

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_1

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    and-int v3, v2, v7

    if-ne v3, v6, :cond_1

    const/high16 v3, 0x10000

    sub-int v4, v0, v5

    shl-int/lit8 v4, v4, 0xa

    add-int/2addr v3, v4

    add-int/2addr v3, v2

    sub-int v0, v3, v6

    add-int/lit8 v1, v1, 0x1

    :cond_1
    invoke-virtual {p0, v0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->printEscaped(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method final printHex(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v1, "&#x"

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const/16 v1, 0x3b

    invoke-virtual {v0, v1}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    return-void
.end method

.method protected printText(Ljava/lang/String;ZZ)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v4, 0xd

    const/16 v3, 0xa

    if-eqz p2, :cond_4

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lt v1, v2, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v0, v3, :cond_2

    if-eq v0, v4, :cond_2

    if-eqz p3, :cond_3

    :cond_2
    iget-object v2, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v2, v0}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->printEscaped(I)V

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x20

    if-eq v0, v2, :cond_5

    const/16 v2, 0xc

    if-eq v0, v2, :cond_5

    const/16 v2, 0x9

    if-eq v0, v2, :cond_5

    if-eq v0, v3, :cond_5

    if-ne v0, v4, :cond_6

    :cond_5
    iget-object v2, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v2}, Lmf/org/apache/xml/serialize/Printer;->printSpace()V

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    if-eqz p3, :cond_7

    iget-object v2, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v2, v0}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    goto :goto_3

    :cond_7
    invoke-virtual {p0, v0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->printEscaped(I)V

    goto :goto_3
.end method

.method protected printText([CIIZZ)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v4, 0xd

    const/16 v3, 0xa

    if-eqz p4, :cond_7

    move v1, p3

    :goto_0
    add-int/lit8 p3, v1, -0x1

    if-gtz v1, :cond_0

    :goto_1
    return-void

    :cond_0
    aget-char v0, p1, p2

    add-int/lit8 p2, p2, 0x1

    if-eq v0, v3, :cond_1

    if-eq v0, v4, :cond_1

    if-eqz p5, :cond_2

    :cond_1
    iget-object v2, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v2, v0}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    move v1, p3

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->printEscaped(I)V

    move v1, p3

    goto :goto_0

    :cond_3
    aget-char v0, p1, p2

    add-int/lit8 p2, p2, 0x1

    const/16 v2, 0x20

    if-eq v0, v2, :cond_4

    const/16 v2, 0xc

    if-eq v0, v2, :cond_4

    const/16 v2, 0x9

    if-eq v0, v2, :cond_4

    if-eq v0, v3, :cond_4

    if-ne v0, v4, :cond_5

    :cond_4
    iget-object v2, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v2}, Lmf/org/apache/xml/serialize/Printer;->printSpace()V

    move v1, p3

    :goto_2
    add-int/lit8 p3, v1, -0x1

    if-gtz v1, :cond_3

    goto :goto_1

    :cond_5
    if-eqz p5, :cond_6

    iget-object v2, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v2, v0}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    move v1, p3

    goto :goto_2

    :cond_6
    invoke-virtual {p0, v0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->printEscaped(I)V

    :cond_7
    move v1, p3

    goto :goto_2
.end method

.method public final processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->processingInstructionIO(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public processingInstructionIO(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->content()Lmf/org/apache/xml/serialize/ElementState;

    move-result-object v1

    const-string v2, "?>"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_3

    iget-object v2, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fStrBuffer:Ljava/lang/StringBuffer;

    const-string v3, "<?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    if-eqz p2, :cond_0

    iget-object v2, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fStrBuffer:Ljava/lang/StringBuffer;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string v2, "?>"

    invoke-virtual {p2, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_4

    iget-object v2, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fStrBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {p2, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    :goto_1
    iget-object v2, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fStrBuffer:Ljava/lang/StringBuffer;

    const-string v3, "?>"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->isDocumentState()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_preRoot:Ljava/util/Vector;

    if-nez v2, :cond_1

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_preRoot:Ljava/util/Vector;

    :cond_1
    iget-object v2, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_preRoot:Ljava/util/Vector;

    iget-object v3, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fStrBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_2
    :goto_2
    iget-object v2, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fStrBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->setLength(I)V

    return-void

    :cond_3
    iget-object v2, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fStrBuffer:Ljava/lang/StringBuffer;

    const-string v3, "<?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fStrBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v2}, Lmf/org/apache/xml/serialize/Printer;->indent()V

    iget-object v2, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fStrBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v5, v5}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->printText(Ljava/lang/String;ZZ)V

    iget-object v2, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v2}, Lmf/org/apache/xml/serialize/Printer;->unindent()V

    iget-boolean v2, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_indenting:Z

    if-eqz v2, :cond_2

    iput-boolean v5, v1, Lmf/org/apache/xml/serialize/ElementState;->afterElement:Z

    goto :goto_2
.end method

.method public reset()Z
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_elementStateCount:I

    if-le v1, v3, :cond_0

    const-string/jumbo v1, "http://apache.org/xml/serializer"

    const-string v2, "ResetInMiddle"

    invoke-static {v1, v2, v4}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iput-boolean v2, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_prepared:Z

    iput-object v4, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fCurrentNode:Lmf/org/w3c/dom/Node;

    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fStrBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    return v3
.end method

.method public serialize(Lmf/org/w3c/dom/Document;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->reset()Z

    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->prepare()V

    invoke-virtual {p0, p1}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->serializeNode(Lmf/org/w3c/dom/Node;)V

    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->serializePreRoot()V

    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->cleanup()V

    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v0}, Lmf/org/apache/xml/serialize/Printer;->flush()V

    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v0}, Lmf/org/apache/xml/serialize/Printer;->getException()Ljava/io/IOException;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v0}, Lmf/org/apache/xml/serialize/Printer;->getException()Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_0
    return-void
.end method

.method public serialize(Lmf/org/w3c/dom/DocumentFragment;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->reset()Z

    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->prepare()V

    invoke-virtual {p0, p1}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->serializeNode(Lmf/org/w3c/dom/Node;)V

    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->cleanup()V

    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v0}, Lmf/org/apache/xml/serialize/Printer;->flush()V

    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v0}, Lmf/org/apache/xml/serialize/Printer;->getException()Ljava/io/IOException;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v0}, Lmf/org/apache/xml/serialize/Printer;->getException()Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_0
    return-void
.end method

.method public serialize(Lmf/org/w3c/dom/Element;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->reset()Z

    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->prepare()V

    invoke-virtual {p0, p1}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->serializeNode(Lmf/org/w3c/dom/Node;)V

    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->cleanup()V

    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v0}, Lmf/org/apache/xml/serialize/Printer;->flush()V

    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v0}, Lmf/org/apache/xml/serialize/Printer;->getException()Ljava/io/IOException;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v0}, Lmf/org/apache/xml/serialize/Printer;->getException()Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_0
    return-void
.end method

.method protected abstract serializeElement(Lmf/org/w3c/dom/Element;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected serializeNode(Lmf/org/w3c/dom/Node;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iput-object p1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fCurrentNode:Lmf/org/w3c/dom/Node;

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeType()S

    move-result v12

    packed-switch v12, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_0

    iget-object v12, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fDOMFilter:Lmf/org/w3c/dom/ls/LSSerializerFilter;

    if-eqz v12, :cond_1

    iget-object v12, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fDOMFilter:Lmf/org/w3c/dom/ls/LSSerializerFilter;

    invoke-interface {v12}, Lmf/org/w3c/dom/ls/LSSerializerFilter;->getWhatToShow()I

    move-result v12

    and-int/lit8 v12, v12, 0x4

    if-eqz v12, :cond_1

    iget-object v12, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fDOMFilter:Lmf/org/w3c/dom/ls/LSSerializerFilter;

    invoke-interface {v12, p1}, Lmf/org/w3c/dom/ls/LSSerializerFilter;->acceptNode(Lmf/org/w3c/dom/Node;)S

    move-result v2

    packed-switch v2, :pswitch_data_1

    invoke-virtual {p0, v11}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->characters(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-boolean v12, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_indenting:Z

    if-eqz v12, :cond_2

    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->getElementState()Lmf/org/apache/xml/serialize/ElementState;

    move-result-object v12

    iget-boolean v12, v12, Lmf/org/apache/xml/serialize/ElementState;->preserveSpace:Z

    if-nez v12, :cond_2

    const/16 v12, 0xa

    const/16 v13, 0x20

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-eqz v12, :cond_0

    :cond_2
    invoke-virtual {p0, v11}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->characters(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v11

    iget-short v12, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->features:S

    and-int/lit8 v12, v12, 0x8

    if-eqz v12, :cond_4

    if-eqz v11, :cond_0

    iget-object v12, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fDOMFilter:Lmf/org/w3c/dom/ls/LSSerializerFilter;

    if-eqz v12, :cond_3

    iget-object v12, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fDOMFilter:Lmf/org/w3c/dom/ls/LSSerializerFilter;

    invoke-interface {v12}, Lmf/org/w3c/dom/ls/LSSerializerFilter;->getWhatToShow()I

    move-result v12

    and-int/lit8 v12, v12, 0x8

    if-eqz v12, :cond_3

    iget-object v12, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fDOMFilter:Lmf/org/w3c/dom/ls/LSSerializerFilter;

    invoke-interface {v12, p1}, Lmf/org/w3c/dom/ls/LSSerializerFilter;->acceptNode(Lmf/org/w3c/dom/Node;)S

    move-result v2

    packed-switch v2, :pswitch_data_2

    :cond_3
    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->startCDATA()V

    invoke-virtual {p0, v11}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->characters(Ljava/lang/String;)V

    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->endCDATA()V

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v11}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->characters(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    iget-object v12, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    invoke-virtual {v12}, Lmf/org/apache/xml/serialize/OutputFormat;->getOmitComments()Z

    move-result v12

    if-nez v12, :cond_0

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_0

    iget-object v12, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fDOMFilter:Lmf/org/w3c/dom/ls/LSSerializerFilter;

    if-eqz v12, :cond_5

    iget-object v12, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fDOMFilter:Lmf/org/w3c/dom/ls/LSSerializerFilter;

    invoke-interface {v12}, Lmf/org/w3c/dom/ls/LSSerializerFilter;->getWhatToShow()I

    move-result v12

    and-int/lit16 v12, v12, 0x80

    if-eqz v12, :cond_5

    iget-object v12, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fDOMFilter:Lmf/org/w3c/dom/ls/LSSerializerFilter;

    invoke-interface {v12, p1}, Lmf/org/w3c/dom/ls/LSSerializerFilter;->acceptNode(Lmf/org/w3c/dom/Node;)S

    move-result v2

    packed-switch v2, :pswitch_data_3

    :cond_5
    invoke-virtual {p0, v11}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->comment(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_4
    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->endCDATA()V

    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->content()Lmf/org/apache/xml/serialize/ElementState;

    iget-short v12, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->features:S

    and-int/lit8 v12, v12, 0x4

    if-nez v12, :cond_6

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v12

    if-nez v12, :cond_8

    :cond_6
    iget-object v12, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fDOMFilter:Lmf/org/w3c/dom/ls/LSSerializerFilter;

    if-eqz v12, :cond_7

    iget-object v12, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fDOMFilter:Lmf/org/w3c/dom/ls/LSSerializerFilter;

    invoke-interface {v12}, Lmf/org/w3c/dom/ls/LSSerializerFilter;->getWhatToShow()I

    move-result v12

    and-int/lit8 v12, v12, 0x10

    if-eqz v12, :cond_7

    iget-object v12, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fDOMFilter:Lmf/org/w3c/dom/ls/LSSerializerFilter;

    invoke-interface {v12, p1}, Lmf/org/w3c/dom/ls/LSSerializerFilter;->acceptNode(Lmf/org/w3c/dom/Node;)S

    move-result v2

    packed-switch v2, :pswitch_data_4

    :cond_7
    invoke-virtual {p0, p1}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->checkUnboundNamespacePrefixedNode(Lmf/org/w3c/dom/Node;)V

    iget-object v12, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v13, "&"

    invoke-virtual {v12, v13}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v12, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v12, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v13, ";"

    invoke-virtual {v12, v13}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_5
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->serializeNode(Lmf/org/w3c/dom/Node;)V

    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v1

    goto :goto_1

    :cond_8
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v1

    :goto_2
    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->serializeNode(Lmf/org/w3c/dom/Node;)V

    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v1

    goto :goto_2

    :pswitch_6
    iget-object v12, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fDOMFilter:Lmf/org/w3c/dom/ls/LSSerializerFilter;

    if-eqz v12, :cond_9

    iget-object v12, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fDOMFilter:Lmf/org/w3c/dom/ls/LSSerializerFilter;

    invoke-interface {v12}, Lmf/org/w3c/dom/ls/LSSerializerFilter;->getWhatToShow()I

    move-result v12

    and-int/lit8 v12, v12, 0x40

    if-eqz v12, :cond_9

    iget-object v12, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fDOMFilter:Lmf/org/w3c/dom/ls/LSSerializerFilter;

    invoke-interface {v12, p1}, Lmf/org/w3c/dom/ls/LSSerializerFilter;->acceptNode(Lmf/org/w3c/dom/Node;)S

    move-result v2

    packed-switch v2, :pswitch_data_5

    :cond_9
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v12

    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {p0, v12, v13}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->processingInstructionIO(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_7
    iget-object v12, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fDOMFilter:Lmf/org/w3c/dom/ls/LSSerializerFilter;

    if-eqz v12, :cond_a

    iget-object v12, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fDOMFilter:Lmf/org/w3c/dom/ls/LSSerializerFilter;

    invoke-interface {v12}, Lmf/org/w3c/dom/ls/LSSerializerFilter;->getWhatToShow()I

    move-result v12

    and-int/lit8 v12, v12, 0x1

    if-eqz v12, :cond_a

    iget-object v12, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fDOMFilter:Lmf/org/w3c/dom/ls/LSSerializerFilter;

    invoke-interface {v12, p1}, Lmf/org/w3c/dom/ls/LSSerializerFilter;->acceptNode(Lmf/org/w3c/dom/Node;)S

    move-result v2

    packed-switch v2, :pswitch_data_6

    :cond_a
    check-cast p1, Lmf/org/w3c/dom/Element;

    invoke-virtual {p0, p1}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->serializeElement(Lmf/org/w3c/dom/Element;)V

    goto/16 :goto_0

    :pswitch_8
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v1

    :goto_3
    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->serializeNode(Lmf/org/w3c/dom/Node;)V

    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v1

    goto :goto_3

    :pswitch_9
    move-object v12, p1

    check-cast v12, Lmf/org/w3c/dom/Document;

    invoke-interface {v12}, Lmf/org/w3c/dom/Document;->getDoctype()Lmf/org/w3c/dom/DocumentType;

    move-result-object v3

    if-eqz v3, :cond_c

    :try_start_0
    iget-object v12, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v12}, Lmf/org/apache/xml/serialize/Printer;->enterDTD()V

    invoke-interface {v3}, Lmf/org/w3c/dom/DocumentType;->getPublicId()Ljava/lang/String;

    move-result-object v12

    iput-object v12, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_docTypePublicId:Ljava/lang/String;

    invoke-interface {v3}, Lmf/org/w3c/dom/DocumentType;->getSystemId()Ljava/lang/String;

    move-result-object v12

    iput-object v12, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_docTypeSystemId:Ljava/lang/String;

    invoke-interface {v3}, Lmf/org/w3c/dom/DocumentType;->getInternalSubset()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_b

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_b

    iget-object v12, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v12, v9}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    :cond_b
    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->endDTD()V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    :cond_c
    :goto_4
    :pswitch_a
    invoke-interface {p1}, Lmf/org/w3c/dom/Node;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v1

    :goto_5
    if-eqz v1, :cond_0

    invoke-virtual {p0, v1}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->serializeNode(Lmf/org/w3c/dom/Node;)V

    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v1

    goto :goto_5

    :catch_0
    move-exception v10

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    :try_start_1
    const-string/jumbo v12, "getPublicId"

    const/4 v13, 0x0

    invoke-virtual {v4, v12, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v12

    const-class v13, Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d

    const/4 v12, 0x0

    invoke-virtual {v7, v3, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    move-object v0, v12

    check-cast v0, Ljava/lang/String;

    move-object v5, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :cond_d
    :goto_6
    :try_start_2
    const-string/jumbo v12, "getSystemId"

    const/4 v13, 0x0

    invoke-virtual {v4, v12, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v12

    const-class v13, Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_e

    const/4 v12, 0x0

    invoke-virtual {v8, v3, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    move-object v0, v12

    check-cast v0, Ljava/lang/String;

    move-object v6, v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_e
    :goto_7
    iget-object v12, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v12}, Lmf/org/apache/xml/serialize/Printer;->enterDTD()V

    iput-object v5, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_docTypePublicId:Ljava/lang/String;

    iput-object v6, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_docTypeSystemId:Ljava/lang/String;

    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->endDTD()V

    goto :goto_4

    :catch_1
    move-exception v12

    goto :goto_7

    :catch_2
    move-exception v12

    goto :goto_6

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_6
        :pswitch_3
        :pswitch_9
        :pswitch_0
        :pswitch_a
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x2
        :pswitch_0
        :pswitch_5
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x2
        :pswitch_0
        :pswitch_8
    .end packed-switch
.end method

.method protected serializePreRoot()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x1

    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_preRoot:Ljava/util/Vector;

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_preRoot:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_preRoot:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->removeAllElements()V

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_preRoot:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1, v2, v2}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->printText(Ljava/lang/String;ZZ)V

    iget-boolean v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_indenting:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v1}, Lmf/org/apache/xml/serialize/Printer;->breakLine()V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .locals 0

    return-void
.end method

.method public setOutputByteStream(Ljava/io/OutputStream;)V
    .locals 6

    if-nez p1, :cond_0

    const-string/jumbo v1, "http://apache.org/xml/serializer"

    const-string v2, "ArgumentIsNull"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "output"

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iput-object p1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_output:Ljava/io/OutputStream;

    const/4 v1, 0x0

    iput-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_writer:Ljava/io/Writer;

    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->reset()Z

    return-void
.end method

.method public setOutputCharStream(Ljava/io/Writer;)V
    .locals 6

    if-nez p1, :cond_0

    const-string/jumbo v1, "http://apache.org/xml/serializer"

    const-string v2, "ArgumentIsNull"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "writer"

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iput-object p1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_writer:Ljava/io/Writer;

    const/4 v1, 0x0

    iput-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_output:Ljava/io/OutputStream;

    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->reset()Z

    return-void
.end method

.method public setOutputFormat(Lmf/org/apache/xml/serialize/OutputFormat;)V
    .locals 6

    if-nez p1, :cond_0

    const-string/jumbo v1, "http://apache.org/xml/serializer"

    const-string v2, "ArgumentIsNull"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string/jumbo v5, "format"

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    iput-object p1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_format:Lmf/org/apache/xml/serialize/OutputFormat;

    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->reset()Z

    return-void
.end method

.method public skippedEntity(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->endCDATA()V

    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->content()Lmf/org/apache/xml/serialize/ElementState;

    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const/16 v2, 0x26

    invoke-virtual {v1, v2}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v1, p1}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const/16 v2, 0x3b

    invoke-virtual {v1, v2}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public startCDATA()V
    .locals 2

    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->getElementState()Lmf/org/apache/xml/serialize/ElementState;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lmf/org/apache/xml/serialize/ElementState;->doCData:Z

    return-void
.end method

.method public final startDTD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v1}, Lmf/org/apache/xml/serialize/Printer;->enterDTD()V

    iput-object p2, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_docTypePublicId:Ljava/lang/String;

    iput-object p3, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_docTypeSystemId:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public startDocument()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->prepare()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public startEntity(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public startNonEscaping()V
    .locals 2

    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->getElementState()Lmf/org/apache/xml/serialize/ElementState;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lmf/org/apache/xml/serialize/ElementState;->unescaped:Z

    return-void
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_prefixes:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_prefixes:Ljava/util/Hashtable;

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_prefixes:Ljava/util/Hashtable;

    if-nez p1, :cond_1

    const-string p1, ""

    :cond_1
    invoke-virtual {v0, p2, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public startPreserving()V
    .locals 2

    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->getElementState()Lmf/org/apache/xml/serialize/ElementState;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lmf/org/apache/xml/serialize/ElementState;->preserveSpace:Z

    return-void
.end method

.method protected surrogates(IIZ)V
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

    invoke-virtual {p0, v1}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fatalError(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    int-to-char v1, p1

    int-to-char v2, p2

    invoke-static {v1, v2}, Lmf/org/apache/xerces/util/XMLChar;->supplemental(CC)I

    move-result v0

    invoke-static {v0}, Lmf/org/apache/xerces/util/XMLChar;->isValid(I)Z

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

    invoke-virtual {p0, v1}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fatalError(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->content()Lmf/org/apache/xml/serialize/ElementState;

    move-result-object v1

    iget-boolean v1, v1, Lmf/org/apache/xml/serialize/ElementState;->inCData:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v2, "]]>&#x"

    invoke-virtual {v1, v2}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v2, ";<![CDATA["

    invoke-virtual {v1, v2}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v0}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->printHex(I)V

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

    invoke-virtual {p0, v1}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->fatalError(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public unparsedEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v1}, Lmf/org/apache/xml/serialize/Printer;->enterDTD()V

    if-nez p2, :cond_2

    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v2, "<!ENTITY "

    invoke-virtual {v1, v2}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v1, p1}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v2, " SYSTEM "

    invoke-virtual {v1, v2}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->printDoctypeURL(Ljava/lang/String;)V

    :goto_0
    if-eqz p4, :cond_0

    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v2, " NDATA "

    invoke-virtual {v1, v2}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v1, p4}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const/16 v2, 0x3e

    invoke-virtual {v1, v2}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    iget-boolean v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_indenting:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v1}, Lmf/org/apache/xml/serialize/Printer;->breakLine()V

    :cond_1
    return-void

    :cond_2
    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v2, "<!ENTITY "

    invoke-virtual {v1, v2}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    invoke-virtual {v1, p1}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const-string v2, " PUBLIC "

    invoke-virtual {v1, v2}, Lmf/org/apache/xml/serialize/Printer;->printText(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->printDoctypeURL(Ljava/lang/String;)V

    iget-object v1, p0, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lmf/org/apache/xml/serialize/Printer;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Lmf/org/apache/xml/serialize/Printer;->printText(C)V

    invoke-virtual {p0, p3}, Lmf/org/apache/xml/serialize/BaseMarkupSerializer;->printDoctypeURL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method
